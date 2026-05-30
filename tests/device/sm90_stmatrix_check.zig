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

pub export fn check_stmatrix(src: [*]const u32) callconv(.kernel) void {
    const op = cute.arch.db.copy_sm90.SM90_U32x2_STSM_N;
    const traits = cute.atom.db.copy_traits_sm90.SM90_U32x2_STSM_N;
    const Impl = cute.atom.builders.CopyAtom(op, traits);
    const dst = @as([*]addrspace(.shared) u8, @ptrCast(&shared_tile));

    const src_tensor = DummyTensor([*]const u32, 2){ .ptr = src };
    const dst_tensor = DummyTensor([*]addrspace(.shared) u8, 1){ .ptr = dst };
    Impl.copy(src_tensor, dst_tensor);
}
