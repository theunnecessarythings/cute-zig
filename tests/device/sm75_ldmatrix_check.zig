const cute = @import("cute");
pub export fn check_movmatrix(
    in_regs: *[1]u32,
    out: *[1]u32,
) callconv(.kernel) void {
    const op = cute.arch.db.copy_sm75.SM75_U32x1_MOVM_T;
    const Impl = cute.arch.builders.Copy(op);
    Impl.copy(in_regs.*, out, true);
}
