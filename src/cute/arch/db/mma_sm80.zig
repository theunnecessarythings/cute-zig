// AUTO-GENERATED CuTe-Zig Instruction Database
const types = @import("../types.zig");

pub const SM80_16x8x8_F16F16F16F16_TN = types.MmaInst {
    .name = "SM80_16x8x8_F16F16F16F16_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 8,
    .d_regs = .{ .ty = u32, .count = 2 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k8.row.col.f16.f16.f16.f16  {%0, %1}, {%2, %3}, {%4}, {%5, %6};",
    .saturate = false,
};

pub const SM80_16x8x16_F16F16F16F16_TN = types.MmaInst {
    .name = "SM80_16x8x16_F16F16F16F16_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 16,
    .d_regs = .{ .ty = u32, .count = 2 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k16.row.col.f16.f16.f16.f16  {%0,  %1}, {%2,  %3,  %4,  %5}, {%6,  %7}, {%8,  %9};",
    .saturate = false,
};

pub const SM80_16x8x8_F32F16F16F32_TN = types.MmaInst {
    .name = "SM80_16x8x8_F32F16F16F32_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 8,
    .d_regs = .{ .ty = f32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k8.row.col.f32.f16.f16.f32  {%0,  %1,  %2,  %3}, {%4,  %5}, {%6}, {%7,  %8,  %9,  %10};",
    .saturate = false,
};

pub const SM80_16x8x16_F32F16F16F32_TN = types.MmaInst {
    .name = "SM80_16x8x16_F32F16F16F32_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 16,
    .d_regs = .{ .ty = f32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = f32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k16.row.col.f32.f16.f16.f32  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11, %12, %13};",
    .saturate = false,
};

pub const SM80_16x8x8_F32BF16BF16F32_TN = types.MmaInst {
    .name = "SM80_16x8x8_F32BF16BF16F32_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 8,
    .d_regs = .{ .ty = f32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k8.row.col.f32.bf16.bf16.f32  {%0,  %1,  %2,  %3}, {%4,  %5}, {%6}, {%7,  %8,  %9,  %10};",
    .saturate = false,
};

pub const SM80_16x8x16_F32BF16BF16F32_TN = types.MmaInst {
    .name = "SM80_16x8x16_F32BF16BF16F32_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 16,
    .d_regs = .{ .ty = f32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = f32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k16.row.col.f32.bf16.bf16.f32  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11, %12, %13};",
    .saturate = false,
};

pub const SM80_16x8x4_F32TF32TF32F32_TN = types.MmaInst {
    .name = "SM80_16x8x4_F32TF32TF32F32_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 4,
    .d_regs = .{ .ty = f32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k4.row.col.f32.tf32.tf32.f32  {%0,  %1,  %2,  %3}, {%4,  %5}, {%6}, {%7,  %8,  %9,  %10};",
    .saturate = false,
};

pub const SM80_16x8x8_F32TF32TF32F32_TN = types.MmaInst {
    .name = "SM80_16x8x8_F32TF32TF32F32_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 8,
    .d_regs = .{ .ty = f32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = f32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k8.row.col.f32.tf32.tf32.f32  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11, %12, %13};",
    .saturate = false,
};

pub const SM80_8x8x4_F64F64F64F64_TN = types.MmaInst {
    .name = "SM80_8x8x4_F64F64F64F64_TN",
    .sm = 80,
    .m = 8, .n = 8, .k = 4,
    .d_regs = .{ .ty = f64, .count = 2 },
    .a_regs = .{ .ty = f64, .count = 1 },
    .b_regs = .{ .ty = f64, .count = 1 },
    .c_regs = .{ .ty = f64, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k4.row.col.f64.f64.f64.f64  {%0, %1}, {%2}, {%3}, {%4, %5};",
    .saturate = false,
};

pub const SM80_8x8x16_S32S8S8S32_TN = types.MmaInst {
    .name = "SM80_8x8x16_S32S8S8S32_TN",
    .sm = 80,
    .m = 8, .n = 8, .k = 16,
    .d_regs = .{ .ty = u32, .count = 2 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k16.row.col.s32.s8.s8.s32  {%0, %1}, {%2}, {%3}, {%4, %5};",
    .saturate = false,
};

pub const SM80_8x8x16_S32S8S8S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_8x8x16_S32S8S8S32_TN_SATURATE",
    .sm = 80,
    .m = 8, .n = 8, .k = 16,
    .d_regs = .{ .ty = u32, .count = 2 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k16.row.col.s32.s8.s8.s32.satfinite  {%0, %1}, {%2}, {%3}, {%4, %5};",
    .saturate = true,
};

pub const SM80_16x8x16_S32S8S8S32_TN = types.MmaInst {
    .name = "SM80_16x8x16_S32S8S8S32_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 16,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k16.row.col.s32.s8.s8.s32  {%0,  %1,  %2,  %3}, {%4,  %5}, {%6}, {%7,  %8,  %9,  %10};",
    .saturate = false,
};

pub const SM80_16x8x16_S32S8S8S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_16x8x16_S32S8S8S32_TN_SATURATE",
    .sm = 80,
    .m = 16, .n = 8, .k = 16,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k16.row.col.s32.s8.s8.s32.satfinite  {%0,  %1,  %2,  %3}, {%4,  %5}, {%6}, {%7,  %8,  %9,  %10};",
    .saturate = true,
};

pub const SM80_16x8x32_S32S8S8S32_TN = types.MmaInst {
    .name = "SM80_16x8x32_S32S8S8S32_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k32.row.col.s32.s8.s8.s32  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11, %12, %13};",
    .saturate = false,
};

pub const SM80_16x8x32_S32S8S8S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_16x8x32_S32S8S8S32_TN_SATURATE",
    .sm = 80,
    .m = 16, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k32.row.col.s32.s8.s8.s32.satfinite  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11, %12, %13};",
    .saturate = true,
};

pub const SM80_8x8x16_S32S8U8S32_TN = types.MmaInst {
    .name = "SM80_8x8x16_S32S8U8S32_TN",
    .sm = 80,
    .m = 8, .n = 8, .k = 16,
    .d_regs = .{ .ty = u32, .count = 2 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k16.row.col.s32.s8.u8.s32  {%0, %1}, {%2}, {%3}, {%4, %5};",
    .saturate = false,
};

pub const SM80_8x8x16_S32S8U8S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_8x8x16_S32S8U8S32_TN_SATURATE",
    .sm = 80,
    .m = 8, .n = 8, .k = 16,
    .d_regs = .{ .ty = u32, .count = 2 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k16.row.col.s32.s8.u8.s32.satfinite  {%0, %1}, {%2}, {%3}, {%4, %5};",
    .saturate = true,
};

pub const SM80_16x8x16_S32S8U8S32_TN = types.MmaInst {
    .name = "SM80_16x8x16_S32S8U8S32_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 16,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k16.row.col.s32.s8.u8.s32  {%0,  %1,  %2,  %3}, {%4,  %5}, {%6}, {%7,  %8,  %9,  %10};",
    .saturate = false,
};

pub const SM80_16x8x16_S32S8U8S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_16x8x16_S32S8U8S32_TN_SATURATE",
    .sm = 80,
    .m = 16, .n = 8, .k = 16,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k16.row.col.s32.s8.u8.s32.satfinite  {%0,  %1,  %2,  %3}, {%4,  %5}, {%6}, {%7,  %8,  %9,  %10};",
    .saturate = true,
};

pub const SM80_16x8x32_S32S8U8S32_TN = types.MmaInst {
    .name = "SM80_16x8x32_S32S8U8S32_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k32.row.col.s32.s8.u8.s32  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11, %12, %13};",
    .saturate = false,
};

pub const SM80_16x8x32_S32S8U8S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_16x8x32_S32S8U8S32_TN_SATURATE",
    .sm = 80,
    .m = 16, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k32.row.col.s32.s8.u8.s32.satfinite  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11, %12, %13};",
    .saturate = true,
};

pub const SM80_8x8x16_S32U8S8S32_TN = types.MmaInst {
    .name = "SM80_8x8x16_S32U8S8S32_TN",
    .sm = 80,
    .m = 8, .n = 8, .k = 16,
    .d_regs = .{ .ty = u32, .count = 2 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k16.row.col.s32.u8.s8.s32  {%0, %1}, {%2}, {%3}, {%4, %5};",
    .saturate = false,
};

pub const SM80_8x8x16_S32U8S8S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_8x8x16_S32U8S8S32_TN_SATURATE",
    .sm = 80,
    .m = 8, .n = 8, .k = 16,
    .d_regs = .{ .ty = u32, .count = 2 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k16.row.col.s32.u8.s8.s32.satfinite  {%0, %1}, {%2}, {%3}, {%4, %5};",
    .saturate = true,
};

pub const SM80_16x8x16_S32U8S8S32_TN = types.MmaInst {
    .name = "SM80_16x8x16_S32U8S8S32_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 16,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k16.row.col.s32.u8.s8.s32  {%0,  %1,  %2,  %3}, {%4,  %5}, {%6}, {%7,  %8,  %9,  %10};",
    .saturate = false,
};

pub const SM80_16x8x16_S32U8S8S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_16x8x16_S32U8S8S32_TN_SATURATE",
    .sm = 80,
    .m = 16, .n = 8, .k = 16,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k16.row.col.s32.u8.s8.s32.satfinite  {%0,  %1,  %2,  %3}, {%4,  %5}, {%6}, {%7,  %8,  %9,  %10};",
    .saturate = true,
};

pub const SM80_16x8x32_S32U8S8S32_TN = types.MmaInst {
    .name = "SM80_16x8x32_S32U8S8S32_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k32.row.col.s32.u8.s8.s32  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11, %12, %13};",
    .saturate = false,
};

pub const SM80_16x8x32_S32U8S8S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_16x8x32_S32U8S8S32_TN_SATURATE",
    .sm = 80,
    .m = 16, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k32.row.col.s32.u8.s8.s32.satfinite  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11, %12, %13};",
    .saturate = true,
};

pub const SM80_8x8x16_S32U8U8S32_TN = types.MmaInst {
    .name = "SM80_8x8x16_S32U8U8S32_TN",
    .sm = 80,
    .m = 8, .n = 8, .k = 16,
    .d_regs = .{ .ty = u32, .count = 2 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k16.row.col.s32.u8.u8.s32  {%0, %1}, {%2}, {%3}, {%4, %5};",
    .saturate = false,
};

pub const SM80_8x8x16_S32U8U8S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_8x8x16_S32U8U8S32_TN_SATURATE",
    .sm = 80,
    .m = 8, .n = 8, .k = 16,
    .d_regs = .{ .ty = u32, .count = 2 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k16.row.col.s32.u8.u8.s32.satfinite  {%0, %1}, {%2}, {%3}, {%4, %5};",
    .saturate = true,
};

pub const SM80_16x8x16_S32U8U8S32_TN = types.MmaInst {
    .name = "SM80_16x8x16_S32U8U8S32_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 16,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k16.row.col.s32.u8.u8.s32  {%0,  %1,  %2,  %3}, {%4,  %5}, {%6}, {%7,  %8,  %9,  %10};",
    .saturate = false,
};

pub const SM80_16x8x16_S32U8U8S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_16x8x16_S32U8U8S32_TN_SATURATE",
    .sm = 80,
    .m = 16, .n = 8, .k = 16,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k16.row.col.s32.u8.u8.s32.satfinite  {%0,  %1,  %2,  %3}, {%4,  %5}, {%6}, {%7,  %8,  %9,  %10};",
    .saturate = true,
};

pub const SM80_16x8x32_S32U8U8S32_TN = types.MmaInst {
    .name = "SM80_16x8x32_S32U8U8S32_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k32.row.col.s32.u8.u8.s32  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11, %12, %13};",
    .saturate = false,
};

pub const SM80_16x8x32_S32U8U8S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_16x8x32_S32U8U8S32_TN_SATURATE",
    .sm = 80,
    .m = 16, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k32.row.col.s32.u8.u8.s32.satfinite  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11, %12, %13};",
    .saturate = true,
};

pub const SM80_8x8x32_S32S4S4S32_TN = types.MmaInst {
    .name = "SM80_8x8x32_S32S4S4S32_TN",
    .sm = 80,
    .m = 8, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 2 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k32.row.col.s32.s4.s4.s32  {%0, %1}, {%2}, {%3}, {%4, %5};",
    .saturate = false,
};

pub const SM80_8x8x32_S32S4S4S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_8x8x32_S32S4S4S32_TN_SATURATE",
    .sm = 80,
    .m = 8, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 2 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k32.row.col.s32.s4.s4.s32.satfinite  {%0, %1}, {%2}, {%3}, {%4, %5};",
    .saturate = true,
};

pub const SM80_16x8x32_S32S4S4S32_TN = types.MmaInst {
    .name = "SM80_16x8x32_S32S4S4S32_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k32.row.col.s32.s4.s4.s32  {%0,  %1,  %2,  %3}, {%4,  %5}, {%6}, {%7,  %8,  %9,  %10};",
    .saturate = false,
};

pub const SM80_16x8x32_S32S4S4S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_16x8x32_S32S4S4S32_TN_SATURATE",
    .sm = 80,
    .m = 16, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k32.row.col.s32.s4.s4.s32.satfinite  {%0,  %1,  %2,  %3}, {%4,  %5}, {%6}, {%7,  %8,  %9,  %10};",
    .saturate = true,
};

pub const SM80_16x8x64_S32S4S4S32_TN = types.MmaInst {
    .name = "SM80_16x8x64_S32S4S4S32_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 64,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k64.row.col.s32.s4.s4.s32  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11, %12, %13};",
    .saturate = false,
};

pub const SM80_16x8x64_S32S4S4S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_16x8x64_S32S4S4S32_TN_SATURATE",
    .sm = 80,
    .m = 16, .n = 8, .k = 64,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k64.row.col.s32.s4.s4.s32.satfinite  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11, %12, %13};",
    .saturate = true,
};

pub const SM80_8x8x32_S32S4U4S32_TN = types.MmaInst {
    .name = "SM80_8x8x32_S32S4U4S32_TN",
    .sm = 80,
    .m = 8, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 2 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k32.row.col.s32.s4.u4.s32  {%0, %1}, {%2}, {%3}, {%4, %5};",
    .saturate = false,
};

pub const SM80_8x8x32_S32S4U4S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_8x8x32_S32S4U4S32_TN_SATURATE",
    .sm = 80,
    .m = 8, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 2 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k32.row.col.s32.s4.u4.s32.satfinite  {%0, %1}, {%2}, {%3}, {%4, %5};",
    .saturate = true,
};

pub const SM80_16x8x32_S32S4U4S32_TN = types.MmaInst {
    .name = "SM80_16x8x32_S32S4U4S32_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k32.row.col.s32.s4.u4.s32  {%0,  %1,  %2,  %3}, {%4,  %5}, {%6}, {%7,  %8,  %9,  %10};",
    .saturate = false,
};

pub const SM80_16x8x32_S32S4U4S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_16x8x32_S32S4U4S32_TN_SATURATE",
    .sm = 80,
    .m = 16, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k32.row.col.s32.s4.u4.s32.satfinite  {%0,  %1,  %2,  %3}, {%4,  %5}, {%6}, {%7,  %8,  %9,  %10};",
    .saturate = true,
};

pub const SM80_16x8x64_S32S4U4S32_TN = types.MmaInst {
    .name = "SM80_16x8x64_S32S4U4S32_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 64,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k64.row.col.s32.s4.u4.s32  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11, %12, %13};",
    .saturate = false,
};

pub const SM80_16x8x64_S32S4U4S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_16x8x64_S32S4U4S32_TN_SATURATE",
    .sm = 80,
    .m = 16, .n = 8, .k = 64,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k64.row.col.s32.s4.u4.s32.satfinite  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11, %12, %13};",
    .saturate = true,
};

pub const SM80_8x8x32_S32U4S4S32_TN = types.MmaInst {
    .name = "SM80_8x8x32_S32U4S4S32_TN",
    .sm = 80,
    .m = 8, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 2 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k32.row.col.s32.u4.s4.s32  {%0, %1}, {%2}, {%3}, {%4, %5};",
    .saturate = false,
};

pub const SM80_8x8x32_S32U4S4S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_8x8x32_S32U4S4S32_TN_SATURATE",
    .sm = 80,
    .m = 8, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 2 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k32.row.col.s32.u4.s4.s32.satfinite  {%0, %1}, {%2}, {%3}, {%4, %5};",
    .saturate = true,
};

pub const SM80_16x8x32_S32U4S4S32_TN = types.MmaInst {
    .name = "SM80_16x8x32_S32U4S4S32_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k32.row.col.s32.u4.s4.s32  {%0,  %1,  %2,  %3}, {%4,  %5}, {%6}, {%7,  %8,  %9,  %10};",
    .saturate = false,
};

pub const SM80_16x8x32_S32U4S4S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_16x8x32_S32U4S4S32_TN_SATURATE",
    .sm = 80,
    .m = 16, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k32.row.col.s32.u4.s4.s32.satfinite  {%0,  %1,  %2,  %3}, {%4,  %5}, {%6}, {%7,  %8,  %9,  %10};",
    .saturate = true,
};

pub const SM80_16x8x64_S32U4S4S32_TN = types.MmaInst {
    .name = "SM80_16x8x64_S32U4S4S32_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 64,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k64.row.col.s32.u4.s4.s32  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11, %12, %13};",
    .saturate = false,
};

pub const SM80_16x8x64_S32U4S4S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_16x8x64_S32U4S4S32_TN_SATURATE",
    .sm = 80,
    .m = 16, .n = 8, .k = 64,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k64.row.col.s32.u4.s4.s32.satfinite  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11, %12, %13};",
    .saturate = true,
};

pub const SM80_8x8x32_S32U4U4S32_TN = types.MmaInst {
    .name = "SM80_8x8x32_S32U4U4S32_TN",
    .sm = 80,
    .m = 8, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 2 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k32.row.col.s32.u4.u4.s32  {%0, %1}, {%2}, {%3}, {%4, %5};",
    .saturate = false,
};

pub const SM80_8x8x32_S32U4U4S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_8x8x32_S32U4U4S32_TN_SATURATE",
    .sm = 80,
    .m = 8, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 2 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k32.row.col.s32.u4.u4.s32.satfinite  {%0, %1}, {%2}, {%3}, {%4, %5};",
    .saturate = true,
};

pub const SM80_16x8x32_S32U4U4S32_TN = types.MmaInst {
    .name = "SM80_16x8x32_S32U4U4S32_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k32.row.col.s32.u4.u4.s32  {%0,  %1,  %2,  %3}, {%4,  %5}, {%6}, {%7,  %8,  %9,  %10};",
    .saturate = false,
};

pub const SM80_16x8x32_S32U4U4S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_16x8x32_S32U4U4S32_TN_SATURATE",
    .sm = 80,
    .m = 16, .n = 8, .k = 32,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k32.row.col.s32.u4.u4.s32.satfinite  {%0,  %1,  %2,  %3}, {%4,  %5}, {%6}, {%7,  %8,  %9,  %10};",
    .saturate = true,
};

pub const SM80_16x8x64_S32U4U4S32_TN = types.MmaInst {
    .name = "SM80_16x8x64_S32U4U4S32_TN",
    .sm = 80,
    .m = 16, .n = 8, .k = 64,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k64.row.col.s32.u4.u4.s32  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11, %12, %13};",
    .saturate = false,
};

pub const SM80_16x8x64_S32U4U4S32_TN_SATURATE = types.MmaInst {
    .name = "SM80_16x8x64_S32U4U4S32_TN_SATURATE",
    .sm = 80,
    .m = 16, .n = 8, .k = 64,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k64.row.col.s32.u4.u4.s32.satfinite  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11, %12, %13};",
    .saturate = true,
};

pub const SM80_8x8x128_S32U1U1S32_TN_ANDPOPC = types.MmaInst {
    .name = "SM80_8x8x128_S32U1U1S32_TN_ANDPOPC",
    .sm = 80,
    .m = 8, .n = 8, .k = 128,
    .d_regs = .{ .ty = u32, .count = 2 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k128.row.col.s32.b1.b1.s32.and.popc  {%0, %1}, {%2}, {%3}, {%4, %5};",
    .saturate = false,
};

pub const SM80_16x8x128_S32U1U1S32_TN_ANDPOPC = types.MmaInst {
    .name = "SM80_16x8x128_S32U1U1S32_TN_ANDPOPC",
    .sm = 80,
    .m = 16, .n = 8, .k = 128,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k128.row.col.s32.b1.b1.s32.and.popc  {%0,  %1,  %2,  %3}, {%4,  %5}, {%6}, {%7,  %8,  %9,  %10};",
    .saturate = false,
};

pub const SM80_16x8x256_S32U1U1S32_TN_ANDPOPC = types.MmaInst {
    .name = "SM80_16x8x256_S32U1U1S32_TN_ANDPOPC",
    .sm = 80,
    .m = 16, .n = 8, .k = 256,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k256.row.col.s32.b1.b1.s32.and.popc  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11, %12, %13};",
    .saturate = false,
};

pub const SM80_8x8x128_S32U1U1S32_TN_XORPOPC = types.MmaInst {
    .name = "SM80_8x8x128_S32U1U1S32_TN_XORPOPC",
    .sm = 80,
    .m = 8, .n = 8, .k = 128,
    .d_regs = .{ .ty = u32, .count = 2 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k128.row.col.s32.b1.b1.s32.xor.popc  {%0, %1}, {%2}, {%3}, {%4, %5};",
    .saturate = false,
};

pub const SM80_16x8x128_S32U1U1S32_TN_XORPOPC = types.MmaInst {
    .name = "SM80_16x8x128_S32U1U1S32_TN_XORPOPC",
    .sm = 80,
    .m = 16, .n = 8, .k = 128,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k128.row.col.s32.b1.b1.s32.xor.popc  {%0,  %1,  %2,  %3}, {%4,  %5}, {%6}, {%7,  %8,  %9,  %10};",
    .saturate = false,
};

pub const SM80_16x8x256_S32U1U1S32_TN_XORPOPC = types.MmaInst {
    .name = "SM80_16x8x256_S32U1U1S32_TN_XORPOPC",
    .sm = 80,
    .m = 16, .n = 8, .k = 256,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k256.row.col.s32.b1.b1.s32.xor.popc  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11, %12, %13};",
    .saturate = false,
};

