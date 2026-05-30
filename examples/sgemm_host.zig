const std = @import("std");
const cuda = @import("cuda");

// The PTX is provided as an anonymous import named "cuda-module"
const ptx = @embedFile("cuda-module");

pub fn main() !void {
    const M: usize = 32;
    const N: usize = 24;
    const K: usize = 48;

    std.log.info("Initializing CUDA...", .{});
    cuda.init();

    std.log.info("Loading SGEMM Module...", .{});
    const module = try cuda.Module.loadData(ptx);
    defer module.unload();

    const kernel = try module.getFunction("sgemm_sm80");

    // Allocate host memory
    var h_A: [M * K]f16 = undefined;
    var h_B: [N * K]f16 = undefined;
    var h_C: [M * N]f32 = undefined;
    var h_C_ref: [M * N]f32 = undefined;

    // Initialize A and B
    for (0..M * K) |i| h_A[i] = @floatCast(@as(f32, @floatFromInt(i % 100)) / 100.0);
    for (0..N * K) |i| h_B[i] = @floatCast(@as(f32, @floatFromInt(i % 100)) / 100.0);
    for (0..M * N) |i| h_C[i] = 0.0;
    for (0..M * N) |i| h_C_ref[i] = 0.0;

    // Reference SGEMM (C = A * B^T)
    for (0..M) |m| {
        for (0..N) |n| {
            var sum: f32 = 0.0;
            for (0..K) |k| {
                const a_val: f32 = @floatCast(h_A[m * K + k]);
                const b_val: f32 = @floatCast(h_B[n * K + k]);
                sum += a_val * b_val;
            }
            h_C_ref[m * N + n] = sum;
        }
    }

    std.log.info("Allocating Device Memory...", .{});
    const d_A = try cuda.malloc(f16, M * K);
    defer cuda.free(d_A);
    const d_B = try cuda.malloc(f16, N * K);
    defer cuda.free(d_B);
    const d_C = try cuda.malloc(f32, M * N);
    defer cuda.free(d_C);

    std.log.info("Copying Data to Device...", .{});
    cuda.memcpy(f16, d_A, &h_A, .host_to_device);
    cuda.memcpy(f16, d_B, &h_B, .host_to_device);
    cuda.memcpy(f32, d_C, &h_C, .host_to_device);

    std.log.info("Launching Kernel...", .{});
    const config = cuda.LaunchConfig{
        .grid_dim = .{ .x = @intCast((N + 7) / 8), .y = @intCast((M + 15) / 16), .z = 1 },
        .block_dim = .{ .x = 32, .y = 1, .z = 1 }, // 32 threads for one warp (MMA atom is warp-level)
    };

    kernel.launch(config, .{
        d_A.ptr,
        d_B.ptr,
        d_C.ptr,
        M,
        N,
        K,
    });

    std.log.info("Copying Result back to Host...", .{});
    cuda.memcpy(f32, &h_C, d_C, .device_to_host);

    std.log.info("Verifying Result...", .{});
    var max_err: f32 = 0.0;
    for (0..M * N) |i| {
        const err = @abs(h_C[i] - h_C_ref[i]);
        if (err > max_err) max_err = err;
    }

    std.log.info("Max Error: {e}", .{max_err});

    if (max_err < 1e-3) {
        std.log.info("SUCCESS!", .{});
    } else {
        std.log.err("FAILURE! Result mismatch.", .{});
        // Print some results
        std.log.info("Sample Result: C[0] = {d}, Expected = {d}", .{ h_C[0], h_C_ref[0] });
        return error.VerificationFailed;
    }
}
