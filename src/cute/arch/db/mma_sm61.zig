// AUTO-GENERATED CuTe-Zig Instruction Database
const types = @import("../types.zig");

pub const SM61_DP4A = types.MmaInst {
    .name = "SM61_DP4A",
    .sm = 61,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = i32, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = i32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "dp4a.s32.s32 %0, %1, %2, %3;",
    .saturate = false,
};

pub const SM61_DP2A = types.MmaInst {
    .name = "SM61_DP2A",
    .sm = 61,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = i32, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = i32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "dp2a.s32.s32 %0, %1, %2, %3;",
    .saturate = false,
};

