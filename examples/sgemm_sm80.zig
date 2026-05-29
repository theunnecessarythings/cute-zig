const std = @import("std");
const cute = @import("cute");

// Shared Memory Tiles (Global scope like starter project)
var smem_A: [16 * 16]f16 addrspace(.shared) = undefined;
var smem_B: [8 * 16]f16 addrspace(.shared) = undefined;

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
    const layout_A = cute.layout.make_layout(.{ 16, 16 }, .{ 16, 1 });
    const layout_B = cute.layout.make_layout(.{ 8, 16 }, .{ 16, 1 });
    const layout_C = cute.layout.make_layout(.{ 16, 8 }, .{ 8, 1 });

    const tensor_A = cute.tensor.make_tensor(ptr_A, layout_A);
    const tensor_B = cute.tensor.make_tensor(ptr_B, layout_B);
    const tensor_C = cute.tensor.make_tensor(ptr_C, layout_C);

    // 2. Define Atoms and Tiled Computation
    const arch_db = cute.arch.db;
    const atom_db = cute.atom.db;

    const mma_op = arch_db.mma_sm80.SM80_16x8x16_F32F16F16F32_TN;
    const mma_traits = atom_db.mma_traits_sm80.SM80_16x8x16_F32F16F16F32_TN;
    const MyAtom = cute.atom.builders.MmaAtom(mma_op, mma_traits);
    
    const TiledMma = cute.atom.builders.TiledMMA(MyAtom, .{ 1, 1, 1 });
    const tiled_mma = TiledMma{};
    const thr_mma = tiled_mma.get_thread_slice(cute.arch.util.lane_id());

    // 3. Shared Memory Tiles
    const sA = cute.tensor.make_tensor(@as([*]addrspace(.shared) f16, &smem_A), layout_A);
    const sB = cute.tensor.make_tensor(@as([*]addrspace(.shared) f16, &smem_B), layout_B);

    // 4. Partition for this thread
    const thr_pC = thr_mma.partition_C(tensor_C);
    const thr_sA = thr_mma.partition_A(sA);
    const thr_sB = thr_mma.partition_B(sB);

    // 5. Register Fragments
    var rA: [8]f16 = undefined; 
    var rB: [4]f16 = undefined; 
    var accum: [4]f32 = [_]f32{0.0} ** 4;

    const thr_rA = cute.tensor.make_tensor(@as([*]f16, &rA), cute.layout.make_layout_1d(8));
    const thr_rB = cute.tensor.make_tensor(@as([*]f16, &rB), cute.layout.make_layout_1d(4));
    const thr_acc = cute.tensor.make_tensor(@as([*]f32, &accum), cute.layout.make_layout_1d(4));

    // 6. GEMM Execution
    // Global -> Shared
    if (cute.arch.util.lane_id() == 0) {
        cute.algorithm.copy(tensor_A, sA);
        cute.algorithm.copy(tensor_B, sB);
    }
    cute.arch.sync.syncthreads();

    // Shared -> Register
    cute.algorithm.copy(thr_sA, thr_rA);
    cute.algorithm.copy(thr_sB, thr_rB);

    const thr_rA_u32 = cute.tensor.make_tensor(@as([*]u32, @ptrCast(@alignCast(&rA))), cute.layout.make_layout_1d(4));
    const thr_rB_u32 = cute.tensor.make_tensor(@as([*]u32, @ptrCast(@alignCast(&rB))), cute.layout.make_layout_1d(2));

    thr_mma.fma(thr_acc, thr_rA_u32, thr_rB_u32, thr_acc);

    // Register -> Global
    inline for (0..4) |i| {
        thr_pC.set_1d(i, accum[i]);
    }
}
