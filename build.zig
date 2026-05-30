const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    // --- Configuration ---
    const cuda_root = b.option([]const u8, "cuda-root", "Path to the CUDA toolkit target root") orelse "/apps/software/system/software/CUDA/12.8.0/targets/x86_64-linux";
    const cuda_include = b.option([]const u8, "cuda-include", "Path to CUDA headers") orelse b.pathJoin(&.{ cuda_root, "include" });

    // --- Core Library Modules ---
    const cute_mod = b.addModule("cute", .{ .root_source_file = b.path("src/cute/root.zig") });
    const cuda_mod = b.addModule("cuda", .{ .root_source_file = b.path("src/cuda.zig") });

    // --- Build & Test Step ---
    const test_step = b.step("test", "Run all library and device-assembly tests");
    const gpu_test_step = b.step("test-gpu-sgemm", "Run SGEMM numerical GPU tests (requires GPU)");

    // 1. Host-side Parity & Unit Tests
    const host_tests = .{
        "tests/cute_parity.zig",
        "src/cute/atom.zig",
        "src/cute/layout.zig",
        "src/cute/numeric.zig",
        "src/cute/arch/check.zig",
    };
    inline for (host_tests) |src| {
        const t = b.addTest(.{
            .root_module = b.createModule(.{
                .root_source_file = b.path(src),
                .target = target,
                .optimize = optimize,
            }),
        });
        t.root_module.addImport("cute", cute_mod);
        test_step.dependOn(&b.addRunArtifact(t).step);
    }

    // 2. Python-based Trait Policy Check
    const check_traits = b.addSystemCommand(&.{ "python3", b.pathFromRoot("tools/check_atom_traits.py"), "--all", "--strict" });
    test_step.dependOn(&check_traits.step);

    // 3. Unified Device Kernel Registry
    var registry = KernelRegistry.init(b, cute_mod, test_step);

    // Add multiple files/kernels with a single call per file
    registry.add("tests/device/sm75_movmatrix_check.zig", "sm_75") catch unreachable;
    registry.add("tests/device/sm75_ldmatrix_check.zig", "sm_75") catch unreachable;
    registry.add("tests/device/ldsm_partition_test.zig", "sm_75") catch unreachable;
    registry.add("tests/device/sm90_stmatrix_check.zig", "sm_90") catch unreachable;
    registry.add("tests/device/sm80_cp_async_check.zig", "sm_80") catch unreachable;
    registry.add("examples/main_device.zig", "sm_80") catch unreachable;

    const kernels_mod = registry.getModule();

    // 4. SGEMM Host Driver
    const sgemm_exe = b.addExecutable(.{
        .name = "sgemm-host",
        .root_module = b.createModule(.{
            .root_source_file = b.path("examples/sgemm_host.zig"),
            .target = target,
            .optimize = optimize,
            .link_libc = true,
        }),
    });
    sgemm_exe.root_module.addImport("cuda", cuda_mod);
    sgemm_exe.root_module.addImport("kernels", kernels_mod);

    sgemm_exe.root_module.addIncludePath(.{ .cwd_relative = cuda_include });
    sgemm_exe.root_module.addLibraryPath(.{ .cwd_relative = "/usr/lib64" });
    sgemm_exe.root_module.addLibraryPath(.{ .cwd_relative = b.pathJoin(&.{ cuda_root, "lib", "stubs" }) });
    sgemm_exe.addRPath(.{ .cwd_relative = "/usr/lib64" });
    sgemm_exe.root_module.linkSystemLibrary("cuda", .{});
    sgemm_exe.root_module.addCSourceFile(.{ .file = b.path("src/glibc_csu_compat.c") });

    b.installArtifact(sgemm_exe);
    const run_sgemm = b.addRunArtifact(sgemm_exe);
    b.step("run-sgemm", "Run the SGEMM SM80 example on GPU").dependOn(&run_sgemm.step);
    gpu_test_step.dependOn(&run_sgemm.step);

    // 5. Compile-fail regression tests
    const compile_fail_cases = [_]struct { source: []const u8, expect: []const u8 }{
        .{ .source = "tests/compile_fail/unsupported_mma_trait.zig", .expect = "are marked unsupported" },
        .{ .source = "tests/compile_fail/placeholder_mma_trait.zig", .expect = "still contain placeholder layouts" },
        .{ .source = "tests/compile_fail/non_unit_tiled_mma.zig", .expect = "TiledMMA currently supports only unit thread layouts" },
        .{ .source = "tests/compile_fail/wrong_mma_register_type.zig", .expect = "A register element type mismatch" },
    };
    inline for (compile_fail_cases) |case| {
        test_step.dependOn(&b.addSystemCommand(&.{
            "python3",  b.pathFromRoot("tools/expect_compile_fail.py"),
            "--zig",    b.graph.zig_exe,
            "--source", case.source,
            "--expect", case.expect,
        }).step);
    }
}

/// KernelRegistry collects multiple device source files, compiles them to PTX,
/// verifies them with ptxas, and bundles them into a single Zig module.
const KernelRegistry = struct {
    b: *std.Build,
    cute_mod: *std.Build.Module,
    test_step: *std.Build.Step,
    wf: *std.Build.Step.WriteFile,
    module_source: std.ArrayListUnmanaged(u8),

    fn init(b: *std.Build, cute_mod: *std.Build.Module, test_step: *std.Build.Step) KernelRegistry {
        return .{
            .b = b,
            .cute_mod = cute_mod,
            .test_step = test_step,
            .wf = b.addWriteFile("unused.txt", ""),
            .module_source = .{},
        };
    }

    fn add(self: *KernelRegistry, src_path: []const u8, sm: []const u8) !void {
        const name = std.fs.path.stem(src_path);
        const sanitized_name = self.b.allocator.dupe(u8, name) catch unreachable;
        for (sanitized_name) |*c| {
            if (c.* == '-') c.* = '_';
        }

        const ptx_filename = self.b.fmt("{s}.ptx", .{sanitized_name});

        const obj = self.b.addObject(.{
            .name = sanitized_name,
            .root_module = self.b.createModule(.{
                .root_source_file = self.b.path(src_path),
                .target = self.b.resolveTargetQuery(std.Build.parseTargetQuery(.{
                    .arch_os_abi = "nvptx64-cuda-none",
                    .cpu_features = self.b.fmt("{s}+ptx80", .{sm}),
                }) catch unreachable),
                .optimize = .ReleaseFast,
            }),
        });
        obj.root_module.addImport("cute", self.cute_mod);
        const ptx_file = obj.getEmittedAsm();

        const ptxas = self.b.addSystemCommand(&.{ "ptxas", self.b.fmt("-arch={s}", .{sm}) });
        ptxas.addFileArg(ptx_file);
        self.test_step.dependOn(&ptxas.step);

        _ = self.wf.addCopyFile(ptx_file, ptx_filename);
        try self.module_source.writer(self.b.allocator).print("pub const {s} = @embedFile(\"{s}\");\n", .{ sanitized_name, ptx_filename });
    }

    fn getModule(self: *KernelRegistry) *std.Build.Module {
        return self.b.createModule(.{
            .root_source_file = self.wf.add("kernels.zig", self.module_source.items),
        });
    }
};
