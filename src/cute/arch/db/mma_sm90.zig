// AUTO-GENERATED CuTe-Zig Instruction Database
const types = @import("../types.zig");

pub const MMA_16x8x4_F64F64F64F64_TN = types.MmaInst{
    .name = "MMA_16x8x4_F64F64F64F64_TN",
    .sm = 90,
    .m = 16,
    .n = 8,
    .k = 4,
    .d_regs = .{ .ty = f64, .count = 4 },
    .a_regs = .{ .ty = f64, .count = 2 },
    .b_regs = .{ .ty = f64, .count = 1 },
    .c_regs = .{ .ty = f64, .count = 4 },
    .d_ty = .f64,
    .a_ty = .f64,
    .b_ty = .f64,
    .c_ty = .f64,
    .layout_a = .row,
    .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k4.row.col.f64.f64.f64.f64 {%0,  %1,  %2,  %3}, {%4,  %5}, {%6}, {%7,  %8,  %9,  %10};",
    .saturate = false,
};

pub const MMA_16x8x8_F64F64F64F64_TN = types.MmaInst{
    .name = "MMA_16x8x8_F64F64F64F64_TN",
    .sm = 90,
    .m = 16,
    .n = 8,
    .k = 8,
    .d_regs = .{ .ty = f64, .count = 4 },
    .a_regs = .{ .ty = f64, .count = 4 },
    .b_regs = .{ .ty = f64, .count = 2 },
    .c_regs = .{ .ty = f64, .count = 4 },
    .d_ty = .f64,
    .a_ty = .f64,
    .b_ty = .f64,
    .c_ty = .f64,
    .layout_a = .row,
    .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k8.row.col.f64.f64.f64.f64 {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7}, {%8,  %9}, {%10, %11, %12, %13};",
    .saturate = false,
};

pub const MMA_16x8x16_F64F64F64F64_TN = types.MmaInst{
    .name = "MMA_16x8x16_F64F64F64F64_TN",
    .sm = 90,
    .m = 16,
    .n = 8,
    .k = 16,
    .d_regs = .{ .ty = f64, .count = 4 },
    .a_regs = .{ .ty = f64, .count = 8 },
    .b_regs = .{ .ty = f64, .count = 4 },
    .c_regs = .{ .ty = f64, .count = 4 },
    .d_ty = .f64,
    .a_ty = .f64,
    .b_ty = .f64,
    .c_ty = .f64,
    .layout_a = .row,
    .layout_b = .col,
    .ptx = "mma.sync.aligned.m16n8k16.row.col.f64.f64.f64.f64 {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7,  %8,  %9,  %10, %11}, {%12, %13, %14, %15}, {%16, %17, %18, %19};",
    .saturate = false,
};

pub const support_status = .unsupported;
pub const unsupported_reason = "Not yet implemented";
