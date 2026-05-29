// AUTO-GENERATED CuTe-Zig Instruction Database
const types = @import("../types.zig");

pub const SM70_8x8x4_F16F16F16F16_TN = types.MmaInst {
    .name = "SM70_8x8x4_F16F16F16F16_TN",
    .sm = 70,
    .m = 8, .n = 8, .k = 4,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k4.row.col.f16.f16.f16.f16 {%0, %1,  %2,  %3}, {%4, %5}, {%6, %7}, {%8, %9, %10, %11};",
    .saturate = false,
};

pub const SM70_8x8x4_F16F16F16F16_NT = types.MmaInst {
    .name = "SM70_8x8x4_F16F16F16F16_NT",
    .sm = 70,
    .m = 8, .n = 8, .k = 4,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k4.col.row.f16.f16.f16.f16 {%0, %1,  %2,  %3}, {%4, %5}, {%6, %7}, {%8, %9, %10, %11};",
    .saturate = false,
};

pub const SM70_8x8x4_F16F16F16F16_NN = types.MmaInst {
    .name = "SM70_8x8x4_F16F16F16F16_NN",
    .sm = 70,
    .m = 8, .n = 8, .k = 4,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k4.col.col.f16.f16.f16.f16 {%0, %1,  %2,  %3}, {%4, %5}, {%6, %7}, {%8, %9, %10, %11};",
    .saturate = false,
};

pub const SM70_8x8x4_F16F16F16F16_TT = types.MmaInst {
    .name = "SM70_8x8x4_F16F16F16F16_TT",
    .sm = 70,
    .m = 8, .n = 8, .k = 4,
    .d_regs = .{ .ty = u32, .count = 4 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k4.row.row.f16.f16.f16.f16 {%0, %1,  %2,  %3}, {%4, %5}, {%6, %7}, {%8, %9, %10, %11};",
    .saturate = false,
};

pub const SM70_8x8x4_F32F16F16F32_TN = types.MmaInst {
    .name = "SM70_8x8x4_F32F16F16F32_TN",
    .sm = 70,
    .m = 8, .n = 8, .k = 4,
    .d_regs = .{ .ty = f32, .count = 8 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = f32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k4.row.col.f32.f16.f16.f32 {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11}, {%12, %13, %14, %15, %16, %17, %18, %19};",
    .saturate = false,
};

pub const SM70_8x8x4_F32F16F16F32_NT = types.MmaInst {
    .name = "SM70_8x8x4_F32F16F16F32_NT",
    .sm = 70,
    .m = 8, .n = 8, .k = 4,
    .d_regs = .{ .ty = f32, .count = 8 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = f32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k4.col.row.f32.f16.f16.f32 {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11}, {%12, %13, %14, %15, %16, %17, %18, %19};",
    .saturate = false,
};

pub const SM70_8x8x4_F32F16F16F32_NN = types.MmaInst {
    .name = "SM70_8x8x4_F32F16F16F32_NN",
    .sm = 70,
    .m = 8, .n = 8, .k = 4,
    .d_regs = .{ .ty = f32, .count = 8 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = f32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k4.col.col.f32.f16.f16.f32 {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11}, {%12, %13, %14, %15, %16, %17, %18, %19};",
    .saturate = false,
};

pub const SM70_8x8x4_F32F16F16F32_TT = types.MmaInst {
    .name = "SM70_8x8x4_F32F16F16F32_TT",
    .sm = 70,
    .m = 8, .n = 8, .k = 4,
    .d_regs = .{ .ty = f32, .count = 8 },
    .a_regs = .{ .ty = u32, .count = 2 },
    .b_regs = .{ .ty = u32, .count = 2 },
    .c_regs = .{ .ty = f32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "mma.sync.aligned.m8n8k4.row.row.f32.f16.f16.f32 {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11}, {%12, %13, %14, %15, %16, %17, %18, %19};",
    .saturate = false,
};

