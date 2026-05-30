const cute = @import("cute");

var shared_tile: [8]u16 addrspace(.shared) = undefined;

fn DummyTensor(comptime PtrT: type, comptime count: usize) type {
    return struct {
        ptr: PtrT,
        pub inline fn size(self: @This()) usize {
            _ = self;
            return count;
        }
    };
}

pub export fn check_ldmatrix(out: [*]u32) callconv(.kernel) void {
    const op = cute.arch.db.copy_sm75.SM75_U32x2_LDSM_N;
    const traits = cute.atom.db.copy_traits_sm75.SM75_U32x2_LDSM_N;
    const Impl = cute.atom.builders.CopyAtom(op, traits);
    const src = @as([*]addrspace(.shared) const u8, @ptrCast(&shared_tile));

    const src_tensor = DummyTensor([*]addrspace(.shared) const u8, 1){ .ptr = src };
    const dst_tensor = DummyTensor([*]u32, 2){ .ptr = out };
    Impl.copy(src_tensor, dst_tensor);
}
