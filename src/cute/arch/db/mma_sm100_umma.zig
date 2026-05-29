// AUTO-GENERATED CuTe-Zig Instruction Database
const types = @import("../types.zig");

pub const SM100_MMA_TF32_SS = types.MmaInst {
    .name = "SM100_MMA_TF32_SS",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_F16BF16_SS = types.MmaInst {
    .name = "SM100_MMA_F16BF16_SS",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_TF32_TS = types.MmaInst {
    .name = "SM100_MMA_TF32_TS",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_F16BF16_TS = types.MmaInst {
    .name = "SM100_MMA_F16BF16_TS",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_TF32_TS_INTERLEAVED_CF32CTF32CTF32CF32_TN = types.MmaInst {
    .name = "SM100_MMA_TF32_TS_INTERLEAVED_CF32CTF32CTF32CF32_TN",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_TF32_SS_SCALED = types.MmaInst {
    .name = "SM100_MMA_TF32_SS_SCALED",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_F16BF16_SS_SCALED = types.MmaInst {
    .name = "SM100_MMA_F16BF16_SS_SCALED",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_TF32_TS_SCALED = types.MmaInst {
    .name = "SM100_MMA_TF32_TS_SCALED",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_F16BF16_TS_SCALED = types.MmaInst {
    .name = "SM100_MMA_F16BF16_TS_SCALED",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_TF32_SS_SPARSE = types.MmaInst {
    .name = "SM100_MMA_TF32_SS_SPARSE",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_F16BF16_SS_SPARSE = types.MmaInst {
    .name = "SM100_MMA_F16BF16_SS_SPARSE",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_TF32_2x1SM_SS = types.MmaInst {
    .name = "SM100_MMA_TF32_2x1SM_SS",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_F16BF16_2x1SM_SS = types.MmaInst {
    .name = "SM100_MMA_F16BF16_2x1SM_SS",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_TF32_2x1SM_TS = types.MmaInst {
    .name = "SM100_MMA_TF32_2x1SM_TS",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_F16BF16_2x1SM_TS = types.MmaInst {
    .name = "SM100_MMA_F16BF16_2x1SM_TS",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_TF32_2x1SM_TS_INTERLEAVED_CF32CTF32CTF32CF32_TN = types.MmaInst {
    .name = "SM100_MMA_TF32_2x1SM_TS_INTERLEAVED_CF32CTF32CTF32CF32_TN",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_TF32_2x1SM_SS_SCALED = types.MmaInst {
    .name = "SM100_MMA_TF32_2x1SM_SS_SCALED",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_F16BF16_2x1SM_SS_SCALED = types.MmaInst {
    .name = "SM100_MMA_F16BF16_2x1SM_SS_SCALED",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_TF32_2x1SM_TS_SCALED = types.MmaInst {
    .name = "SM100_MMA_TF32_2x1SM_TS_SCALED",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_F16BF16_2x1SM_TS_SCALED = types.MmaInst {
    .name = "SM100_MMA_F16BF16_2x1SM_TS_SCALED",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_TF32_2x1SM_SS_SPARSE = types.MmaInst {
    .name = "SM100_MMA_TF32_2x1SM_SS_SPARSE",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_F16BF16_2x1SM_SS_SPARSE = types.MmaInst {
    .name = "SM100_MMA_F16BF16_2x1SM_SS_SPARSE",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_S8_SS = types.MmaInst {
    .name = "SM100_MMA_S8_SS",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_S8_TS = types.MmaInst {
    .name = "SM100_MMA_S8_TS",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_S8_SS_SPARSE = types.MmaInst {
    .name = "SM100_MMA_S8_SS_SPARSE",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_S8_2x1SM_SS = types.MmaInst {
    .name = "SM100_MMA_S8_2x1SM_SS",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_S8_2x1SM_TS = types.MmaInst {
    .name = "SM100_MMA_S8_2x1SM_TS",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_S8_2x1SM_SS_SPARSE = types.MmaInst {
    .name = "SM100_MMA_S8_2x1SM_SS_SPARSE",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_F8F6F4_SS = types.MmaInst {
    .name = "SM100_MMA_F8F6F4_SS",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_MXF8F6F4_SS = types.MmaInst {
    .name = "SM100_MMA_MXF8F6F4_SS",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_F8F6F4_TS = types.MmaInst {
    .name = "SM100_MMA_F8F6F4_TS",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_F8F6F4_2x1SM_TS = types.MmaInst {
    .name = "SM100_MMA_F8F6F4_2x1SM_TS",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_F8F6F4_SS_SPARSE = types.MmaInst {
    .name = "SM100_MMA_F8F6F4_SS_SPARSE",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_MXF8F6F4_SS_SPARSE = types.MmaInst {
    .name = "SM100_MMA_MXF8F6F4_SS_SPARSE",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_F8F6F4_2x1SM_SS = types.MmaInst {
    .name = "SM100_MMA_F8F6F4_2x1SM_SS",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_MXF8F6F4_2x1SM_SS_SPARSE = types.MmaInst {
    .name = "SM100_MMA_MXF8F6F4_2x1SM_SS_SPARSE",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_MXF8F6F4_2x1SM_SS = types.MmaInst {
    .name = "SM100_MMA_MXF8F6F4_2x1SM_SS",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_F8F6F4_2x1SM_SS_SPARSE = types.MmaInst {
    .name = "SM100_MMA_F8F6F4_2x1SM_SS_SPARSE",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_MXF4_SS = types.MmaInst {
    .name = "SM100_MMA_MXF4_SS",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_MXF4NVF4_SS_SPARSE = types.MmaInst {
    .name = "SM100_MMA_MXF4NVF4_SS_SPARSE",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_MXF4_2x1SM_SS = types.MmaInst {
    .name = "SM100_MMA_MXF4_2x1SM_SS",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM100_MMA_MXF4NVF4_2x1SM_SS_SPARSE = types.MmaInst {
    .name = "SM100_MMA_MXF4NVF4_2x1SM_SS_SPARSE",
    .sm = 100,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM103_MXF4_ULTRA_SS_VS = types.MmaInst {
    .name = "SM103_MXF4_ULTRA_SS_VS",
    .sm = 103,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

pub const SM103_MXF4_ULTRA_2x1SM_SS_VS = types.MmaInst {
    .name = "SM103_MXF4_ULTRA_2x1SM_SS_VS",
    .sm = 103,
    .m = 0, .n = 0, .k = 0,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 1 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{\t .reg .pred p;\t setp.ne.b32 p, %4, 0;\t",
    .saturate = false,
};

