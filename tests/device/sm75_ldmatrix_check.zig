const cute = @import("cute");

var shared_tile: [16 * 8]f16 align(16) addrspace(.shared) = undefined;

pub export fn check_ldmatrix(out: [*]u32) callconv(.kernel) void {
    const thread_id = cute.arch.util.thread_idx_x();

    const op = cute.arch.db.copy_sm75.SM75_U32x4_LDSM_N;
    const traits = cute.atom.db.copy_traits_sm75.SM75_U32x4_LDSM_N;
    const LdAtom = cute.atom.builders.CopyAtom(op, traits);

    const sA = cute.tensor.make_tensor(@as([*]addrspace(.shared) f16, @ptrCast(&shared_tile)), cute.layout.make_layout_right(.{ 16, 8 }));

    var rA: [4]u32 align(16) = undefined;
    const thr_rA = cute.tensor.make_tensor(@as([*]u32, &rA), cute.layout.make_layout_1d(4));

    // Use partitioner with bit-recast as in SGEMM
    const ld_thr_sA = LdAtom.partition_S(.{}, cute.tensor.recast_bits(sA), thread_id);
    const ld_thr_rA = LdAtom.partition_D(.{}, cute.tensor.recast_bits(thr_rA), thread_id);
    LdAtom.copy(ld_thr_sA, ld_thr_rA);

    out[thread_id * 4 + 0] = rA[0];
}
