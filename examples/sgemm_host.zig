const std = @import("std");
const cuda = @import("cuda");

const kernels = @import("kernels");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    cuda.init();

    const module = try cuda.Module.loadData(kernels.main_device);
    defer module.unload();

    const kernel = try module.getFunction("sgemm_sm80");

    const cases = [_]struct { m: usize, n: usize, k: usize }{
        .{ .m = 32, .n = 24, .k = 48 }, // Aligned baseline
        .{ .m = 32, .n = 24, .k = 17 }, // A/B one-element tail (K=17)
        .{ .m = 32, .n = 24, .k = 18 }, // B sub-vector tail (K=18)
        .{ .m = 17, .n = 24, .k = 32 }, // M edge tile
        .{ .m = 32, .n = 9, .k = 32 }, // N edge tile
        .{ .m = 17, .n = 9, .k = 19 }, // All edges together
    };

    for (cases) |case| {
        try run_test(allocator, kernel, case.m, case.n, case.k);
    }
}

fn run_test(allocator: std.mem.Allocator, kernel: cuda.Function, M: usize, N: usize, K: usize) !void {
    std.debug.print("Testing SGEMM M={d}, N={d}, K={d}... ", .{ M, N, K });

    const h_A = try allocator.alloc(f16, M * K);
    defer allocator.free(h_A);
    const h_B = try allocator.alloc(f16, N * K);
    defer allocator.free(h_B);
    const h_C = try allocator.alloc(f32, M * N);
    defer allocator.free(h_C);

    // Initialize A and B with some values
    for (0..M * K) |i| h_A[i] = @floatCast(1.0);
    for (0..N * K) |i| h_B[i] = @floatCast(0.5);
    for (0..M * N) |i| h_C[i] = 0.0;

    const d_A = try cuda.malloc(f16, M * K);
    defer cuda.free(d_A);
    const d_B = try cuda.malloc(f16, N * K);
    defer cuda.free(d_B);
    const d_C = try cuda.malloc(f32, M * N);
    defer cuda.free(d_C);

    cuda.memcpy(f16, d_A, h_A, .host_to_device);
    cuda.memcpy(f16, d_B, h_B, .host_to_device);
    cuda.memcpy(f32, d_C, h_C, .host_to_device);

    kernel.launch(.{
        .grid_dim = .{ .x = 1, .y = 1 },
        .block_dim = .{ .x = 32, .y = 1 },
    }, .{ d_A.ptr, d_B.ptr, d_C.ptr, M, N, K });

    cuda.memcpy(f32, h_C, d_C, .device_to_host);

    // Verify
    for (0..M) |m| {
        for (0..N) |n| {
            var expected: f32 = 0.0;
            for (0..K) |k| {
                expected += @as(f32, @floatCast(h_A[m * K + k])) * @as(f32, @floatCast(h_B[n * K + k]));
            }
            if (@abs(h_C[m * N + n] - expected) > 1e-3) {
                std.debug.print("FAILED at ({d}, {d}): got {d}, expected {d}\n", .{ m, n, h_C[m * N + n], expected });
                return error.TestFailed;
            }
        }
    }
    std.debug.print("PASSED\n", .{});
}
