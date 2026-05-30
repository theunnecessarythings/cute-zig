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

fn RegisterCopyWrapper(comptime inst: types.CopyInst) type {
    return struct {
        pub const SRegisters = [inst.s_regs.count]inst.s_regs.ty;
        pub const DRegisters = [inst.d_regs.count]inst.d_regs.ty;

        pub inline fn copy(src: SRegisters, dst: *DRegisters, pred: bool) void {
            _ = pred;
            const count = inst.d_regs.count;
            if (count == 1 and inst.s_regs.count == 1) {
                var d0: inst.d_regs.ty = undefined;
                asm volatile (inst.ptx
                    : [d0] "=r" (d0),
                    : [s0] "r" (src[0]),
                );
                dst[0] = d0;
            } else {
                @compileError("Unsupported RegisterCopyWrapper size");
            }
        }
    };
}

fn SharedLoadWrapper(comptime inst: types.CopyInst) type {
    return struct {
        pub const SRegisters = [*]addrspace(.shared) const u8;
        pub const DRegisters = [inst.d_regs.count]inst.d_regs.ty;

        pub inline fn copy(src: SRegisters, dst: *DRegisters, pred: bool) void {
            _ = pred;
            const count = inst.d_regs.count;
            if (count == 1) {
                var d0: inst.d_regs.ty = undefined;
                asm volatile (inst.ptx
                    : [d0] "=r" (d0),
                    : [s0] "r" (@as(u32, @intCast(@intFromPtr(src)))),
                    : .{ .memory = true });
                dst[0] = d0;
            } else if (count == 2) {
                var d0: inst.d_regs.ty = undefined;
                var d1: inst.d_regs.ty = undefined;
                asm volatile (inst.ptx
                    : [d0] "=r" (d0),
                      [d1] "=r" (d1),
                    : [s0] "r" (@as(u32, @intCast(@intFromPtr(src)))),
                    : .{ .memory = true });
                dst[0] = d0;
                dst[1] = d1;
            } else if (count == 4) {
                var d0: inst.d_regs.ty = undefined;
                var d1: inst.d_regs.ty = undefined;
                var d2: inst.d_regs.ty = undefined;
                var d3: inst.d_regs.ty = undefined;
                asm volatile (inst.ptx
                    : [d0] "=r" (d0),
                      [d1] "=r" (d1),
                      [d2] "=r" (d2),
                      [d3] "=r" (d3),
                    : [s0] "r" (@as(u32, @intCast(@intFromPtr(src)))),
                    : .{ .memory = true });
                dst[0] = d0;
                dst[1] = d1;
                dst[2] = d2;
                dst[3] = d3;
            } else {
                @compileError("Unsupported register count for ldmatrix");
            }
        }
    };
}

fn SharedStoreWrapper(comptime inst: types.CopyInst) type {
    return struct {
        pub const SRegisters = [inst.s_regs.count]inst.s_regs.ty;
        pub const DRegisters = [*]addrspace(.shared) u8;

        pub inline fn copy(src: SRegisters, dst: DRegisters, pred: bool) void {
            _ = pred;
            const count = inst.s_regs.count;
            if (count == 1) {
                asm volatile (inst.ptx
                    :
                    : [d0] "r" (@as(u32, @intCast(@intFromPtr(dst)))),
                      [s0] "r" (src[0]),
                    : .{ .memory = true });
            } else if (count == 2) {
                asm volatile (inst.ptx
                    :
                    : [d0] "r" (@as(u32, @intCast(@intFromPtr(dst)))),
                      [s0] "r" (src[0]),
                      [s1] "r" (src[1]),
                    : .{ .memory = true });
            } else if (count == 4) {
                asm volatile (inst.ptx
                    :
                    : [d0] "r" (@as(u32, @intCast(@intFromPtr(dst)))),
                      [s0] "r" (src[0]),
                      [s1] "r" (src[1]),
                      [s2] "r" (src[2]),
                      [s3] "r" (src[3]),
                    : .{ .memory = true });
            } else {
                @compileError("Unsupported register count for stmatrix");
            }
        }
    };
}

fn AsyncGlobalToSharedWrapper(comptime inst: types.CopyInst) type {
    return struct {
        pub const SRegisters = [*]addrspace(.global) const u8;
        pub const DRegisters = [*]addrspace(.shared) u8;

        pub inline fn copy(src: SRegisters, dst: DRegisters, pred: bool) void {
            switch (inst.predication) {
                .none => {
                    asm volatile (inst.ptx
                        :
                        : [d0] "r" (@as(u32, @intCast(@intFromPtr(dst)))),
                          [s0] "l" (@intFromPtr(src)),
                          [size] "n" (inst.copy_bytes orelse 0),
                        : .{ .memory = true });
                },
                .instruction_guard => {
                    if (pred) {
                        asm volatile (inst.ptx
                            :
                            : [d0] "r" (@as(u32, @intCast(@intFromPtr(dst)))),
                              [s0] "l" (@intFromPtr(src)),
                              [size] "n" (inst.copy_bytes orelse 0),
                            : .{ .memory = true });
                    }
                },
                .cp_async_zero_fill => {
                    const src_size: u32 = if (pred) (inst.copy_bytes orelse 0) else 0;
                    asm volatile (inst.ptx
                        :
                        : [d0] "r" (@as(u32, @intCast(@intFromPtr(dst)))),
                          [s0] "l" (@intFromPtr(src)),
                          [size] "n" (inst.copy_bytes orelse 0),
                          [zfill] "r" (src_size),
                        : .{ .memory = true });
                },
            }
        }
    };
}

fn TmaWrapper(comptime inst: types.CopyInst) type {
    _ = inst;
    return struct {}; // placeholder
}

pub fn Copy(comptime inst: types.CopyInst) type {
    return switch (inst.kind) {
        .smem_to_reg => SharedLoadWrapper(inst),
        .reg_to_smem => SharedStoreWrapper(inst),
        .gmem_to_smem_async => AsyncGlobalToSharedWrapper(inst),
        .reg_to_reg => RegisterCopyWrapper(inst),
        .tma_load, .tma_store => TmaWrapper(inst),
    };
}
