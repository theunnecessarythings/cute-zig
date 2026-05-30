// AUTO-GENERATED CuTe-Zig Instruction Database
const types = @import("../types.zig");

pub const SM75_16x8x8_F32F16F16F32_TN = types.MmaInst{
    .name = "SM75_16x8x8_F32F16F16F32_TN",
    .sm = 75,
    .m = 16,
    .n = 8,
    .k = 8,
    .d_regs = .{ .ty = f32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 4 },
    .d_ty = .f32,
    .a_ty = .f16,
    .b_ty = .f16,
    .c_ty = .f32,
    .layout_a = .row,
    .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k8.row.col.f32.f16.f16.f32 {%0, %1, %2, %3}, {%4, %5}, {%6}, {%7, %8, %9, %10};",
    .saturate = false,
};

pub const SM75_8x8x16_S32S8S8S32_TN = types.MmaInst{
    .name = "SM75_8x8x16_S32S8S8S32_TN",
    .sm = 75,
    .m = 8,
    .n = 8,
    .k = 16,
    .d_regs = .{ .ty = u32, .count = 2 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .s32,
    .a_ty = .s8,
    .b_ty = .s8,
    .c_ty = .s32,
    .layout_a = .row,
    .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k16.row.col.s32.s8.s8.s32 {%0, %1}, {%2}, {%3}, {%4, %5};",
    .saturate = false,
};
