const std = @import("std");
const cute = @import("cute");

var smem_A: [16 * 16]f16 align(16) addrspace(.shared) = undefined;

/// Test LDSM partitioning and bit-to-element mapping.
pub fn ldsm_partition_test(
    ptr_out: [*]addrspace(.global) u32,
) callconv(.kernel) void {
    const thread_id = cute.arch.util.thread_idx_x();

    // 1. Initialize shared memory with lane-distinguishable values
    // Each f16 element gets a unique value: row * 16 + col
    if (thread_id < 16) {
        inline for (0..16) |col| {
            smem_A[thread_id * 16 + col] = @floatFromInt(thread_id * 16 + col);
        }
    }
    cute.arch.sync.syncthreads();

    // 2. Define LDSM Atom and Traits
    const arch_db = cute.arch.db;
    const atom_db = cute.atom.db;
    const ld_op = arch_db.copy_sm75.SM75_U32x4_LDSM_N;
    const ld_traits = atom_db.copy_traits_sm75.SM75_U32x4_LDSM_N;
    const LdAtom = cute.atom.builders.CopyAtom(ld_op, ld_traits);

    // 3. Shared Memory Tensor and Partitioning
    const sA = cute.tensor.make_tensor(@as([*]addrspace(.shared) f16, @ptrCast(&smem_A)), cute.layout.make_layout_right(.{ 16, 16 }));

    // Register Fragment
    var rA: [4]u32 align(16) = undefined;
    const thr_rA = cute.tensor.make_tensor(@as([*]u32, &rA), cute.layout.make_layout_1d(4));

    // PERFORM PARTITIONING AND COPY
    const ld_thr_sA = LdAtom.partition_S(.{}, cute.tensor.recast_bits(sA), thread_id);
    const ld_thr_rA = LdAtom.partition_D(.{}, cute.tensor.recast_bits(thr_rA), thread_id);
    LdAtom.copy(ld_thr_sA, ld_thr_rA);

    // 4. Store results to global memory for host verification
    ptr_out[thread_id * 4 + 0] = rA[0];
    ptr_out[thread_id * 4 + 1] = rA[1];
    ptr_out[thread_id * 4 + 2] = rA[2];
    ptr_out[thread_id * 4 + 3] = rA[3];
}
