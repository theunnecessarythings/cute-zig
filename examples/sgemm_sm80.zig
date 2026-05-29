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
    M: usize,
    N: usize,
    K: usize,
) callconv(.kernel) void {
    const block_m = cute.arch.util.block_idx_y();
    const block_n = cute.arch.util.block_idx_x();
    const thread_id = cute.arch.util.thread_idx_x();

    // 1. Define Global Layouts and Tensors
    const layout_A = cute.layout.make_layout(.{ M, K }, .{ K, 1 });
    const layout_B = cute.layout.make_layout(.{ N, K }, .{ K, 1 });
    const layout_C = cute.layout.make_layout(.{ M, N }, .{ N, 1 });

    const tensor_A = cute.tensor.make_tensor(ptr_A, layout_A);
    const tensor_B = cute.tensor.make_tensor(ptr_B, layout_B);
    const tensor_C = cute.tensor.make_tensor(ptr_C, layout_C);

    // 2. Define Atoms and Tiled Computation
    const arch_db = cute.arch.db;
    const atom_db = cute.atom.db;

    const mma_op = arch_db.mma_sm80.SM80_16x8x16_F32F16F16F32_TN;
    const mma_traits = atom_db.mma_traits_sm80.SM80_16x8x16_F32F16F16F32_TN;
    const MyAtom = cute.atom.builders.MmaAtom(mma_op, mma_traits);

    const tiled_mma = cute.atom.builders.TiledMMA(MyAtom, .{ 1, 1, 1 }){};
    const thr_mma = tiled_mma.get_thread_slice(thread_id);

    // 3. Shared Memory Tiles
    const sA = cute.tensor.make_tensor(@as([*]addrspace(.shared) f16, &smem_A), cute.layout.make_layout(.{ 16, 16 }, .{ 16, 1 }));
    const sB = cute.tensor.make_tensor(@as([*]addrspace(.shared) f16, &smem_B), cute.layout.make_layout(.{ 8, 16 }, .{ 16, 1 }));

    // 4. Register Fragments
    var rA: [8]f16 = undefined;
    var rB: [4]f16 = undefined;
    var accum: [4]f32 = [_]f32{0.0} ** 4;

    const thr_rA = cute.tensor.make_tensor(@as([*]f16, &rA), cute.layout.make_layout_1d(8));
    const thr_rB = cute.tensor.make_tensor(@as([*]f16, &rB), cute.layout.make_layout_1d(4));
    const thr_acc = cute.tensor.make_tensor(@as([*]f32, &accum), cute.layout.make_layout_1d(4));

    // 4.5 Load initial C values into accumulators
    inline for (0..4) |i| {
        const coord_16x8 = mma_traits.layout_c.map(.{ thread_id, i });
        const row_in_tile = coord_16x8 % 16;
        const col_in_tile = coord_16x8 / 16;
        const gm = block_m * 16 + row_in_tile;
        const gn = block_n * 8 + col_in_tile;
        if (gm < M and gn < N) {
            accum[i] = tensor_C.get(.{ gm, gn });
        }
    }

    // 5. Partition Shared for MMA (Warp-level)
    const thr_sA = thr_mma.partition_A(sA);
    const thr_sB = thr_mma.partition_B(sB);

    // 6. Define Global-to-Shared Copy Layout (32 threads x 8 elements = 256 for sA, 4 for sB)
    const gcopy_tv_A = cute.layout.make_layout(.{ 32, 8 }, .{ 8, 1 });
    const gcopy_tv_B = cute.layout.make_layout(.{ 32, 4 }, .{ 4, 1 });

    // 7. GEMM Main Loop
    const k_tiles = (K + 15) / 16;
    for (0..k_tiles) |k_tile| {
        // Cooperative Load A (16x16)
        inline for (0..8) |i| {
            const coord = gcopy_tv_A.map(.{ thread_id, i });
            const m = block_m * 16 + (coord / 16);
            const k = k_tile * 16 + (coord % 16);
            if (m < M and k < K) {
                sA.set_1d(coord, tensor_A.get(.{ m, k }));
            } else {
                sA.set_1d(coord, 0);
            }
        }

        // Cooperative Load B (8x16)
        inline for (0..4) |i| {
            const coord = gcopy_tv_B.map(.{ thread_id, i });
            const n = block_n * 8 + (coord / 16);
            const k = k_tile * 16 + (coord % 16);
            if (n < N and k < K) {
                sB.set_1d(coord, tensor_B.get(.{ n, k }));
            } else {
                sB.set_1d(coord, 0);
            }
        }
        cute.arch.sync.syncthreads();

        // Shared -> Register
        cute.algorithm.copy(thr_sA, thr_rA);
        cute.algorithm.copy(thr_sB, thr_rB);

        // MMA
        const thr_rA_u32 = cute.tensor.make_tensor(@as([*]u32, @ptrCast(@alignCast(&rA))), cute.layout.make_layout_1d(4));
        const thr_rB_u32 = cute.tensor.make_tensor(@as([*]u32, @ptrCast(@alignCast(&rB))), cute.layout.make_layout_1d(2));
        thr_mma.fma(thr_acc, thr_rA_u32, thr_rB_u32, thr_acc);

        cute.arch.sync.syncthreads();
    }

    // 8. Epilogue: Write back Accumulators to Global C
    // Each thread writes its 4 elements
    inline for (0..4) |i| {
        // Logical offset in the 16x8 tile for this thread/value.
        // The MMA atom treats the 16x8 tile as Col-Major logically.
        const coord_16x8 = mma_traits.layout_c.map(.{ thread_id, i });
        const row_in_tile = coord_16x8 % 16;
        const col_in_tile = coord_16x8 / 16;
        
        const gm = block_m * 16 + row_in_tile;
        const gn = block_n * 8 + col_in_tile;

        if (gm < M and gn < N) {
            tensor_C.set(.{ gm, gn }, accum[i]);
        }
    }
}
