const std = @import("std");
const cute = @import("cute");

// Shared Memory Tiles
var smem_A: [16 * 16]f16 align(16) addrspace(.shared) = undefined;
var smem_B: [16 * 8]f16 align(16) addrspace(.shared) = undefined;

/// SM80 SGEMM Kernel using CuTe-Zig.
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
    const layout_C = cute.layout.make_layout(.{ M, N }, .{ N, 1 });
    const tensor_C = cute.tensor.make_tensor(ptr_C, layout_C);

    // 2. Define Atoms and Tiled Computation
    const arch_db = cute.arch.db;
    const atom_db = cute.atom.db;

    const mma_op = arch_db.mma_sm80.SM80_16x8x16_F32F16F16F32_TN;
    const mma_traits = atom_db.mma_traits_sm80.SM80_16x8x16_F32F16F16F32_TN;
    const MyAtom = cute.atom.builders.MmaAtom(mma_op, mma_traits);

    const tiled_mma = cute.atom.builders.TiledMMA(MyAtom, .{ 1, 1, 1 }){};
    const thr_mma = tiled_mma.get_thread_slice(thread_id);

    // 3. Shared Memory Tensors
    const sA = cute.tensor.make_tensor(@as([*]addrspace(.shared) f16, @ptrCast(&smem_A)), cute.layout.make_layout_right(.{ 16, 16 }));
    const sB = cute.tensor.make_tensor(@as([*]addrspace(.shared) f16, @ptrCast(&smem_B)), cute.layout.make_layout_left(.{ 16, 8 }));

    // 4. Register Fragments (rA must be u32 to match LDSM output)
    var rA: [4]u32 align(16) = undefined;
    var rB: [4]f16 align(16) = undefined;
    var accum: [4]f32 align(16) = [_]f32{0.0} ** 4;

    const thr_rA = cute.tensor.make_tensor(@as([*]u32, &rA), cute.layout.make_layout_1d(4));
    const thr_rB = cute.tensor.make_tensor(@as([*]f16, &rB), cute.layout.make_layout_1d(4));
    const thr_acc = cute.tensor.make_tensor(@as([*]f32, &accum), cute.layout.make_layout_1d(4));

    // Load initial C values
    inline for (0..4) |i| {
        const idx = mma_traits.layout_c.map(.{ thread_id, i });
        const m = idx % 16;
        const n = idx / 16;
        const gm = block_m * 16 + m;
        const gn = block_n * 8 + n;
        if (gm < M and gn < N) accum[i] = tensor_C.get(.{ gm, gn });
    }

    // Partition Shared for MMA
    const thr_sB = thr_mma.partition_B(sB);

    const k_tiles = (K + 15) / 16;
    for (0..k_tiles) |k_tile| {
        // --- 5. Global -> Shared using cp.async ---
        const async_op_A = arch_db.copy_sm80.SM80_CP_ASYNC_CACHEALWAYS_ZFILL_16B;
        const AsyncImplA = cute.arch.builders.Copy(async_op_A);

        // Load A: 16x16, 32 threads. each thread 8 elements (16B).
        const t_offset_A = thread_id * 8;
        const am = t_offset_A / 16; // correct mapping: am advances along rows
        const ak = t_offset_A % 16; // ak advances along columns
        const pred_A = (block_m * 16 + am < M) and (k_tile * 16 + ak < K);
        const g_ptr_A = ptr_A + (block_m * 16 + am) * K + (k_tile * 16 + ak);
        const s_ptr_A = @as([*]addrspace(.shared) u8, @ptrCast(&smem_A)) + (am * 16 + ak) * 2;
        AsyncImplA.copy(@as([*]addrspace(.global) const u8, @ptrCast(g_ptr_A)), @as([*]addrspace(.shared) u8, @ptrCast(s_ptr_A)), pred_A);

        // Load B: 16x8, 32 threads. each thread 4 elements (8B).
        const async_op_B = arch_db.copy_sm80.SM80_CP_ASYNC_CACHEALWAYS_ZFILL_8B;
        const AsyncImplB = cute.arch.builders.Copy(async_op_B);

        const t_offset_B = thread_id * 4;
        const bk = t_offset_B % 16;
        const bn = t_offset_B / 16;
        const pred_B = (block_n * 8 + bn < N) and (k_tile * 16 + bk < K);
        const g_ptr_B = ptr_B + (block_n * 8 + bn) * K + (k_tile * 16 + bk);
        const s_ptr_B = @as([*]addrspace(.shared) u8, @ptrCast(&smem_B)) + (bn * 16 + bk) * 2;
        AsyncImplB.copy(@as([*]addrspace(.global) const u8, @ptrCast(g_ptr_B)), @as([*]addrspace(.shared) u8, @ptrCast(s_ptr_B)), pred_B);

        cute.arch.util.cp_async_fence();
        cute.arch.util.cp_async_wait_all();
        cute.arch.sync.syncthreads();

        // --- 6. Shared -> Register using ldmatrix (via CopyAtom) ---
        const ld_op = arch_db.copy_sm75.SM75_U32x4_LDSM_N;
        const ld_traits = atom_db.copy_traits_sm75.SM75_U32x4_LDSM_N;
        const LdAtom = cute.atom.builders.CopyAtom(ld_op, ld_traits);

        const ld_thr_sA = LdAtom.partition_S(.{}, sA, thread_id);
        const ld_thr_rA = LdAtom.partition_D(.{}, thr_rA, thread_id);
        LdAtom.copy(ld_thr_sA, ld_thr_rA);

        // For B, just elementwise copy
        cute.algorithm.copy(thr_sB, thr_rB);

        // 7. MMA
        const thr_rB_u32 = cute.tensor.make_tensor(@as([*]u32, @ptrCast(&rB)), cute.layout.make_layout_1d(2));
        thr_mma.fma(thr_acc, thr_rA, thr_rB_u32, thr_acc);

        cute.arch.sync.syncthreads();
    }

    // 8. Epilogue
    inline for (0..4) |i| {
        const idx = mma_traits.layout_c.map(.{ thread_id, i });
        const m = idx % 16;
        const n = idx / 16;
        const gm = block_m * 16 + m;
        const gn = block_n * 8 + n;
        if (gm < M and gn < N) tensor_C.set(.{ gm, gn }, accum[i]);
    }
}
