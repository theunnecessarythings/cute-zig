const cute = @import("cute");

fn DummyTensor(comptime PtrT: type, comptime count: usize) type {
    return struct {
        ptr: PtrT,
        pub inline fn size(self: @This()) usize {
            _ = self;
            return count;
        }
    };
}

pub export fn check_movmatrix(
    in_regs: [*]const u32,
    out: [*]u32,
) callconv(.kernel) void {
    const op = cute.arch.db.copy_sm75.SM75_U32x1_MOVM_T;
    const traits = cute.atom.db.copy_traits_sm75.SM75_U32x1_MOVM_T;
    const Impl = cute.atom.builders.CopyAtom(op, traits);

    const src_tensor = DummyTensor([*]const u32, 1){ .ptr = in_regs };
    const dst_tensor = DummyTensor([*]u32, 1){ .ptr = out };
    Impl.copy(src_tensor, dst_tensor);
}
