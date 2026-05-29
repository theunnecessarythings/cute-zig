const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
    const cutlass_root = b.option([]const u8, "cutlass-root", "Path to the CUTLASS checkout used for CuTe parity fixtures") orelse "../cutlass";
    const cuda_root = b.option([]const u8, "cuda-root", "Path to the CUDA toolkit target root") orelse "/apps/software/system/software/CUDA/12.8.0/targets/x86_64-linux";
    const cuda_include = b.option([]const u8, "cuda-include", "Path to CUDA headers used for CuTe C++ parity fixtures") orelse b.pathJoin(&.{ cuda_root, "include" });
    const cccl_include = b.option([]const u8, "cccl-include", "Path to CCCL/libcudacxx headers used for CuTe C++ parity fixtures") orelse b.pathJoin(&.{ cuda_root, "include" });

    // CuTe-Zig Library Module
    const cute_mod = b.addModule("cute", .{
        .root_source_file = b.path("src/cute/root.zig"),
    });

    const cuda_mod = b.addModule("cuda", .{
        .root_source_file = b.path("src/cuda.zig"),
    });

    // NVPTX Target for Device Code
    const nvptx_mcpu = b.option([]const u8, "gpu", "Target GPU features to add or subtract") orelse "sm_80";
    const nvptx_target = b.resolveTargetQuery(std.Build.parseTargetQuery(.{
        .arch_os_abi = "nvptx64-cuda-none",
        .cpu_features = nvptx_mcpu,
    }) catch unreachable);

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
    exe.root_module.addIncludePath(.{ .cwd_relative = b.pathJoin(&.{ cuda_root, "include" }) });
    exe.root_module.addLibraryPath(.{ .cwd_relative = "/usr/lib64" });
    exe.root_module.addLibraryPath(.{ .cwd_relative = b.pathJoin(&.{ cuda_root, "lib", "stubs" }) });
    exe.addRPath(.{ .cwd_relative = "/usr/lib64" });
    exe.root_module.linkSystemLibrary("cuda", .{});
    exe.root_module.addCSourceFile(.{ .file = b.path("src/glibc_csu_compat.c") });
    b.installArtifact(exe);

    // SGEMM Example Host Driver
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
    sgemm_exe.root_module.addIncludePath(.{ .cwd_relative = b.pathJoin(&.{ cuda_root, "include" }) });
    sgemm_exe.root_module.addLibraryPath(.{ .cwd_relative = "/usr/lib64" });
    sgemm_exe.root_module.addLibraryPath(.{ .cwd_relative = b.pathJoin(&.{ cuda_root, "lib", "stubs" }) });
    sgemm_exe.addRPath(.{ .cwd_relative = "/usr/lib64" });
    sgemm_exe.root_module.linkSystemLibrary("cuda", .{});
    sgemm_exe.root_module.addCSourceFile(.{ .file = b.path("src/glibc_csu_compat.c") });

    // SGEMM Example Kernel
    const sgemm_kernel = b.addObject(.{
        .name = "sgemm-sm80-kernel",
        .root_module = b.createModule(.{
            .root_source_file = b.path("examples/main_device.zig"),
            .target = nvptx_target,
            .optimize = .ReleaseFast,
        }),
    });
    sgemm_kernel.root_module.addImport("cute", cute_mod);
    const sgemm_asm = sgemm_kernel.getEmittedAsm();

    sgemm_exe.root_module.addAnonymousImport("cuda-module", .{
        .root_source_file = sgemm_asm,
    });

    b.installArtifact(sgemm_exe);
    const run_sgemm = b.addRunArtifact(sgemm_exe);
    const sgemm_step = b.step("run-sgemm", "Run the SGEMM SM80 example on GPU");
    sgemm_step.dependOn(&run_sgemm.step);

    // Standard run/test steps
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
        "c++", "-std=c++17",
        "-I", b.pathJoin(&.{ cutlass_root, "include" }),
        "-I", cuda_include,
        "-I", cccl_include,
        b.pathFromRoot("tools/cute_parity_fixture.cpp"),
        "-o", b.pathFromRoot(cpp_fixture_path),
    });
    const run_cpp_fixture = b.addSystemCommand(&.{b.pathFromRoot(cpp_fixture_path)});
    run_cpp_fixture.step.dependOn(&build_cpp_fixture.step);
    const parity_cpp_step = b.step("parity-cpp", "Run the C++ CuTe reference parity fixture");
    parity_cpp_step.dependOn(&run_cpp_fixture.step);
}
