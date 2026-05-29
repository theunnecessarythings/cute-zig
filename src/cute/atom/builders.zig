const std = @import("std");
const traits_mod = @import("traits.zig");
const partitioner = @import("partitioner.zig");

pub fn MmaAtom(comptime inst: anytype, comptime traits: anytype) type {
    return struct {
        const Self = @This();
        pub const Traits = traits;
        pub const Op = inst;

        pub fn partition_A(self: Self, tensor: anytype, thread_id: usize) @TypeOf(partitioner.partition(tensor, Traits.layout_a, thread_id)) {
            _ = self;
            return partitioner.partition(tensor, Traits.layout_a, thread_id);
        }

        pub fn partition_B(self: Self, tensor: anytype, thread_id: usize) @TypeOf(partitioner.partition(tensor, Traits.layout_b, thread_id)) {
            _ = self;
            return partitioner.partition(tensor, Traits.layout_b, thread_id);
        }

        pub fn partition_C(self: Self, tensor: anytype, thread_id: usize) @TypeOf(partitioner.partition(tensor, Traits.layout_c, thread_id)) {
            _ = self;
            return partitioner.partition(tensor, Traits.layout_c, thread_id);
        }

        pub inline fn fma(d: anytype, a: anytype, b: anytype, c: anytype) void {
            const arch_builders = @import("../arch/builders.zig");
            const atom_op = arch_builders.Mma(Op);
            
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

        pub fn partition_A(self: Self, tensor: anytype) @TypeOf(AtomT.partition_A(.{}, tensor, self.thread_id)) {
            return AtomT.partition_A(.{}, tensor, self.thread_id);
        }

        pub fn partition_B(self: Self, tensor: anytype) @TypeOf(AtomT.partition_B(.{}, tensor, self.thread_id)) {
            return AtomT.partition_B(.{}, tensor, self.thread_id);
        }

        pub fn partition_C(self: Self, tensor: anytype) @TypeOf(AtomT.partition_C(.{}, tensor, self.thread_id)) {
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
    _ = ThrLayout;
    return struct {
        const Self = @This();
        
        pub fn get_thread_slice(self: Self, thread_id: usize) ThrMMA(Atom) {
            _ = self;
            return .{ .thread_id = thread_id };
        }
    };
}

pub fn CopyAtom(comptime inst: anytype, comptime traits: anytype) type {
    return struct {
        const Self = @This();
        pub const Traits = traits;
        pub const Op = inst;

        pub fn partition_S(self: Self, tensor: anytype, thread_id: usize) @TypeOf(partitioner.partition(tensor, Traits.layout_src, thread_id)) {
            _ = self;
            return partitioner.partition(tensor, Traits.layout_src, thread_id);
        }

        pub fn partition_D(self: Self, tensor: anytype, thread_id: usize) @TypeOf(partitioner.partition(tensor, Traits.layout_dst, thread_id)) {
            _ = self;
            return partitioner.partition(tensor, Traits.layout_dst, thread_id);
        }
        
        pub inline fn copy(src: anytype, dst: anytype) void {
            const arch_builders = @import("../arch/builders.zig");
            const atom_op = arch_builders.Copy(Op);
            
            const s_regs = @as(*const atom_op.SRegisters, @ptrCast(@alignCast(src.ptr))).*;
            const d_regs = @as(*atom_op.DRegisters, @ptrCast(@alignCast(dst.ptr)));
            
            atom_op.copy(s_regs, d_regs, true);
        }

        pub inline fn copy_p(src: anytype, dst: anytype, pred: bool) void {
            const arch_builders = @import("../arch/builders.zig");
            const atom_op = arch_builders.Copy(Op);
            
            const s_regs = @as(*const atom_op.SRegisters, @ptrCast(@alignCast(src.ptr))).*;
            const d_regs = @as(*atom_op.DRegisters, @ptrCast(@alignCast(dst.ptr)));
            
            atom_op.copy(s_regs, d_regs, pred);
        }
    };
}

/// A ThrCopy object represents a specific thread's view of a TiledCopy.
pub fn ThrCopy(comptime Atom: anytype) type {
    return struct {
        const Self = @This();
        const AtomT = Atom;
        thread_id: usize,

        pub fn partition_S(self: Self, tensor: anytype) @TypeOf(AtomT.partition_S(.{}, tensor, self.thread_id)) {
            return AtomT.partition_S(.{}, tensor, self.thread_id);
        }

        pub fn partition_D(self: Self, tensor: anytype) @TypeOf(AtomT.partition_D(.{}, tensor, self.thread_id)) {
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
    _ = ThrLayout;
    return struct {
        const Self = @This();
        
        pub fn get_thread_slice(self: Self, thread_id: usize) ThrCopy(Atom) {
            _ = self;
            return .{ .thread_id = thread_id };
        }
    };
}
