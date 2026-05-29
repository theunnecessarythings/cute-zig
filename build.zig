const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
    const cutlass_root = b.option([]const u8, "cutlass-root", "Path to the CUTLASS checkout used for CuTe parity fixtures") orelse "/home/sreeraj/Documents/cutlass";
    const cuda_include = b.option([]const u8, "cuda-include", "Path to CUDA headers used for CuTe C++ parity fixtures") orelse "/opt/cuda/include";
    const cccl_include = b.option([]const u8, "cccl-include", "Path to CCCL/libcudacxx headers used for CuTe C++ parity fixtures") orelse "/opt/cuda/targets/x86_64-linux/include/cccl";

    // CuTe-Zig Library Module
    const cute_mod = b.addModule("cute", .{
        .root_source_file = b.path("src/cute/root.zig"),
        .target = target,
        .optimize = optimize,
    });

    // Host tests/examples
    const exe = b.addExecutable(.{
        .name = "cute-zig-test",
        .root_module = b.createModule(.{
            .root_source_file = b.path("src/main.zig"),
            .target = target,
            .optimize = optimize,
            .link_libc = true,
        }),
    });
    exe.root_module.addImport("cute", cute_mod);
    
    // CUDA Setup (based on starter)
    exe.root_module.addIncludePath(.{ .cwd_relative = "/opt/cuda/include" });
    exe.root_module.addLibraryPath(.{ .cwd_relative = "/opt/cuda/lib64" });
    exe.root_module.linkSystemLibrary("cuda", .{});
    
    b.installArtifact(exe);

    // NVPTX Target for Device Code
    const nvptx_mcpu = b.option([]const u8, "gpu", "Target GPU features to add or subtract") orelse "sm_80";
    const nvptx_target = b.resolveTargetQuery(std.Build.parseTargetQuery(.{
        .arch_os_abi = "nvptx64-cuda-none",
        .cpu_features = nvptx_mcpu,
    }) catch unreachable);

    const device_code = b.addObject(.{
        .name = "cute-kernels",
        .root_module = b.createModule(.{
            .root_source_file = b.path("src/main_device.zig"),
            .target = nvptx_target,
            .optimize = .ReleaseFast,
        }),
    });
    device_code.root_module.addImport("cute", cute_mod);

    // SGEMM Example Kernel
    const sgemm_kernel = b.addObject(.{
        .name = "sgemm-sm80",
        .root_module = b.createModule(.{
            .root_source_file = b.path("examples/sgemm_sm80.zig"),
            .target = nvptx_target,
            .optimize = .ReleaseFast,
        }),
    });
    sgemm_kernel.root_module.addImport("cute", cute_mod);
    const sgemm_step = b.step("example-sgemm", "Compile the SGEMM SM80 example kernel to PTX");
    sgemm_step.dependOn(&sgemm_kernel.step);
    _ = sgemm_kernel.getEmittedAsm();

    const nvptx_module = device_code.getEmittedAsm();
    exe.root_module.addAnonymousImport("cuda-module", .{
        .root_source_file = nvptx_module,
    });

    const run_cmd = b.addRunArtifact(exe);
    run_cmd.step.dependOn(b.getInstallStep());
    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);

    const parity_tests = b.addTest(.{
        .root_module = b.createModule(.{
            .root_source_file = b.path("tests/cute_parity.zig"),
            .target = target,
            .optimize = optimize,
        }),
    });
    parity_tests.root_module.addImport("cute", cute_mod);

    const atom_tests = b.addTest(.{
        .root_module = b.createModule(.{
            .root_source_file = b.path("src/cute/atom.zig"),
            .target = target,
            .optimize = optimize,
        }),
    });

    const run_parity_tests = b.addRunArtifact(parity_tests);
    const run_atom_tests = b.addRunArtifact(atom_tests);

    const test_step = b.step("test", "Run Zig parity and module tests");
    test_step.dependOn(&run_parity_tests.step);
    test_step.dependOn(&run_atom_tests.step);

    const cpp_fixture_path = b.pathJoin(&.{ ".zig-cache", "cute-parity-fixture" });
    const build_cpp_fixture = b.addSystemCommand(&.{
        "c++",
        "-std=c++17",
        "-I",
        b.pathJoin(&.{ cutlass_root, "include" }),
        "-I",
        cuda_include,
        "-I",
        cccl_include,
        b.pathFromRoot("tools/cute_parity_fixture.cpp"),
        "-o",
        b.pathFromRoot(cpp_fixture_path),
    });

    const run_cpp_fixture = b.addSystemCommand(&.{b.pathFromRoot(cpp_fixture_path)});
    run_cpp_fixture.step.dependOn(&build_cpp_fixture.step);
    const parity_cpp_step = b.step("parity-cpp", "Run the C++ CuTe reference parity fixture");
    parity_cpp_step.dependOn(&run_cpp_fixture.step);
}
