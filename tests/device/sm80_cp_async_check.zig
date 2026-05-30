const cute = @import("cute");

var shared_dst: [8]u16 addrspace(.shared) = undefined;

pub export fn check_cp_async(src: [*]addrspace(.global) const u8) callconv(.kernel) void {
    const op = cute.arch.db.copy_sm80.SM80_CP_ASYNC_CACHEALWAYS_16B;
    const Impl = cute.arch.builders.Copy(op);
    const dst = @as([*]addrspace(.shared) u8, @ptrCast(&shared_dst));
    Impl.copy(src, dst, true);
    cute.arch.util.cp_async_fence();
    cute.arch.util.cp_async_wait_all();
}

pub export fn check_cp_async_zfill(src: [*]addrspace(.global) const u8, pred: bool) callconv(.kernel) void {
    const op = cute.arch.db.copy_sm80.SM80_CP_ASYNC_CACHEALWAYS_ZFILL_16B;
    const Impl = cute.arch.builders.Copy(op);
    const dst = @as([*]addrspace(.shared) u8, @ptrCast(&shared_dst));
    Impl.copy(src, dst, pred);
    cute.arch.util.cp_async_fence();
    cute.arch.util.cp_async_wait_all();
}
