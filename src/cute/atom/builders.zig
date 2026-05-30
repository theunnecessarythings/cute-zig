const std = @import("std");
const traits_mod = @import("traits.zig");
const partitioner = @import("partitioner.zig");
const int_tuple = @import("../int_tuple.zig");
const numeric = @import("../numeric.zig");

fn valueEquals(comptime x: anytype, comptime expected: comptime_int) bool {
    const T = @TypeOf(x);
    if (comptime numeric.is_integral(T)) return numeric.value(x) == expected;
    return false;
}

fn isPlaceholderLayout(comptime l: anytype) bool {
    const L = @TypeOf(l);
    if (!@hasDecl(L, "ShapeType") or !@hasDecl(L, "StrideType")) return false;
    if (!int_tuple.is_tuple(@TypeOf(l.shape)) or !int_tuple.is_tuple(@TypeOf(l.stride))) return false;
    if (int_tuple.rank(@TypeOf(l.shape)) != 2 or int_tuple.rank(@TypeOf(l.stride)) != 2) return false;
    return valueEquals(l.shape[0], 1) and valueEquals(l.shape[1], 1) and
        valueEquals(l.stride[0], 0) and valueEquals(l.stride[1], 0);
}

fn traitName(comptime traits: anytype) []const u8 {
    if (@hasField(@TypeOf(traits), "name")) return traits.name;
    return "<unnamed>";
}

fn requireSupportedTraits(comptime kind: []const u8, comptime name: []const u8, comptime traits: anytype) void {
    const TraitsT = @TypeOf(traits);
    if (@hasField(TraitsT, "supported") and !traits.supported) {
        @compileError(kind ++ " traits " ++ name ++ " are marked unsupported");
    }
    if ((@hasField(TraitsT, "layout_a") and isPlaceholderLayout(traits.layout_a)) or
        (@hasField(TraitsT, "layout_b") and isPlaceholderLayout(traits.layout_b)) or
        (@hasField(TraitsT, "layout_c") and isPlaceholderLayout(traits.layout_c)) or
        (@hasField(TraitsT, "layout_src") and isPlaceholderLayout(traits.layout_src)) or
        (@hasField(TraitsT, "layout_dst") and isPlaceholderLayout(traits.layout_dst)))
    {
        @compileError(kind ++ " traits " ++ name ++ " still contain placeholder layouts");
    }
}

fn allOnes(comptime v: anytype) bool {
    const T = @TypeOf(v);
    if (comptime int_tuple.is_tuple(T)) {
        inline for (0..comptime int_tuple.rank(T)) |i| {
            if (!allOnes(v[i])) return false;
        }
        return true;
    }
    if (comptime numeric.is_integral(T)) return numeric.value(v) == 1;
    return false;
}

fn registerChild(comptime Registers: type) type {
    return @typeInfo(Registers).array.child;
}

fn registerLen(comptime Registers: type) usize {
    return @typeInfo(Registers).array.len;
}

fn tensorChild(comptime TensorT: type) type {
    return @typeInfo(@FieldType(TensorT, "ptr")).pointer.child;
}

fn validateRegisterTensor(comptime role: []const u8, tensor: anytype, comptime Registers: type) void {
    const Expected = registerChild(Registers);
    const Actual = tensorChild(@TypeOf(tensor));
    comptime if (Actual != u1 and Actual != Expected) {
        @compileError(role ++ " register element type mismatch: expected " ++ @typeName(Expected) ++ ", got " ++ @typeName(Actual));
    };
    if (Actual == u1) {
        const expected_bits = registerLen(Registers) * @sizeOf(Expected) * 8;
        if (tensor.size() != expected_bits) @panic(role ++ " bit-tensor has wrong bit count");
    } else {
        if (tensor.size() != registerLen(Registers)) @panic(role ++ " register tensor has wrong element count");
    }
}

pub fn MmaAtom(comptime inst: anytype, comptime traits: anytype) type {
    comptime {
        if (!std.mem.eql(u8, inst.name, traits.name)) {
            @compileError("MMA op/traits mismatch: op " ++ inst.name ++ " cannot use traits " ++ traits.name);
        }
        requireSupportedTraits("MMA", traits.name, traits);
    }

    return struct {
        const Self = @This();
        pub const Traits = traits;
        pub const Op = inst;

        pub inline fn partition_A(self: Self, tensor: anytype, thread_id: usize) @TypeOf(partitioner.partition(tensor, Traits.layout_a, thread_id)) {
            _ = self;
            return partitioner.partition(tensor, Traits.layout_a, thread_id);
        }

        pub inline fn partition_B(self: Self, tensor: anytype, thread_id: usize) @TypeOf(partitioner.partition(tensor, Traits.layout_b, thread_id)) {
            _ = self;
            return partitioner.partition(tensor, Traits.layout_b, thread_id);
        }

        pub inline fn partition_C(self: Self, tensor: anytype, thread_id: usize) @TypeOf(partitioner.partition(tensor, Traits.layout_c, thread_id)) {
            _ = self;
            return partitioner.partition(tensor, Traits.layout_c, thread_id);
        }

        pub inline fn fma(d: anytype, a: anytype, b: anytype, c: anytype) void {
            const arch_builders = @import("../arch/builders.zig");
            const atom_op = arch_builders.Mma(Op);

            validateRegisterTensor("D", d, atom_op.DRegisters);
            validateRegisterTensor("A", a, atom_op.ARegisters);
            validateRegisterTensor("B", b, atom_op.BRegisters);
            validateRegisterTensor("C", c, atom_op.CRegisters);

            // Cast pointers to expected register array types
            const d_regs = @as(*atom_op.DRegisters, @ptrCast(@alignCast(d.ptr)));
            const a_regs = @as(*const atom_op.ARegisters, @ptrCast(@alignCast(a.ptr))).*;
            const b_regs = @as(*const atom_op.BRegisters, @ptrCast(@alignCast(b.ptr))).*;
            const c_regs = @as(*const atom_op.CRegisters, @ptrCast(@alignCast(c.ptr))).*;

            atom_op.fma(d_regs, a_regs, b_regs, c_regs);
        }
    };
}

/// A ThrMMA object represents a specific thread's view of a TiledMMA.
pub fn ThrMMA(comptime Atom: anytype) type {
    return struct {
        const Self = @This();
        const AtomT = Atom;
        thread_id: usize,

        pub inline fn partition_A(self: Self, tensor: anytype) @TypeOf(AtomT.partition_A(.{}, tensor, self.thread_id)) {
            return AtomT.partition_A(.{}, tensor, self.thread_id);
        }

        pub inline fn partition_B(self: Self, tensor: anytype) @TypeOf(AtomT.partition_B(.{}, tensor, self.thread_id)) {
            return AtomT.partition_B(.{}, tensor, self.thread_id);
        }

        pub inline fn partition_C(self: Self, tensor: anytype) @TypeOf(AtomT.partition_C(.{}, tensor, self.thread_id)) {
            return AtomT.partition_C(.{}, tensor, self.thread_id);
        }

        pub inline fn fma(self: Self, d: anytype, a: anytype, b: anytype, c: anytype) void {
            _ = self;
            AtomT.fma(d, a, b, c);
        }
    };
}

/// A TiledMMA groups an atom with a thread layout to define a grid-level operation.
pub fn TiledMMA(comptime Atom: anytype, comptime ThrLayout: anytype) type {
    comptime if (!allOnes(ThrLayout)) {
        @compileError("TiledMMA currently supports only unit thread layouts");
    };
    return struct {
        const Self = @This();

        pub fn get_thread_slice(self: Self, thread_id: usize) ThrMMA(Atom) {
            _ = self;
            return .{ .thread_id = thread_id };
        }
    };
}

pub fn CopyAtom(comptime inst: anytype, comptime traits: anytype) type {
    comptime requireSupportedTraits("Copy", traitName(traits), traits);

    return struct {
        const Self = @This();
        pub const Traits = traits;
        pub const Op = inst;

        pub inline fn partition_S(self: Self, tensor: anytype, thread_id: usize) @TypeOf(partitioner.partition(tensor, Traits.layout_src, thread_id)) {
            _ = self;
            return partitioner.partition(tensor, Traits.layout_src, thread_id);
        }

        pub inline fn partition_D(self: Self, tensor: anytype, thread_id: usize) @TypeOf(partitioner.partition(tensor, Traits.layout_dst, thread_id)) {
            _ = self;
            return partitioner.partition(tensor, Traits.layout_dst, thread_id);
        }

        pub inline fn copy(src: anytype, dst: anytype) void {
            copy_p(src, dst, true);
        }

        pub inline fn copy_p(src: anytype, dst: anytype, pred: bool) void {
            const arch_builders = @import("../arch/builders.zig");
            const atom_op = arch_builders.Copy(Op);

            switch (Op.kind) {
                .reg_to_reg => {
                    validateRegisterTensor("copy source", src, atom_op.SRegisters);
                    validateRegisterTensor("copy destination", dst, atom_op.DRegisters);
                    const s_regs = @as(*const atom_op.SRegisters, @ptrCast(@alignCast(src.ptr))).*;
                    const d_regs = @as(*atom_op.DRegisters, @ptrCast(@alignCast(dst.ptr)));
                    atom_op.copy(s_regs, d_regs, pred);
                },
                .smem_to_reg => {
                    validateRegisterTensor("copy destination", dst, atom_op.DRegisters);
                    const s_ptr = @as([*]addrspace(.shared) const u8, @ptrCast(src.ptr));
                    const d_regs = @as(*atom_op.DRegisters, @ptrCast(@alignCast(dst.ptr)));
                    atom_op.copy(s_ptr, d_regs, pred);
                },
                .reg_to_smem => {
                    validateRegisterTensor("copy source", src, atom_op.SRegisters);
                    const s_regs = @as(*const atom_op.SRegisters, @ptrCast(@alignCast(src.ptr))).*;
                    const d_ptr = @as([*]addrspace(.shared) u8, @ptrCast(dst.ptr));
                    atom_op.copy(s_regs, d_ptr, pred);
                },
                .gmem_to_smem_async => {
                    const s_ptr = @as([*]addrspace(.global) const u8, @ptrCast(src.ptr));
                    const d_ptr = @as([*]addrspace(.shared) u8, @ptrCast(dst.ptr));
                    atom_op.copy(s_ptr, d_ptr, pred);
                },
                else => @compileError("CopyAtom kind not yet implemented"),
            }
        }

        pub inline fn copy_zfill(src: anytype, dst: anytype, valid_bytes: u32) void {
            const arch_builders = @import("../arch/builders.zig");
            const atom_op = arch_builders.Copy(Op);

            comptime if (Op.kind != .gmem_to_smem_async) {
                @compileError("copy_zfill is only supported for gmem_to_smem_async");
            };

            const s_ptr = @as([*]addrspace(.global) const u8, @ptrCast(src.ptr));
            const d_ptr = @as([*]addrspace(.shared) u8, @ptrCast(dst.ptr));
            atom_op.copy_zfill(Op, s_ptr, d_ptr, valid_bytes);
        }
    };
}

/// A ThrCopy object represents a specific thread's view of a TiledCopy.
pub fn ThrCopy(comptime Atom: anytype) type {
    return struct {
        const Self = @This();
        const AtomT = Atom;
        thread_id: usize,

        pub inline fn partition_S(self: Self, tensor: anytype) @TypeOf(AtomT.partition_S(.{}, tensor, self.thread_id)) {
            return AtomT.partition_S(.{}, tensor, self.thread_id);
        }

        pub inline fn partition_D(self: Self, tensor: anytype) @TypeOf(AtomT.partition_D(.{}, tensor, self.thread_id)) {
            return AtomT.partition_D(.{}, tensor, self.thread_id);
        }

        pub inline fn copy(self: Self, src: anytype, dst: anytype) void {
            _ = self;
            AtomT.copy(src, dst);
        }

        pub inline fn copy_p(self: Self, src: anytype, dst: anytype, pred: bool) void {
            _ = self;
            AtomT.copy_p(src, dst, pred);
        }
    };
}

/// A TiledCopy groups an atom with a thread layout to define a grid-level operation.
pub fn TiledCopy(comptime Atom: anytype, comptime ThrLayout: anytype) type {
    comptime if (!allOnes(ThrLayout)) {
        @compileError("TiledCopy currently supports only unit thread layouts");
    };
    return struct {
        const Self = @This();

        pub fn get_thread_slice(self: Self, thread_id: usize) ThrCopy(Atom) {
            _ = self;
            return .{ .thread_id = thread_id };
        }
    };
}
