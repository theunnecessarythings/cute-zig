const std = @import("std");
const types = @import("types.zig");
const dispatch = @import("dispatch.zig");

fn typeName(comptime T: type) []const u8 {
    return switch (T) {
        f16 => "f16",
        f32 => "f32",
        f64 => "f64",
        u32 => "u32",
        u64 => "u64",
        u128 => "u128",
        u16 => "u16",
        u8 => "u8",
        i32 => "i32",
        i64 => "i64",
        i16 => "i16",
        i8 => "i8",
        void => "void",
        else => @compileError("Unsupported type in PTX dispatcher: " ++ @typeName(T)),
    };
}

/// Generic Mma builder that wraps an instruction record.
pub fn Mma(comptime inst: types.MmaInst) type {
    return struct {
        pub const DRegisters = [inst.d_regs.count]inst.d_regs.ty;
        pub const ARegisters = [inst.a_regs.count]inst.a_regs.ty;
        pub const BRegisters = [inst.b_regs.count]inst.b_regs.ty;
        pub const CRegisters = [inst.c_regs.count]inst.c_regs.ty;

        pub inline fn fma(d: *DRegisters, a: ARegisters, b: BRegisters, c: CRegisters) void {
            const func_name = comptime std.fmt.comptimePrint("mma_{s}{d}_{s}{d}_{s}{d}_{s}{d}", .{
                typeName(inst.d_regs.ty), inst.d_regs.count,
                typeName(inst.a_regs.ty), inst.a_regs.count,
                typeName(inst.b_regs.ty), inst.b_regs.count,
                typeName(inst.c_regs.ty), inst.c_regs.count,
            });
            comptime if (!@hasDecl(dispatch, func_name)) {
                @compileError("Universal Dispatcher missing signature for " ++ inst.name ++ " (looked for " ++ func_name ++ ")");
            };
            @field(dispatch, func_name)(inst.ptx, d, a, b, c);
        }
    };
}

pub fn Copy(comptime inst: types.CopyInst) type {
    return struct {
        pub const SRegisters = [inst.s_regs.count]inst.s_regs.ty;
        pub const DRegisters = [inst.d_regs.count]inst.d_regs.ty;

        pub inline fn copy(src: SRegisters, dst: *DRegisters, pred: bool) void {
            const func_name = comptime std.fmt.comptimePrint("copy_{s}{d}_{s}{d}", .{
                typeName(inst.s_regs.ty), inst.s_regs.count,
                typeName(inst.d_regs.ty), inst.d_regs.count,
            });
            comptime if (!@hasDecl(dispatch, func_name)) {
                @compileError("Universal Dispatcher missing signature for " ++ inst.name ++ " (looked for " ++ func_name ++ ")");
            };
            @field(dispatch, func_name)(inst.ptx, src, dst, pred);
        }
    };
}
