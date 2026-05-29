const std = @import("std");
const cute = @import("cute");

pub fn panic(msg: []const u8, stack_trace: ?*std.builtin.StackTrace, _: ?usize) noreturn {
    _ = msg; _ = stack_trace;
    while (true) {}
}

/// SM80 SGEMM Kernel using CuTe-Zig.
/// C = A * B + C
/// A: (M, K), B: (N, K), C: (M, N)
pub fn sgemm_sm80(
    ptr_A: [*]addrspace(.global) const f16,
    ptr_B: [*]addrspace(.global) const f16,
    ptr_C: [*]addrspace(.global) f32,
    M: usize, N: usize, K: usize,
) callconv(.kernel) void {
    _ = M; _ = N; _ = K;
    
    // 1. Define Global Layouts (16x8x16 tile)
    const layout_A = cute.layout.make_layout(.{ @as(usize, 16), @as(usize, 16) }, .{ @as(isize, 16), @as(isize, 1) });
    const layout_B = cute.layout.make_layout(.{ @as(usize, 8), @as(usize, 16) }, .{ @as(isize, 16), @as(isize, 1) });
    const layout_C = cute.layout.make_layout(.{ @as(usize, 16), @as(usize, 8) }, .{ @as(isize, 8), @as(isize, 1) });

    const tensor_A = cute.tensor.make_tensor(ptr_A, layout_A);
    const tensor_B = cute.tensor.make_tensor(ptr_B, layout_B);
    const tensor_C = cute.tensor.make_tensor(ptr_C, layout_C);

    // 2. Define Atoms and Tiled Computation
    const arch_db = cute.arch.db;
    const atom_db = cute.atom.db;

    const mma_op = arch_db.mma_sm80.SM80_16x8x16_F32F16F16F32_TN;
    const mma_traits = atom_db.mma_traits_sm80.SM80_16x8x16_F16F16F16F16_TN;
    const MyAtom = cute.atom.builders.MmaAtom(mma_op, mma_traits);
    
    const TiledMma = cute.atom.builders.TiledMMA(MyAtom, .{ @as(usize, 1), @as(usize, 1), @as(usize, 1) });
    const tiled_mma = TiledMma{};
    const thr_mma = tiled_mma.get_thread_slice(cute.arch.util.lane_id());

    // 3. Shared Memory Tiles
    var smem_A: [16 * 16]f16 = undefined;
    var smem_B: [8 * 16]f16 = undefined;
    const sA = cute.tensor.make_tensor(@as([*]f16, &smem_A), layout_A);
    const sB = cute.tensor.make_tensor(@as([*]f16, &smem_B), layout_B);

    // 4. Partition Global and Shared for this thread
    _ = thr_mma.partition_A(tensor_A);
    _ = thr_mma.partition_B(tensor_B);
    const thr_pC = thr_mma.partition_C(tensor_C);

    const thr_sA = thr_mma.partition_A(sA);
    const thr_sB = thr_mma.partition_B(sB);

    // 5. Register Fragments
    var rA: [4]f16 = undefined; // SM80 16x8x16 A needs 4 f16 per thread
    var rB: [2]f16 = undefined; // SM80 16x8x16 B needs 2 f16 per thread
    var accum: [4]f32 = [_]f32{0.0} ** 4; // SM80 16x8x16 C needs 4 f32 per thread

    const thr_rA = cute.tensor.make_tensor(@as([*]f16, &rA), thr_sA.layout);
    const thr_rB = cute.tensor.make_tensor(@as([*]f16, &rB), thr_sB.layout);
    const thr_acc = cute.tensor.make_tensor(@as([*]f32, &accum), thr_pC.layout);

    // 6. GEMM Loop (Simplified)
    // Global -> Shared
    cute.algorithm.copy(tensor_A, sA);
    cute.algorithm.copy(tensor_B, sB);
    cute.arch.sync.syncthreads();

    // Shared -> Register
    cute.algorithm.copy(thr_sA, thr_rA);
    cute.algorithm.copy(thr_sB, thr_rB);

    // Compute
    thr_mma.fma(thr_acc, thr_rA, thr_rB, thr_acc);

    // Register -> Global
    cute.algorithm.copy(thr_acc, thr_pC);
}
