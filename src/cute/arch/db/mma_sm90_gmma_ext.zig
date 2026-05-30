// AUTO-GENERATED CuTe-Zig Instruction Database
const types = @import("../types.zig");

pub const MMA_64x24x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x24x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 24, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 6 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sync.aligned.m64n24k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5},  %6,  %7,  p,   %9,  %10, %11, %12; }",
    .saturate = false,
};

pub const MMA_64x24x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x24x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 24, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 6 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sync.aligned.m64n24k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5}, {%6,  %7,  %8,  %9},  %10,  p,   %12, %13, %14; }",
    .saturate = false,
};

pub const MMA_64x40x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x40x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 40, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 10 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sync.aligned.m64n40k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9},  %10,  %11,  p,   %13, %14, %15, %16; }",
    .saturate = false,
};

pub const MMA_64x40x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x40x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 40, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 10 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sync.aligned.m64n40k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9}, {%10, %11, %12, %13},  %14,  p,   %16, %17, %18; }",
    .saturate = false,
};

pub const MMA_64x48x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x48x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 48, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %14, 0; wgmma.mma_async.sync.aligned.m64n48k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11},  %12,  %13,  p,   %15, %16, %17, %18; }",
    .saturate = false,
};

pub const MMA_64x48x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x48x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 48, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %17, 0; wgmma.mma_async.sync.aligned.m64n48k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11}, {%12, %13, %14, %15},  %16,  p,   %18, %19, %20; }",
    .saturate = false,
};

pub const MMA_64x56x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x56x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 56, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 14 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %16, 0; wgmma.mma_async.sync.aligned.m64n56k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13},  %14,  %15,  p,   %17, %18, %19, %20; }",
    .saturate = false,
};

pub const MMA_64x56x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x56x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 56, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 14 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %19, 0; wgmma.mma_async.sync.aligned.m64n56k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13}, {%14, %15, %16, %17},  %18,  p,   %20, %21, %22; }",
    .saturate = false,
};

pub const MMA_64x72x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x72x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 72, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 18 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sync.aligned.m64n72k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17},  %18,  %19,  p,   %21, %22, %23, %24; }",
    .saturate = false,
};

pub const MMA_64x72x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x72x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 72, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 18 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sync.aligned.m64n72k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17}, {%18, %19, %20, %21},  %22,  p,   %24, %25, %26; }",
    .saturate = false,
};

pub const MMA_64x80x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x80x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 80, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 20 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %22, 0; wgmma.mma_async.sync.aligned.m64n80k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19},  %20,  %21,  p,   %23, %24, %25, %26; }",
    .saturate = false,
};

pub const MMA_64x80x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x80x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 80, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 20 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %25, 0; wgmma.mma_async.sync.aligned.m64n80k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19}, {%20, %21, %22, %23},  %24,  p,   %26, %27, %28; }",
    .saturate = false,
};

pub const MMA_64x88x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x88x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 88, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 22 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %24, 0; wgmma.mma_async.sync.aligned.m64n88k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21},  %22,  %23,  p,   %25, %26, %27, %28; }",
    .saturate = false,
};

pub const MMA_64x88x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x88x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 88, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 22 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %27, 0; wgmma.mma_async.sync.aligned.m64n88k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21}, {%22, %23, %24, %25},  %26,  p,   %28, %29, %30; }",
    .saturate = false,
};

pub const MMA_64x104x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x104x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 104, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 26 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %28, 0; wgmma.mma_async.sync.aligned.m64n104k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25},  %26,  %27,  p,   %29, %30, %31, %32; }",
    .saturate = false,
};

pub const MMA_64x104x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x104x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 104, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 26 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %31, 0; wgmma.mma_async.sync.aligned.m64n104k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25}, {%26, %27, %28, %29},  %30,  p,   %32, %33, %34; }",
    .saturate = false,
};

pub const MMA_64x112x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x112x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 112, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 28 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %30, 0; wgmma.mma_async.sync.aligned.m64n112k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27},  %28,  %29,  p,   %31, %32, %33, %34; }",
    .saturate = false,
};

pub const MMA_64x112x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x112x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 112, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 28 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %33, 0; wgmma.mma_async.sync.aligned.m64n112k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27}, {%28, %29, %30, %31},  %32,  p,   %34, %35, %36; }",
    .saturate = false,
};

pub const MMA_64x120x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x120x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 120, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 30 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %32, 0; wgmma.mma_async.sync.aligned.m64n120k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29},  %30,  %31,  p,   %33, %34, %35, %36; }",
    .saturate = false,
};

pub const MMA_64x120x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x120x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 120, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 30 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %35, 0; wgmma.mma_async.sync.aligned.m64n120k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29}, {%30, %31, %32, %33},  %34,  p,   %36, %37, %38; }",
    .saturate = false,
};

pub const MMA_64x136x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x136x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 136, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 34 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sync.aligned.m64n136k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33},  %34,  %35,  p,   %37, %38, %39, %40; }",
    .saturate = false,
};

pub const MMA_64x136x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x136x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 136, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 34 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sync.aligned.m64n136k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33}, {%34, %35, %36, %37},  %38,  p,   %40, %41, %42; }",
    .saturate = false,
};

pub const MMA_64x144x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x144x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 144, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 36 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %38, 0; wgmma.mma_async.sync.aligned.m64n144k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35},  %36,  %37,  p,   %39, %40, %41, %42; }",
    .saturate = false,
};

pub const MMA_64x144x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x144x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 144, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 36 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %41, 0; wgmma.mma_async.sync.aligned.m64n144k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35}, {%36, %37, %38, %39},  %40,  p,   %42, %43, %44; }",
    .saturate = false,
};

pub const MMA_64x152x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x152x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 152, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 38 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %40, 0; wgmma.mma_async.sync.aligned.m64n152k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37},  %38,  %39,  p,   %41, %42, %43, %44; }",
    .saturate = false,
};

pub const MMA_64x152x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x152x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 152, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 38 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %43, 0; wgmma.mma_async.sync.aligned.m64n152k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37}, {%38, %39, %40, %41},  %42,  p,   %44, %45, %46; }",
    .saturate = false,
};

pub const MMA_64x160x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x160x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 160, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %42, 0; wgmma.mma_async.sync.aligned.m64n160k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39},  %40,  %41,  p,   %43, %44, %45, %46; }",
    .saturate = false,
};

pub const MMA_64x160x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x160x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 160, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %45, 0; wgmma.mma_async.sync.aligned.m64n160k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39}, {%40, %41, %42, %43},  %44,  p,   %46, %47, %48; }",
    .saturate = false,
};

pub const MMA_64x168x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x168x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 168, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 42 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %44, 0; wgmma.mma_async.sync.aligned.m64n168k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41},  %42,  %43,  p,   %45, %46, %47, %48; }",
    .saturate = false,
};

pub const MMA_64x168x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x168x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 168, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 42 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %47, 0; wgmma.mma_async.sync.aligned.m64n168k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41}, {%42, %43, %44, %45},  %46,  p,   %48, %49, %50; }",
    .saturate = false,
};

pub const MMA_64x176x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x176x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 176, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 44 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %46, 0; wgmma.mma_async.sync.aligned.m64n176k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43},  %44,  %45,  p,   %47, %48, %49, %50; }",
    .saturate = false,
};

pub const MMA_64x176x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x176x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 176, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 44 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %49, 0; wgmma.mma_async.sync.aligned.m64n176k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43}, {%44, %45, %46, %47},  %48,  p,   %50, %51, %52; }",
    .saturate = false,
};

pub const MMA_64x184x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x184x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 184, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 46 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %48, 0; wgmma.mma_async.sync.aligned.m64n184k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45},  %46,  %47,  p,   %49, %50, %51, %52; }",
    .saturate = false,
};

pub const MMA_64x184x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x184x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 184, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 46 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %51, 0; wgmma.mma_async.sync.aligned.m64n184k16.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45}, {%46, %47, %48, %49},  %50,  p,   %52, %53, %54; }",
    .saturate = false,
};

pub const MMA_64x200x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x200x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 200, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 50 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sync.aligned.m64n200k16.f16.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49},  %50,  %51,  p,    %53,  %54,  %55,  %56; }",
    .saturate = false,
};

pub const MMA_64x200x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x200x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 200, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 50 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sync.aligned.m64n200k16.f16.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49}, {%50,  %51,  %52,  %53},  %54,  p,    %56,  %57,  %58; }",
    .saturate = false,
};

pub const MMA_64x208x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x208x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 208, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 52 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %54, 0; wgmma.mma_async.sync.aligned.m64n208k16.f16.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51},  %52,  %53,  p,    %55,  %56,  %57,  %58; }",
    .saturate = false,
};

pub const MMA_64x208x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x208x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 208, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 52 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %57, 0; wgmma.mma_async.sync.aligned.m64n208k16.f16.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51}, {%52,  %53,  %54,  %55},  %56,  p,    %58,  %59,  %60; }",
    .saturate = false,
};

pub const MMA_64x216x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x216x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 216, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 54 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %56, 0; wgmma.mma_async.sync.aligned.m64n216k16.f16.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53},  %54,  %55,  p,    %57,  %58,  %59,  %60; }",
    .saturate = false,
};

pub const MMA_64x216x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x216x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 216, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 54 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %59, 0; wgmma.mma_async.sync.aligned.m64n216k16.f16.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53}, {%54,  %55,  %56,  %57},  %58,  p,    %60,  %61,  %62; }",
    .saturate = false,
};

pub const MMA_64x224x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x224x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 224, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %58, 0; wgmma.mma_async.sync.aligned.m64n224k16.f16.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55},  %56,  %57,  p,    %59,  %60,  %61,  %62; }",
    .saturate = false,
};

pub const MMA_64x224x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x224x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 224, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %61, 0; wgmma.mma_async.sync.aligned.m64n224k16.f16.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55}, {%56,  %57,  %58,  %59},  %60,  p,    %62,  %63,  %64; }",
    .saturate = false,
};

pub const MMA_64x232x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x232x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 232, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 58 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %60, 0; wgmma.mma_async.sync.aligned.m64n232k16.f16.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57},  %58,  %59,  p,    %61,  %62,  %63,  %64; }",
    .saturate = false,
};

pub const MMA_64x232x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x232x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 232, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 58 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %63, 0; wgmma.mma_async.sync.aligned.m64n232k16.f16.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57}, {%58,  %59,  %60,  %61},  %62,  p,    %64,  %65,  %66; }",
    .saturate = false,
};

pub const MMA_64x240x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x240x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 240, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 60 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %62, 0; wgmma.mma_async.sync.aligned.m64n240k16.f16.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59},  %60,  %61,  p,    %63,  %64,  %65,  %66; }",
    .saturate = false,
};

pub const MMA_64x240x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x240x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 240, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 60 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %65, 0; wgmma.mma_async.sync.aligned.m64n240k16.f16.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59}, {%60,  %61,  %62,  %63},  %64,  p,    %66,  %67,  %68; }",
    .saturate = false,
};

pub const MMA_64x248x16_F16F16F16_SS = types.MmaInst {
    .name = "MMA_64x248x16_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 248, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 62 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %64, 0; wgmma.mma_async.sync.aligned.m64n248k16.f16.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61},  %62,  %63,  p,    %65,  %66,  %67,  %68; }",
    .saturate = false,
};

pub const MMA_64x248x16_F16F16F16_RS = types.MmaInst {
    .name = "MMA_64x248x16_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 248, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 62 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %67, 0; wgmma.mma_async.sync.aligned.m64n248k16.f16.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61}, {%62,  %63,  %64,  %65},  %66,  p,    %68,  %69,  %70; }",
    .saturate = false,
};

pub const MMA_64x24x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x24x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 24, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %14, 0; wgmma.mma_async.sync.aligned.m64n24k16.f32.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11},  %12,  %13,  p,   %15, %16, %17, %18; }",
    .saturate = false,
};

pub const MMA_64x24x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x24x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 24, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %17, 0; wgmma.mma_async.sync.aligned.m64n24k16.f32.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11}, {%12, %13, %14, %15},  %16,  p,   %18, %19, %20; }",
    .saturate = false,
};

pub const MMA_64x40x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x40x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 40, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 20 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %22, 0; wgmma.mma_async.sync.aligned.m64n40k16.f32.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19},  %20,  %21,  p,   %23, %24, %25, %26; }",
    .saturate = false,
};

pub const MMA_64x40x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x40x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 40, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 20 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %25, 0; wgmma.mma_async.sync.aligned.m64n40k16.f32.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19}, {%20, %21, %22, %23},  %24,  p,   %26, %27, %28; }",
    .saturate = false,
};

pub const MMA_64x48x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x48x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 48, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %26, 0; wgmma.mma_async.sync.aligned.m64n48k16.f32.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23},  %24,  %25,  p,   %27, %28, %29, %30; }",
    .saturate = false,
};

pub const MMA_64x48x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x48x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 48, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %29, 0; wgmma.mma_async.sync.aligned.m64n48k16.f32.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23}, {%24, %25, %26, %27},  %28,  p,   %30, %31, %32; }",
    .saturate = false,
};

pub const MMA_64x56x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x56x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 56, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 28 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %30, 0; wgmma.mma_async.sync.aligned.m64n56k16.f32.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27},  %28,  %29,  p,   %31, %32, %33, %34; }",
    .saturate = false,
};

pub const MMA_64x56x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x56x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 56, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 28 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %33, 0; wgmma.mma_async.sync.aligned.m64n56k16.f32.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27}, {%28, %29, %30, %31},  %32,  p,   %34, %35, %36; }",
    .saturate = false,
};

pub const MMA_64x72x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x72x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 72, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 36 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %38, 0; wgmma.mma_async.sync.aligned.m64n72k16.f32.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35},  %36,  %37,  p,   %39, %40, %41, %42; }",
    .saturate = false,
};

pub const MMA_64x72x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x72x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 72, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 36 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %41, 0; wgmma.mma_async.sync.aligned.m64n72k16.f32.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35}, {%36, %37, %38, %39},  %40,  p,   %42, %43, %44; }",
    .saturate = false,
};

pub const MMA_64x80x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x80x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 80, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %42, 0; wgmma.mma_async.sync.aligned.m64n80k16.f32.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39},  %40,  %41,  p,   %43, %44, %45, %46; }",
    .saturate = false,
};

pub const MMA_64x80x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x80x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 80, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %45, 0; wgmma.mma_async.sync.aligned.m64n80k16.f32.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39}, {%40, %41, %42, %43},  %44,  p,   %46, %47, %48; }",
    .saturate = false,
};

pub const MMA_64x88x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x88x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 88, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 44 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %46, 0; wgmma.mma_async.sync.aligned.m64n88k16.f32.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43},  %44,  %45,  p,   %47, %48, %49, %50; }",
    .saturate = false,
};

pub const MMA_64x88x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x88x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 88, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 44 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %49, 0; wgmma.mma_async.sync.aligned.m64n88k16.f32.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43}, {%44, %45, %46, %47},  %48,  p,   %50, %51, %52; }",
    .saturate = false,
};

pub const MMA_64x104x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x104x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 104, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 52 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %54, 0; wgmma.mma_async.sync.aligned.m64n104k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51},  %52,  %53,  p,    %55,  %56,  %57,  %58; }",
    .saturate = false,
};

pub const MMA_64x104x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x104x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 104, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 52 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %57, 0; wgmma.mma_async.sync.aligned.m64n104k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51}, {%52,  %53,  %54,  %55},  %56,  p,    %58,  %59,  %60; }",
    .saturate = false,
};

pub const MMA_64x112x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x112x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 112, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %58, 0; wgmma.mma_async.sync.aligned.m64n112k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55},  %56,  %57,  p,    %59,  %60,  %61,  %62; }",
    .saturate = false,
};

pub const MMA_64x112x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x112x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 112, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %61, 0; wgmma.mma_async.sync.aligned.m64n112k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55}, {%56,  %57,  %58,  %59},  %60,  p,    %62,  %63,  %64; }",
    .saturate = false,
};

pub const MMA_64x120x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x120x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 120, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 60 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %62, 0; wgmma.mma_async.sync.aligned.m64n120k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59},  %60,  %61,  p,    %63,  %64,  %65,  %66; }",
    .saturate = false,
};

pub const MMA_64x120x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x120x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 120, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 60 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %65, 0; wgmma.mma_async.sync.aligned.m64n120k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59}, {%60,  %61,  %62,  %63},  %64,  p,    %66,  %67,  %68; }",
    .saturate = false,
};

pub const MMA_64x136x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x136x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 136, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 68 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %70, 0; wgmma.mma_async.sync.aligned.m64n136k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67},  %68,  %69,  p,    %71,  %72,  %73,  %74; }",
    .saturate = false,
};

pub const MMA_64x136x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x136x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 136, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 68 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %73, 0; wgmma.mma_async.sync.aligned.m64n136k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67}, {%68,  %69,  %70,  %71},  %72,  p,    %74,  %75,  %76; }",
    .saturate = false,
};

pub const MMA_64x144x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x144x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 144, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %74, 0; wgmma.mma_async.sync.aligned.m64n144k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71},  %72,  %73,  p,    %75,  %76,  %77,  %78; }",
    .saturate = false,
};

pub const MMA_64x144x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x144x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 144, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %77, 0; wgmma.mma_async.sync.aligned.m64n144k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71}, {%72,  %73,  %74,  %75},  %76,  p,    %78,  %79,  %80; }",
    .saturate = false,
};

pub const MMA_64x152x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x152x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 152, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 76 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %78, 0; wgmma.mma_async.sync.aligned.m64n152k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75},  %76,  %77,  p,    %79,  %80,  %81,  %82; }",
    .saturate = false,
};

pub const MMA_64x152x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x152x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 152, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 76 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %81, 0; wgmma.mma_async.sync.aligned.m64n152k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75}, {%76,  %77,  %78,  %79},  %80,  p,    %82,  %83,  %84; }",
    .saturate = false,
};

pub const MMA_64x160x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x160x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 160, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %82, 0; wgmma.mma_async.sync.aligned.m64n160k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79},  %80,  %81,  p,    %83,  %84,  %85,  %86; }",
    .saturate = false,
};

pub const MMA_64x160x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x160x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 160, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %85, 0; wgmma.mma_async.sync.aligned.m64n160k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79}, {%80,  %81,  %82,  %83},  %84,  p,    %86,  %87,  %88; }",
    .saturate = false,
};

pub const MMA_64x168x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x168x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 168, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 84 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %86, 0; wgmma.mma_async.sync.aligned.m64n168k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83},  %84,  %85,  p,    %87,  %88,  %89,  %90; }",
    .saturate = false,
};

pub const MMA_64x168x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x168x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 168, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 84 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %89, 0; wgmma.mma_async.sync.aligned.m64n168k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83}, {%84,  %85,  %86,  %87},  %88,  p,    %90,  %91,  %92; }",
    .saturate = false,
};

pub const MMA_64x176x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x176x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 176, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %90, 0; wgmma.mma_async.sync.aligned.m64n176k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87},  %88,  %89,  p,    %91,  %92,  %93,  %94; }",
    .saturate = false,
};

pub const MMA_64x176x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x176x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 176, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %93, 0; wgmma.mma_async.sync.aligned.m64n176k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87}, {%88,  %89,  %90,  %91},  %92,  p,    %94,  %95,  %96; }",
    .saturate = false,
};

pub const MMA_64x184x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x184x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 184, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 92 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %94, 0; wgmma.mma_async.sync.aligned.m64n184k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91},  %92,  %93,  p,    %95,  %96,  %97,  %98; }",
    .saturate = false,
};

pub const MMA_64x184x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x184x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 184, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 92 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %97, 0; wgmma.mma_async.sync.aligned.m64n184k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91}, {%92,  %93,  %94,  %95},  %96,  p,    %98,  %99,  %100; }",
    .saturate = false,
};

pub const MMA_64x200x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x200x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 200, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 100 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %102, 0; wgmma.mma_async.sync.aligned.m64n200k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99},  %100,  %101,  p,    %103, %104, %105, %106; }",
    .saturate = false,
};

pub const MMA_64x200x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x200x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 200, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 100 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %105, 0; wgmma.mma_async.sync.aligned.m64n200k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99}, {%100, %101, %102, %103},  %104,  p,    %106, %107, %108; }",
    .saturate = false,
};

pub const MMA_64x208x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x208x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 208, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %106, 0; wgmma.mma_async.sync.aligned.m64n208k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103},  %104,  %105,  p,    %107, %108, %109, %110; }",
    .saturate = false,
};

pub const MMA_64x208x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x208x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 208, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %109, 0; wgmma.mma_async.sync.aligned.m64n208k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103}, {%104, %105, %106, %107},  %108,  p,    %110, %111, %112; }",
    .saturate = false,
};

pub const MMA_64x216x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x216x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 216, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 108 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %110, 0; wgmma.mma_async.sync.aligned.m64n216k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107},  %108,  %109,  p,    %111, %112, %113, %114; }",
    .saturate = false,
};

pub const MMA_64x216x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x216x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 216, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 108 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %113, 0; wgmma.mma_async.sync.aligned.m64n216k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107}, {%108, %109, %110, %111},  %112,  p,    %114, %115, %116; }",
    .saturate = false,
};

pub const MMA_64x224x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x224x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 224, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %114, 0; wgmma.mma_async.sync.aligned.m64n224k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111},  %112,  %113,  p,    %115, %116, %117, %118; }",
    .saturate = false,
};

pub const MMA_64x224x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x224x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 224, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %117, 0; wgmma.mma_async.sync.aligned.m64n224k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111}, {%112, %113, %114, %115},  %116,  p,    %118, %119, %120; }",
    .saturate = false,
};

pub const MMA_64x232x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x232x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 232, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 116 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %118, 0; wgmma.mma_async.sync.aligned.m64n232k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115},  %116,  %117,  p,    %119, %120, %121, %122; }",
    .saturate = false,
};

pub const MMA_64x232x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x232x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 232, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 116 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %121, 0; wgmma.mma_async.sync.aligned.m64n232k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115}, {%116, %117, %118, %119},  %120,  p,    %122, %123, %124; }",
    .saturate = false,
};

pub const MMA_64x240x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x240x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 240, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %122, 0; wgmma.mma_async.sync.aligned.m64n240k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119},  %120,  %121,  p,    %123, %124, %125, %126; }",
    .saturate = false,
};

pub const MMA_64x240x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x240x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 240, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %125, 0; wgmma.mma_async.sync.aligned.m64n240k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119}, {%120, %121, %122, %123},  %124,  p,    %126, %127, %128; }",
    .saturate = false,
};

pub const MMA_64x248x16_F32F16F16_SS = types.MmaInst {
    .name = "MMA_64x248x16_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 248, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 124 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %126, 0; wgmma.mma_async.sync.aligned.m64n248k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123},  %124,  %125,  p,    %127, %128, %129, %130; }",
    .saturate = false,
};

pub const MMA_64x248x16_F32F16F16_RS = types.MmaInst {
    .name = "MMA_64x248x16_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 248, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 124 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %129, 0; wgmma.mma_async.sync.aligned.m64n248k16.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123}, {%124, %125, %126, %127},  %128,  p,    %130, %131, %132; }",
    .saturate = false,
};

pub const MMA_64x24x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x24x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 24, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 12 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %14, 0; wgmma.mma_async.sync.aligned.m64n24k16.f32.bf16.bf16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11},  %12,  %13,  p,   %15, %16, %17, %18; }",
    .saturate = false,
};

pub const MMA_64x24x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x24x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 24, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 12 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %17, 0; wgmma.mma_async.sync.aligned.m64n24k16.f32.bf16.bf16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11}, {%12, %13, %14, %15},  %16,  p,   %18, %19, %20; }",
    .saturate = false,
};

pub const MMA_64x40x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x40x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 40, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 20 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %22, 0; wgmma.mma_async.sync.aligned.m64n40k16.f32.bf16.bf16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19},  %20,  %21,  p,   %23, %24, %25, %26; }",
    .saturate = false,
};

pub const MMA_64x40x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x40x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 40, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 20 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %25, 0; wgmma.mma_async.sync.aligned.m64n40k16.f32.bf16.bf16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19}, {%20, %21, %22, %23},  %24,  p,   %26, %27, %28; }",
    .saturate = false,
};

pub const MMA_64x48x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x48x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 48, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 24 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %26, 0; wgmma.mma_async.sync.aligned.m64n48k16.f32.bf16.bf16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23},  %24,  %25,  p,   %27, %28, %29, %30; }",
    .saturate = false,
};

pub const MMA_64x48x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x48x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 48, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 24 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %29, 0; wgmma.mma_async.sync.aligned.m64n48k16.f32.bf16.bf16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23}, {%24, %25, %26, %27},  %28,  p,   %30, %31, %32; }",
    .saturate = false,
};

pub const MMA_64x56x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x56x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 56, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 28 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %30, 0; wgmma.mma_async.sync.aligned.m64n56k16.f32.bf16.bf16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27},  %28,  %29,  p,   %31, %32, %33, %34; }",
    .saturate = false,
};

pub const MMA_64x56x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x56x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 56, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 28 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %33, 0; wgmma.mma_async.sync.aligned.m64n56k16.f32.bf16.bf16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27}, {%28, %29, %30, %31},  %32,  p,   %34, %35, %36; }",
    .saturate = false,
};

pub const MMA_64x72x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x72x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 72, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 36 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %38, 0; wgmma.mma_async.sync.aligned.m64n72k16.f32.bf16.bf16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35},  %36,  %37,  p,   %39, %40, %41, %42; }",
    .saturate = false,
};

pub const MMA_64x72x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x72x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 72, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 36 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %41, 0; wgmma.mma_async.sync.aligned.m64n72k16.f32.bf16.bf16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35}, {%36, %37, %38, %39},  %40,  p,   %42, %43, %44; }",
    .saturate = false,
};

pub const MMA_64x80x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x80x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 80, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 40 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %42, 0; wgmma.mma_async.sync.aligned.m64n80k16.f32.bf16.bf16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39},  %40,  %41,  p,   %43, %44, %45, %46; }",
    .saturate = false,
};

pub const MMA_64x80x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x80x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 80, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 40 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %45, 0; wgmma.mma_async.sync.aligned.m64n80k16.f32.bf16.bf16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39}, {%40, %41, %42, %43},  %44,  p,   %46, %47, %48; }",
    .saturate = false,
};

pub const MMA_64x88x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x88x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 88, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 44 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %46, 0; wgmma.mma_async.sync.aligned.m64n88k16.f32.bf16.bf16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43},  %44,  %45,  p,   %47, %48, %49, %50; }",
    .saturate = false,
};

pub const MMA_64x88x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x88x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 88, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 44 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %49, 0; wgmma.mma_async.sync.aligned.m64n88k16.f32.bf16.bf16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43}, {%44, %45, %46, %47},  %48,  p,   %50, %51, %52; }",
    .saturate = false,
};

pub const MMA_64x104x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x104x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 104, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 52 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %54, 0; wgmma.mma_async.sync.aligned.m64n104k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51},  %52,  %53,  p,    %55,  %56,  %57,  %58; }",
    .saturate = false,
};

pub const MMA_64x104x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x104x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 104, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 52 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %57, 0; wgmma.mma_async.sync.aligned.m64n104k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51}, {%52,  %53,  %54,  %55},  %56,  p,    %58,  %59,  %60; }",
    .saturate = false,
};

pub const MMA_64x112x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x112x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 112, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 56 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %58, 0; wgmma.mma_async.sync.aligned.m64n112k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55},  %56,  %57,  p,    %59,  %60,  %61,  %62; }",
    .saturate = false,
};

pub const MMA_64x112x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x112x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 112, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 56 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %61, 0; wgmma.mma_async.sync.aligned.m64n112k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55}, {%56,  %57,  %58,  %59},  %60,  p,    %62,  %63,  %64; }",
    .saturate = false,
};

pub const MMA_64x120x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x120x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 120, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 60 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %62, 0; wgmma.mma_async.sync.aligned.m64n120k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59},  %60,  %61,  p,    %63,  %64,  %65,  %66; }",
    .saturate = false,
};

pub const MMA_64x120x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x120x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 120, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 60 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %65, 0; wgmma.mma_async.sync.aligned.m64n120k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59}, {%60,  %61,  %62,  %63},  %64,  p,    %66,  %67,  %68; }",
    .saturate = false,
};

pub const MMA_64x136x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x136x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 136, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 68 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %70, 0; wgmma.mma_async.sync.aligned.m64n136k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67},  %68,  %69,  p,    %71,  %72,  %73,  %74; }",
    .saturate = false,
};

pub const MMA_64x136x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x136x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 136, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 68 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %73, 0; wgmma.mma_async.sync.aligned.m64n136k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67}, {%68,  %69,  %70,  %71},  %72,  p,    %74,  %75,  %76; }",
    .saturate = false,
};

pub const MMA_64x144x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x144x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 144, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 72 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %74, 0; wgmma.mma_async.sync.aligned.m64n144k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71},  %72,  %73,  p,    %75,  %76,  %77,  %78; }",
    .saturate = false,
};

pub const MMA_64x144x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x144x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 144, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 72 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %77, 0; wgmma.mma_async.sync.aligned.m64n144k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71}, {%72,  %73,  %74,  %75},  %76,  p,    %78,  %79,  %80; }",
    .saturate = false,
};

pub const MMA_64x152x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x152x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 152, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 76 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %78, 0; wgmma.mma_async.sync.aligned.m64n152k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75},  %76,  %77,  p,    %79,  %80,  %81,  %82; }",
    .saturate = false,
};

pub const MMA_64x152x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x152x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 152, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 76 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %81, 0; wgmma.mma_async.sync.aligned.m64n152k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75}, {%76,  %77,  %78,  %79},  %80,  p,    %82,  %83,  %84; }",
    .saturate = false,
};

pub const MMA_64x160x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x160x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 160, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 80 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %82, 0; wgmma.mma_async.sync.aligned.m64n160k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79},  %80,  %81,  p,    %83,  %84,  %85,  %86; }",
    .saturate = false,
};

pub const MMA_64x160x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x160x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 160, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 80 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %85, 0; wgmma.mma_async.sync.aligned.m64n160k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79}, {%80,  %81,  %82,  %83},  %84,  p,    %86,  %87,  %88; }",
    .saturate = false,
};

pub const MMA_64x168x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x168x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 168, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 84 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %86, 0; wgmma.mma_async.sync.aligned.m64n168k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83},  %84,  %85,  p,    %87,  %88,  %89,  %90; }",
    .saturate = false,
};

pub const MMA_64x168x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x168x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 168, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 84 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %89, 0; wgmma.mma_async.sync.aligned.m64n168k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83}, {%84,  %85,  %86,  %87},  %88,  p,    %90,  %91,  %92; }",
    .saturate = false,
};

pub const MMA_64x176x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x176x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 176, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 88 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %90, 0; wgmma.mma_async.sync.aligned.m64n176k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87},  %88,  %89,  p,    %91,  %92,  %93,  %94; }",
    .saturate = false,
};

pub const MMA_64x176x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x176x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 176, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 88 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %93, 0; wgmma.mma_async.sync.aligned.m64n176k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87}, {%88,  %89,  %90,  %91},  %92,  p,    %94,  %95,  %96; }",
    .saturate = false,
};

pub const MMA_64x184x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x184x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 184, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 92 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %94, 0; wgmma.mma_async.sync.aligned.m64n184k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91},  %92,  %93,  p,    %95,  %96,  %97,  %98; }",
    .saturate = false,
};

pub const MMA_64x184x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x184x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 184, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 92 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %97, 0; wgmma.mma_async.sync.aligned.m64n184k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91}, {%92,  %93,  %94,  %95},  %96,  p,    %98,  %99,  %100; }",
    .saturate = false,
};

pub const MMA_64x200x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x200x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 200, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 100 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %102, 0; wgmma.mma_async.sync.aligned.m64n200k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99},  %100,  %101,  p,    %103, %104, %105, %106; }",
    .saturate = false,
};

pub const MMA_64x200x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x200x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 200, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 100 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %105, 0; wgmma.mma_async.sync.aligned.m64n200k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99}, {%100, %101, %102, %103},  %104,  p,    %106, %107, %108; }",
    .saturate = false,
};

pub const MMA_64x208x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x208x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 208, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 104 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %106, 0; wgmma.mma_async.sync.aligned.m64n208k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103},  %104,  %105,  p,    %107, %108, %109, %110; }",
    .saturate = false,
};

pub const MMA_64x208x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x208x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 208, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 104 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %109, 0; wgmma.mma_async.sync.aligned.m64n208k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103}, {%104, %105, %106, %107},  %108,  p,    %110, %111, %112; }",
    .saturate = false,
};

pub const MMA_64x216x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x216x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 216, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 108 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %110, 0; wgmma.mma_async.sync.aligned.m64n216k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107},  %108,  %109,  p,    %111, %112, %113, %114; }",
    .saturate = false,
};

pub const MMA_64x216x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x216x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 216, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 108 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %113, 0; wgmma.mma_async.sync.aligned.m64n216k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107}, {%108, %109, %110, %111},  %112,  p,    %114, %115, %116; }",
    .saturate = false,
};

pub const MMA_64x224x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x224x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 224, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 112 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %114, 0; wgmma.mma_async.sync.aligned.m64n224k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111},  %112,  %113,  p,    %115, %116, %117, %118; }",
    .saturate = false,
};

pub const MMA_64x224x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x224x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 224, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 112 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %117, 0; wgmma.mma_async.sync.aligned.m64n224k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111}, {%112, %113, %114, %115},  %116,  p,    %118, %119, %120; }",
    .saturate = false,
};

pub const MMA_64x232x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x232x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 232, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 116 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %118, 0; wgmma.mma_async.sync.aligned.m64n232k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115},  %116,  %117,  p,    %119, %120, %121, %122; }",
    .saturate = false,
};

pub const MMA_64x232x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x232x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 232, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 116 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %121, 0; wgmma.mma_async.sync.aligned.m64n232k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115}, {%116, %117, %118, %119},  %120,  p,    %122, %123, %124; }",
    .saturate = false,
};

pub const MMA_64x240x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x240x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 240, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 120 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %122, 0; wgmma.mma_async.sync.aligned.m64n240k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119},  %120,  %121,  p,    %123, %124, %125, %126; }",
    .saturate = false,
};

pub const MMA_64x240x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x240x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 240, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 120 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %125, 0; wgmma.mma_async.sync.aligned.m64n240k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119}, {%120, %121, %122, %123},  %124,  p,    %126, %127, %128; }",
    .saturate = false,
};

pub const MMA_64x248x16_F32BF16BF16_SS = types.MmaInst {
    .name = "MMA_64x248x16_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 248, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 124 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %126, 0; wgmma.mma_async.sync.aligned.m64n248k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123},  %124,  %125,  p,    %127, %128, %129, %130; }",
    .saturate = false,
};

pub const MMA_64x248x16_F32BF16BF16_RS = types.MmaInst {
    .name = "MMA_64x248x16_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 248, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 124 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %129, 0; wgmma.mma_async.sync.aligned.m64n248k16.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123}, {%124, %125, %126, %127},  %128,  p,    %130, %131, %132; }",
    .saturate = false,
};

pub const MMA_64x24x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x24x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 12 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %14, 0; wgmma.mma_async.sync.aligned.m64n24k8.f32.tf32.tf32  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11},  %12,  %13,  p,   %15, %16; }",
    .saturate = false,
};

pub const MMA_64x24x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x24x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 12 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %17, 0; wgmma.mma_async.sync.aligned.m64n24k8.f32.tf32.tf32  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11}, {%12, %13, %14, %15},  %16,  p,   %18, %19; }",
    .saturate = false,
};

pub const MMA_64x40x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x40x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 40, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 20 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %22, 0; wgmma.mma_async.sync.aligned.m64n40k8.f32.tf32.tf32  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19},  %20,  %21,  p,   %23, %24; }",
    .saturate = false,
};

pub const MMA_64x40x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x40x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 40, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 20 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %25, 0; wgmma.mma_async.sync.aligned.m64n40k8.f32.tf32.tf32  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19}, {%20, %21, %22, %23},  %24,  p,   %26, %27; }",
    .saturate = false,
};

pub const MMA_64x48x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x48x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 24 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %26, 0; wgmma.mma_async.sync.aligned.m64n48k8.f32.tf32.tf32  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23},  %24,  %25,  p,   %27, %28; }",
    .saturate = false,
};

pub const MMA_64x48x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x48x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 24 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %29, 0; wgmma.mma_async.sync.aligned.m64n48k8.f32.tf32.tf32  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23}, {%24, %25, %26, %27},  %28,  p,   %30, %31; }",
    .saturate = false,
};

pub const MMA_64x56x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x56x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 56, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 28 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %30, 0; wgmma.mma_async.sync.aligned.m64n56k8.f32.tf32.tf32  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27},  %28,  %29,  p,   %31, %32; }",
    .saturate = false,
};

pub const MMA_64x56x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x56x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 56, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 28 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %33, 0; wgmma.mma_async.sync.aligned.m64n56k8.f32.tf32.tf32  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27}, {%28, %29, %30, %31},  %32,  p,   %34, %35; }",
    .saturate = false,
};

pub const MMA_64x72x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x72x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 72, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 36 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %38, 0; wgmma.mma_async.sync.aligned.m64n72k8.f32.tf32.tf32  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35},  %36,  %37,  p,   %39, %40; }",
    .saturate = false,
};

pub const MMA_64x72x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x72x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 72, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 36 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %41, 0; wgmma.mma_async.sync.aligned.m64n72k8.f32.tf32.tf32  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35}, {%36, %37, %38, %39},  %40,  p,   %42, %43; }",
    .saturate = false,
};

pub const MMA_64x80x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x80x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 40 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %42, 0; wgmma.mma_async.sync.aligned.m64n80k8.f32.tf32.tf32  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39},  %40,  %41,  p,   %43, %44; }",
    .saturate = false,
};

pub const MMA_64x80x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x80x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 40 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %45, 0; wgmma.mma_async.sync.aligned.m64n80k8.f32.tf32.tf32  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39}, {%40, %41, %42, %43},  %44,  p,   %46, %47; }",
    .saturate = false,
};

pub const MMA_64x88x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x88x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 88, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 44 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %46, 0; wgmma.mma_async.sync.aligned.m64n88k8.f32.tf32.tf32  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43},  %44,  %45,  p,   %47, %48; }",
    .saturate = false,
};

pub const MMA_64x88x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x88x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 88, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 44 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %49, 0; wgmma.mma_async.sync.aligned.m64n88k8.f32.tf32.tf32  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43}, {%44, %45, %46, %47},  %48,  p,   %50, %51; }",
    .saturate = false,
};

pub const MMA_64x104x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x104x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 104, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 52 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %54, 0; wgmma.mma_async.sync.aligned.m64n104k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51},  %52,  %53,  p,    %55,  %56; }",
    .saturate = false,
};

pub const MMA_64x104x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x104x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 104, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 52 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %57, 0; wgmma.mma_async.sync.aligned.m64n104k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51}, {%52,  %53,  %54,  %55},  %56,  p,    %58,  %59; }",
    .saturate = false,
};

pub const MMA_64x112x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x112x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 56 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %58, 0; wgmma.mma_async.sync.aligned.m64n112k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55},  %56,  %57,  p,    %59,  %60; }",
    .saturate = false,
};

pub const MMA_64x112x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x112x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 56 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %61, 0; wgmma.mma_async.sync.aligned.m64n112k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55}, {%56,  %57,  %58,  %59},  %60,  p,    %62,  %63; }",
    .saturate = false,
};

pub const MMA_64x120x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x120x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 120, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 60 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %62, 0; wgmma.mma_async.sync.aligned.m64n120k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59},  %60,  %61,  p,    %63,  %64; }",
    .saturate = false,
};

pub const MMA_64x120x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x120x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 120, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 60 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %65, 0; wgmma.mma_async.sync.aligned.m64n120k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59}, {%60,  %61,  %62,  %63},  %64,  p,    %66,  %67; }",
    .saturate = false,
};

pub const MMA_64x136x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x136x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 136, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 68 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %70, 0; wgmma.mma_async.sync.aligned.m64n136k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67},  %68,  %69,  p,    %71,  %72; }",
    .saturate = false,
};

pub const MMA_64x136x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x136x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 136, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 68 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %73, 0; wgmma.mma_async.sync.aligned.m64n136k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67}, {%68,  %69,  %70,  %71},  %72,  p,    %74,  %75; }",
    .saturate = false,
};

pub const MMA_64x144x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x144x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 72 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %74, 0; wgmma.mma_async.sync.aligned.m64n144k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71},  %72,  %73,  p,    %75,  %76; }",
    .saturate = false,
};

pub const MMA_64x144x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x144x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 72 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %77, 0; wgmma.mma_async.sync.aligned.m64n144k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71}, {%72,  %73,  %74,  %75},  %76,  p,    %78,  %79; }",
    .saturate = false,
};

pub const MMA_64x152x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x152x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 152, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 76 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %78, 0; wgmma.mma_async.sync.aligned.m64n152k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75},  %76,  %77,  p,    %79,  %80; }",
    .saturate = false,
};

pub const MMA_64x152x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x152x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 152, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 76 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %81, 0; wgmma.mma_async.sync.aligned.m64n152k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75}, {%76,  %77,  %78,  %79},  %80,  p,    %82,  %83; }",
    .saturate = false,
};

pub const MMA_64x160x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x160x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 80 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %82, 0; wgmma.mma_async.sync.aligned.m64n160k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79},  %80,  %81,  p,    %83,  %84; }",
    .saturate = false,
};

pub const MMA_64x160x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x160x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 80 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %85, 0; wgmma.mma_async.sync.aligned.m64n160k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79}, {%80,  %81,  %82,  %83},  %84,  p,    %86,  %87; }",
    .saturate = false,
};

pub const MMA_64x168x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x168x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 168, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 84 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %86, 0; wgmma.mma_async.sync.aligned.m64n168k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83},  %84,  %85,  p,    %87,  %88; }",
    .saturate = false,
};

pub const MMA_64x168x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x168x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 168, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 84 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %89, 0; wgmma.mma_async.sync.aligned.m64n168k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83}, {%84,  %85,  %86,  %87},  %88,  p,    %90,  %91; }",
    .saturate = false,
};

pub const MMA_64x176x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x176x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 88 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %90, 0; wgmma.mma_async.sync.aligned.m64n176k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87},  %88,  %89,  p,    %91,  %92; }",
    .saturate = false,
};

pub const MMA_64x176x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x176x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 88 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %93, 0; wgmma.mma_async.sync.aligned.m64n176k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87}, {%88,  %89,  %90,  %91},  %92,  p,    %94,  %95; }",
    .saturate = false,
};

pub const MMA_64x184x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x184x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 184, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 92 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %94, 0; wgmma.mma_async.sync.aligned.m64n184k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91},  %92,  %93,  p,    %95,  %96; }",
    .saturate = false,
};

pub const MMA_64x184x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x184x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 184, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 92 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %97, 0; wgmma.mma_async.sync.aligned.m64n184k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91}, {%92,  %93,  %94,  %95},  %96,  p,    %98,  %99; }",
    .saturate = false,
};

pub const MMA_64x200x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x200x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 200, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 100 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %102, 0; wgmma.mma_async.sync.aligned.m64n200k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99},  %100,  %101,  p,    %103, %104; }",
    .saturate = false,
};

pub const MMA_64x200x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x200x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 200, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 100 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %105, 0; wgmma.mma_async.sync.aligned.m64n200k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99}, {%100, %101, %102, %103},  %104,  p,    %106, %107; }",
    .saturate = false,
};

pub const MMA_64x208x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x208x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 104 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %106, 0; wgmma.mma_async.sync.aligned.m64n208k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103},  %104,  %105,  p,    %107, %108; }",
    .saturate = false,
};

pub const MMA_64x208x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x208x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 104 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %109, 0; wgmma.mma_async.sync.aligned.m64n208k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103}, {%104, %105, %106, %107},  %108,  p,    %110, %111; }",
    .saturate = false,
};

pub const MMA_64x216x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x216x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 216, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 108 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %110, 0; wgmma.mma_async.sync.aligned.m64n216k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107},  %108,  %109,  p,    %111, %112; }",
    .saturate = false,
};

pub const MMA_64x216x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x216x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 216, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 108 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %113, 0; wgmma.mma_async.sync.aligned.m64n216k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107}, {%108, %109, %110, %111},  %112,  p,    %114, %115; }",
    .saturate = false,
};

pub const MMA_64x224x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x224x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 112 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %114, 0; wgmma.mma_async.sync.aligned.m64n224k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111},  %112,  %113,  p,    %115, %116; }",
    .saturate = false,
};

pub const MMA_64x224x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x224x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 112 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %117, 0; wgmma.mma_async.sync.aligned.m64n224k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111}, {%112, %113, %114, %115},  %116,  p,    %118, %119; }",
    .saturate = false,
};

pub const MMA_64x232x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x232x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 232, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 116 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %118, 0; wgmma.mma_async.sync.aligned.m64n232k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115},  %116,  %117,  p,    %119, %120; }",
    .saturate = false,
};

pub const MMA_64x232x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x232x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 232, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 116 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %121, 0; wgmma.mma_async.sync.aligned.m64n232k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115}, {%116, %117, %118, %119},  %120,  p,    %122, %123; }",
    .saturate = false,
};

pub const MMA_64x240x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x240x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 120 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %122, 0; wgmma.mma_async.sync.aligned.m64n240k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119},  %120,  %121,  p,    %123, %124; }",
    .saturate = false,
};

pub const MMA_64x240x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x240x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 120 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %125, 0; wgmma.mma_async.sync.aligned.m64n240k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119}, {%120, %121, %122, %123},  %124,  p,    %126, %127; }",
    .saturate = false,
};

pub const MMA_64x248x8_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "MMA_64x248x8_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 248, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 124 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %126, 0; wgmma.mma_async.sync.aligned.m64n248k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123},  %124,  %125,  p,    %127, %128; }",
    .saturate = false,
};

pub const MMA_64x248x8_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "MMA_64x248x8_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 248, .k = 8,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 124 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %129, 0; wgmma.mma_async.sync.aligned.m64n248k8.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123}, {%124, %125, %126, %127},  %128,  p,    %130, %131; }",
    .saturate = false,
};

pub const MMA_64x24x32_S32S8S8_SS_TN = types.MmaInst {
    .name = "MMA_64x24x32_S32S8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %14, 0; wgmma.mma_async.sync.aligned.m64n24k32.s32.s8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11},  %12,  %13,  p; }",
    .saturate = false,
};

pub const MMA_64x24x32_S32S8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x24x32_S32S8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %14, 0; wgmma.mma_async.sync.aligned.m64n24k32.s32.s8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11},  %12,  %13,  p; }",
    .saturate = true,
};

pub const MMA_64x48x32_S32S8S8_SS_TN = types.MmaInst {
    .name = "MMA_64x48x32_S32S8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %26, 0; wgmma.mma_async.sync.aligned.m64n48k32.s32.s8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23},  %24,  %25,  p; }",
    .saturate = false,
};

pub const MMA_64x48x32_S32S8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x48x32_S32S8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %26, 0; wgmma.mma_async.sync.aligned.m64n48k32.s32.s8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23},  %24,  %25,  p; }",
    .saturate = true,
};

pub const MMA_64x80x32_S32S8S8_SS_TN = types.MmaInst {
    .name = "MMA_64x80x32_S32S8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %42, 0; wgmma.mma_async.sync.aligned.m64n80k32.s32.s8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39},  %40,  %41,  p; }",
    .saturate = false,
};

pub const MMA_64x80x32_S32S8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x80x32_S32S8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %42, 0; wgmma.mma_async.sync.aligned.m64n80k32.s32.s8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39},  %40,  %41,  p; }",
    .saturate = true,
};

pub const MMA_64x112x32_S32S8S8_SS_TN = types.MmaInst {
    .name = "MMA_64x112x32_S32S8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %58, 0; wgmma.mma_async.sync.aligned.m64n112k32.s32.s8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55},  %56,  %57,  p; }",
    .saturate = false,
};

pub const MMA_64x112x32_S32S8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x112x32_S32S8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %58, 0; wgmma.mma_async.sync.aligned.m64n112k32.s32.s8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55},  %56,  %57,  p; }",
    .saturate = true,
};

pub const MMA_64x144x32_S32S8S8_SS_TN = types.MmaInst {
    .name = "MMA_64x144x32_S32S8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %74, 0; wgmma.mma_async.sync.aligned.m64n144k32.s32.s8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71},  %72,  %73,  p; }",
    .saturate = false,
};

pub const MMA_64x144x32_S32S8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x144x32_S32S8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %74, 0; wgmma.mma_async.sync.aligned.m64n144k32.s32.s8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71},  %72,  %73,  p; }",
    .saturate = true,
};

pub const MMA_64x160x32_S32S8S8_SS_TN = types.MmaInst {
    .name = "MMA_64x160x32_S32S8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %82, 0; wgmma.mma_async.sync.aligned.m64n160k32.s32.s8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79},  %80,  %81,  p; }",
    .saturate = false,
};

pub const MMA_64x160x32_S32S8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x160x32_S32S8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %82, 0; wgmma.mma_async.sync.aligned.m64n160k32.s32.s8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79},  %80,  %81,  p; }",
    .saturate = true,
};

pub const MMA_64x176x32_S32S8S8_SS_TN = types.MmaInst {
    .name = "MMA_64x176x32_S32S8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %90, 0; wgmma.mma_async.sync.aligned.m64n176k32.s32.s8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87},  %88,  %89,  p; }",
    .saturate = false,
};

pub const MMA_64x176x32_S32S8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x176x32_S32S8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %90, 0; wgmma.mma_async.sync.aligned.m64n176k32.s32.s8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87},  %88,  %89,  p; }",
    .saturate = true,
};

pub const MMA_64x208x32_S32S8S8_SS_TN = types.MmaInst {
    .name = "MMA_64x208x32_S32S8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %106, 0; wgmma.mma_async.sync.aligned.m64n208k32.s32.s8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103},  %104,  %105,  p; }",
    .saturate = false,
};

pub const MMA_64x208x32_S32S8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x208x32_S32S8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %106, 0; wgmma.mma_async.sync.aligned.m64n208k32.s32.s8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103},  %104,  %105,  p; }",
    .saturate = true,
};

pub const MMA_64x224x32_S32S8S8_SS_TN = types.MmaInst {
    .name = "MMA_64x224x32_S32S8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %114, 0; wgmma.mma_async.sync.aligned.m64n224k32.s32.s8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111},  %112,  %113,  p; }",
    .saturate = false,
};

pub const MMA_64x224x32_S32S8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x224x32_S32S8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %114, 0; wgmma.mma_async.sync.aligned.m64n224k32.s32.s8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111},  %112,  %113,  p; }",
    .saturate = true,
};

pub const MMA_64x240x32_S32S8S8_SS_TN = types.MmaInst {
    .name = "MMA_64x240x32_S32S8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %122, 0; wgmma.mma_async.sync.aligned.m64n240k32.s32.s8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119},  %120,  %121,  p; }",
    .saturate = false,
};

pub const MMA_64x240x32_S32S8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x240x32_S32S8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %122, 0; wgmma.mma_async.sync.aligned.m64n240k32.s32.s8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119},  %120,  %121,  p; }",
    .saturate = true,
};

pub const MMA_64x24x32_S32S8S8_RS_TN = types.MmaInst {
    .name = "MMA_64x24x32_S32S8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %17, 0; wgmma.mma_async.sync.aligned.m64n24k32.s32.s8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11}, {%12, %13, %14, %15},  %16,  p; }",
    .saturate = false,
};

pub const MMA_64x24x32_S32S8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x24x32_S32S8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %17, 0; wgmma.mma_async.sync.aligned.m64n24k32.s32.s8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11}, {%12, %13, %14, %15},  %16,  p; }",
    .saturate = true,
};

pub const MMA_64x48x32_S32S8S8_RS_TN = types.MmaInst {
    .name = "MMA_64x48x32_S32S8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %29, 0; wgmma.mma_async.sync.aligned.m64n48k32.s32.s8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23}, {%24, %25, %26, %27},  %28,  p; }",
    .saturate = false,
};

pub const MMA_64x48x32_S32S8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x48x32_S32S8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %29, 0; wgmma.mma_async.sync.aligned.m64n48k32.s32.s8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23}, {%24, %25, %26, %27},  %28,  p; }",
    .saturate = true,
};

pub const MMA_64x80x32_S32S8S8_RS_TN = types.MmaInst {
    .name = "MMA_64x80x32_S32S8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %45, 0; wgmma.mma_async.sync.aligned.m64n80k32.s32.s8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39}, {%40, %41, %42, %43},  %44,  p; }",
    .saturate = false,
};

pub const MMA_64x80x32_S32S8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x80x32_S32S8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %45, 0; wgmma.mma_async.sync.aligned.m64n80k32.s32.s8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39}, {%40, %41, %42, %43},  %44,  p; }",
    .saturate = true,
};

pub const MMA_64x112x32_S32S8S8_RS_TN = types.MmaInst {
    .name = "MMA_64x112x32_S32S8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %61, 0; wgmma.mma_async.sync.aligned.m64n112k32.s32.s8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55}, {%56,  %57,  %58,  %59},  %60,  p; }",
    .saturate = false,
};

pub const MMA_64x112x32_S32S8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x112x32_S32S8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %61, 0; wgmma.mma_async.sync.aligned.m64n112k32.s32.s8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55}, {%56,  %57,  %58,  %59},  %60,  p; }",
    .saturate = true,
};

pub const MMA_64x144x32_S32S8S8_RS_TN = types.MmaInst {
    .name = "MMA_64x144x32_S32S8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %77, 0; wgmma.mma_async.sync.aligned.m64n144k32.s32.s8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71}, {%72,  %73,  %74,  %75},  %76,  p; }",
    .saturate = false,
};

pub const MMA_64x144x32_S32S8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x144x32_S32S8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %77, 0; wgmma.mma_async.sync.aligned.m64n144k32.s32.s8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71}, {%72,  %73,  %74,  %75},  %76,  p; }",
    .saturate = true,
};

pub const MMA_64x160x32_S32S8S8_RS_TN = types.MmaInst {
    .name = "MMA_64x160x32_S32S8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %85, 0; wgmma.mma_async.sync.aligned.m64n160k32.s32.s8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79}, {%80,  %81,  %82,  %83},  %84,  p; }",
    .saturate = false,
};

pub const MMA_64x160x32_S32S8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x160x32_S32S8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %85, 0; wgmma.mma_async.sync.aligned.m64n160k32.s32.s8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79}, {%80,  %81,  %82,  %83},  %84,  p; }",
    .saturate = true,
};

pub const MMA_64x176x32_S32S8S8_RS_TN = types.MmaInst {
    .name = "MMA_64x176x32_S32S8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %93, 0; wgmma.mma_async.sync.aligned.m64n176k32.s32.s8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87}, {%88,  %89,  %90,  %91},  %92,  p; }",
    .saturate = false,
};

pub const MMA_64x176x32_S32S8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x176x32_S32S8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %93, 0; wgmma.mma_async.sync.aligned.m64n176k32.s32.s8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87}, {%88,  %89,  %90,  %91},  %92,  p; }",
    .saturate = true,
};

pub const MMA_64x208x32_S32S8S8_RS_TN = types.MmaInst {
    .name = "MMA_64x208x32_S32S8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %109, 0; wgmma.mma_async.sync.aligned.m64n208k32.s32.s8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103}, {%104, %105, %106, %107},  %108,  p; }",
    .saturate = false,
};

pub const MMA_64x208x32_S32S8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x208x32_S32S8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %109, 0; wgmma.mma_async.sync.aligned.m64n208k32.s32.s8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103}, {%104, %105, %106, %107},  %108,  p; }",
    .saturate = true,
};

pub const MMA_64x224x32_S32S8S8_RS_TN = types.MmaInst {
    .name = "MMA_64x224x32_S32S8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %117, 0; wgmma.mma_async.sync.aligned.m64n224k32.s32.s8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111}, {%112, %113, %114, %115},  %116,  p; }",
    .saturate = false,
};

pub const MMA_64x224x32_S32S8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x224x32_S32S8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %117, 0; wgmma.mma_async.sync.aligned.m64n224k32.s32.s8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111}, {%112, %113, %114, %115},  %116,  p; }",
    .saturate = true,
};

pub const MMA_64x240x32_S32S8S8_RS_TN = types.MmaInst {
    .name = "MMA_64x240x32_S32S8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %125, 0; wgmma.mma_async.sync.aligned.m64n240k32.s32.s8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119}, {%120, %121, %122, %123},  %124,  p; }",
    .saturate = false,
};

pub const MMA_64x240x32_S32S8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x240x32_S32S8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %125, 0; wgmma.mma_async.sync.aligned.m64n240k32.s32.s8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119}, {%120, %121, %122, %123},  %124,  p; }",
    .saturate = true,
};

pub const MMA_64x24x32_S32S8U8_SS_TN = types.MmaInst {
    .name = "MMA_64x24x32_S32S8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %14, 0; wgmma.mma_async.sync.aligned.m64n24k32.s32.s8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11},  %12,  %13,  p; }",
    .saturate = false,
};

pub const MMA_64x24x32_S32S8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x24x32_S32S8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %14, 0; wgmma.mma_async.sync.aligned.m64n24k32.s32.s8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11},  %12,  %13,  p; }",
    .saturate = true,
};

pub const MMA_64x48x32_S32S8U8_SS_TN = types.MmaInst {
    .name = "MMA_64x48x32_S32S8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %26, 0; wgmma.mma_async.sync.aligned.m64n48k32.s32.s8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23},  %24,  %25,  p; }",
    .saturate = false,
};

pub const MMA_64x48x32_S32S8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x48x32_S32S8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %26, 0; wgmma.mma_async.sync.aligned.m64n48k32.s32.s8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23},  %24,  %25,  p; }",
    .saturate = true,
};

pub const MMA_64x80x32_S32S8U8_SS_TN = types.MmaInst {
    .name = "MMA_64x80x32_S32S8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %42, 0; wgmma.mma_async.sync.aligned.m64n80k32.s32.s8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39},  %40,  %41,  p; }",
    .saturate = false,
};

pub const MMA_64x80x32_S32S8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x80x32_S32S8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %42, 0; wgmma.mma_async.sync.aligned.m64n80k32.s32.s8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39},  %40,  %41,  p; }",
    .saturate = true,
};

pub const MMA_64x112x32_S32S8U8_SS_TN = types.MmaInst {
    .name = "MMA_64x112x32_S32S8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %58, 0; wgmma.mma_async.sync.aligned.m64n112k32.s32.s8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55},  %56,  %57,  p; }",
    .saturate = false,
};

pub const MMA_64x112x32_S32S8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x112x32_S32S8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %58, 0; wgmma.mma_async.sync.aligned.m64n112k32.s32.s8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55},  %56,  %57,  p; }",
    .saturate = true,
};

pub const MMA_64x144x32_S32S8U8_SS_TN = types.MmaInst {
    .name = "MMA_64x144x32_S32S8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %74, 0; wgmma.mma_async.sync.aligned.m64n144k32.s32.s8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71},  %72,  %73,  p; }",
    .saturate = false,
};

pub const MMA_64x144x32_S32S8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x144x32_S32S8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %74, 0; wgmma.mma_async.sync.aligned.m64n144k32.s32.s8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71},  %72,  %73,  p; }",
    .saturate = true,
};

pub const MMA_64x160x32_S32S8U8_SS_TN = types.MmaInst {
    .name = "MMA_64x160x32_S32S8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %82, 0; wgmma.mma_async.sync.aligned.m64n160k32.s32.s8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79},  %80,  %81,  p; }",
    .saturate = false,
};

pub const MMA_64x160x32_S32S8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x160x32_S32S8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %82, 0; wgmma.mma_async.sync.aligned.m64n160k32.s32.s8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79},  %80,  %81,  p; }",
    .saturate = true,
};

pub const MMA_64x176x32_S32S8U8_SS_TN = types.MmaInst {
    .name = "MMA_64x176x32_S32S8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %90, 0; wgmma.mma_async.sync.aligned.m64n176k32.s32.s8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87},  %88,  %89,  p; }",
    .saturate = false,
};

pub const MMA_64x176x32_S32S8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x176x32_S32S8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %90, 0; wgmma.mma_async.sync.aligned.m64n176k32.s32.s8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87},  %88,  %89,  p; }",
    .saturate = true,
};

pub const MMA_64x208x32_S32S8U8_SS_TN = types.MmaInst {
    .name = "MMA_64x208x32_S32S8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %106, 0; wgmma.mma_async.sync.aligned.m64n208k32.s32.s8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103},  %104,  %105,  p; }",
    .saturate = false,
};

pub const MMA_64x208x32_S32S8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x208x32_S32S8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %106, 0; wgmma.mma_async.sync.aligned.m64n208k32.s32.s8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103},  %104,  %105,  p; }",
    .saturate = true,
};

pub const MMA_64x224x32_S32S8U8_SS_TN = types.MmaInst {
    .name = "MMA_64x224x32_S32S8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %114, 0; wgmma.mma_async.sync.aligned.m64n224k32.s32.s8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111},  %112,  %113,  p; }",
    .saturate = false,
};

pub const MMA_64x224x32_S32S8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x224x32_S32S8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %114, 0; wgmma.mma_async.sync.aligned.m64n224k32.s32.s8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111},  %112,  %113,  p; }",
    .saturate = true,
};

pub const MMA_64x240x32_S32S8U8_SS_TN = types.MmaInst {
    .name = "MMA_64x240x32_S32S8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %122, 0; wgmma.mma_async.sync.aligned.m64n240k32.s32.s8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119},  %120,  %121,  p; }",
    .saturate = false,
};

pub const MMA_64x240x32_S32S8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x240x32_S32S8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %122, 0; wgmma.mma_async.sync.aligned.m64n240k32.s32.s8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119},  %120,  %121,  p; }",
    .saturate = true,
};

pub const MMA_64x24x32_S32S8U8_RS_TN = types.MmaInst {
    .name = "MMA_64x24x32_S32S8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %17, 0; wgmma.mma_async.sync.aligned.m64n24k32.s32.s8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11}, {%12, %13, %14, %15},  %16,  p; }",
    .saturate = false,
};

pub const MMA_64x24x32_S32S8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x24x32_S32S8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %17, 0; wgmma.mma_async.sync.aligned.m64n24k32.s32.s8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11}, {%12, %13, %14, %15},  %16,  p; }",
    .saturate = true,
};

pub const MMA_64x48x32_S32S8U8_RS_TN = types.MmaInst {
    .name = "MMA_64x48x32_S32S8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %29, 0; wgmma.mma_async.sync.aligned.m64n48k32.s32.s8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23}, {%24, %25, %26, %27},  %28,  p; }",
    .saturate = false,
};

pub const MMA_64x48x32_S32S8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x48x32_S32S8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %29, 0; wgmma.mma_async.sync.aligned.m64n48k32.s32.s8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23}, {%24, %25, %26, %27},  %28,  p; }",
    .saturate = true,
};

pub const MMA_64x80x32_S32S8U8_RS_TN = types.MmaInst {
    .name = "MMA_64x80x32_S32S8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %45, 0; wgmma.mma_async.sync.aligned.m64n80k32.s32.s8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39}, {%40, %41, %42, %43},  %44,  p; }",
    .saturate = false,
};

pub const MMA_64x80x32_S32S8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x80x32_S32S8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %45, 0; wgmma.mma_async.sync.aligned.m64n80k32.s32.s8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39}, {%40, %41, %42, %43},  %44,  p; }",
    .saturate = true,
};

pub const MMA_64x112x32_S32S8U8_RS_TN = types.MmaInst {
    .name = "MMA_64x112x32_S32S8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %61, 0; wgmma.mma_async.sync.aligned.m64n112k32.s32.s8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55}, {%56,  %57,  %58,  %59},  %60,  p; }",
    .saturate = false,
};

pub const MMA_64x112x32_S32S8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x112x32_S32S8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %61, 0; wgmma.mma_async.sync.aligned.m64n112k32.s32.s8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55}, {%56,  %57,  %58,  %59},  %60,  p; }",
    .saturate = true,
};

pub const MMA_64x144x32_S32S8U8_RS_TN = types.MmaInst {
    .name = "MMA_64x144x32_S32S8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %77, 0; wgmma.mma_async.sync.aligned.m64n144k32.s32.s8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71}, {%72,  %73,  %74,  %75},  %76,  p; }",
    .saturate = false,
};

pub const MMA_64x144x32_S32S8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x144x32_S32S8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %77, 0; wgmma.mma_async.sync.aligned.m64n144k32.s32.s8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71}, {%72,  %73,  %74,  %75},  %76,  p; }",
    .saturate = true,
};

pub const MMA_64x160x32_S32S8U8_RS_TN = types.MmaInst {
    .name = "MMA_64x160x32_S32S8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %85, 0; wgmma.mma_async.sync.aligned.m64n160k32.s32.s8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79}, {%80,  %81,  %82,  %83},  %84,  p; }",
    .saturate = false,
};

pub const MMA_64x160x32_S32S8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x160x32_S32S8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %85, 0; wgmma.mma_async.sync.aligned.m64n160k32.s32.s8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79}, {%80,  %81,  %82,  %83},  %84,  p; }",
    .saturate = true,
};

pub const MMA_64x176x32_S32S8U8_RS_TN = types.MmaInst {
    .name = "MMA_64x176x32_S32S8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %93, 0; wgmma.mma_async.sync.aligned.m64n176k32.s32.s8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87}, {%88,  %89,  %90,  %91},  %92,  p; }",
    .saturate = false,
};

pub const MMA_64x176x32_S32S8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x176x32_S32S8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %93, 0; wgmma.mma_async.sync.aligned.m64n176k32.s32.s8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87}, {%88,  %89,  %90,  %91},  %92,  p; }",
    .saturate = true,
};

pub const MMA_64x208x32_S32S8U8_RS_TN = types.MmaInst {
    .name = "MMA_64x208x32_S32S8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %109, 0; wgmma.mma_async.sync.aligned.m64n208k32.s32.s8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103}, {%104, %105, %106, %107},  %108,  p; }",
    .saturate = false,
};

pub const MMA_64x208x32_S32S8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x208x32_S32S8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %109, 0; wgmma.mma_async.sync.aligned.m64n208k32.s32.s8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103}, {%104, %105, %106, %107},  %108,  p; }",
    .saturate = true,
};

pub const MMA_64x224x32_S32S8U8_RS_TN = types.MmaInst {
    .name = "MMA_64x224x32_S32S8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %117, 0; wgmma.mma_async.sync.aligned.m64n224k32.s32.s8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111}, {%112, %113, %114, %115},  %116,  p; }",
    .saturate = false,
};

pub const MMA_64x224x32_S32S8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x224x32_S32S8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %117, 0; wgmma.mma_async.sync.aligned.m64n224k32.s32.s8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111}, {%112, %113, %114, %115},  %116,  p; }",
    .saturate = true,
};

pub const MMA_64x240x32_S32S8U8_RS_TN = types.MmaInst {
    .name = "MMA_64x240x32_S32S8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %125, 0; wgmma.mma_async.sync.aligned.m64n240k32.s32.s8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119}, {%120, %121, %122, %123},  %124,  p; }",
    .saturate = false,
};

pub const MMA_64x240x32_S32S8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x240x32_S32S8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %125, 0; wgmma.mma_async.sync.aligned.m64n240k32.s32.s8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119}, {%120, %121, %122, %123},  %124,  p; }",
    .saturate = true,
};

pub const MMA_64x24x32_S32U8S8_SS_TN = types.MmaInst {
    .name = "MMA_64x24x32_S32U8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %14, 0; wgmma.mma_async.sync.aligned.m64n24k32.s32.u8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11},  %12,  %13,  p; }",
    .saturate = false,
};

pub const MMA_64x24x32_S32U8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x24x32_S32U8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %14, 0; wgmma.mma_async.sync.aligned.m64n24k32.s32.u8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11},  %12,  %13,  p; }",
    .saturate = true,
};

pub const MMA_64x48x32_S32U8S8_SS_TN = types.MmaInst {
    .name = "MMA_64x48x32_S32U8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %26, 0; wgmma.mma_async.sync.aligned.m64n48k32.s32.u8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23},  %24,  %25,  p; }",
    .saturate = false,
};

pub const MMA_64x48x32_S32U8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x48x32_S32U8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %26, 0; wgmma.mma_async.sync.aligned.m64n48k32.s32.u8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23},  %24,  %25,  p; }",
    .saturate = true,
};

pub const MMA_64x80x32_S32U8S8_SS_TN = types.MmaInst {
    .name = "MMA_64x80x32_S32U8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %42, 0; wgmma.mma_async.sync.aligned.m64n80k32.s32.u8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39},  %40,  %41,  p; }",
    .saturate = false,
};

pub const MMA_64x80x32_S32U8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x80x32_S32U8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %42, 0; wgmma.mma_async.sync.aligned.m64n80k32.s32.u8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39},  %40,  %41,  p; }",
    .saturate = true,
};

pub const MMA_64x112x32_S32U8S8_SS_TN = types.MmaInst {
    .name = "MMA_64x112x32_S32U8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %58, 0; wgmma.mma_async.sync.aligned.m64n112k32.s32.u8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55},  %56,  %57,  p; }",
    .saturate = false,
};

pub const MMA_64x112x32_S32U8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x112x32_S32U8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %58, 0; wgmma.mma_async.sync.aligned.m64n112k32.s32.u8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55},  %56,  %57,  p; }",
    .saturate = true,
};

pub const MMA_64x144x32_S32U8S8_SS_TN = types.MmaInst {
    .name = "MMA_64x144x32_S32U8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %74, 0; wgmma.mma_async.sync.aligned.m64n144k32.s32.u8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71},  %72,  %73,  p; }",
    .saturate = false,
};

pub const MMA_64x144x32_S32U8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x144x32_S32U8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %74, 0; wgmma.mma_async.sync.aligned.m64n144k32.s32.u8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71},  %72,  %73,  p; }",
    .saturate = true,
};

pub const MMA_64x160x32_S32U8S8_SS_TN = types.MmaInst {
    .name = "MMA_64x160x32_S32U8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %82, 0; wgmma.mma_async.sync.aligned.m64n160k32.s32.u8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79},  %80,  %81,  p; }",
    .saturate = false,
};

pub const MMA_64x160x32_S32U8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x160x32_S32U8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %82, 0; wgmma.mma_async.sync.aligned.m64n160k32.s32.u8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79},  %80,  %81,  p; }",
    .saturate = true,
};

pub const MMA_64x176x32_S32U8S8_SS_TN = types.MmaInst {
    .name = "MMA_64x176x32_S32U8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %90, 0; wgmma.mma_async.sync.aligned.m64n176k32.s32.u8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87},  %88,  %89,  p; }",
    .saturate = false,
};

pub const MMA_64x176x32_S32U8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x176x32_S32U8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %90, 0; wgmma.mma_async.sync.aligned.m64n176k32.s32.u8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87},  %88,  %89,  p; }",
    .saturate = true,
};

pub const MMA_64x208x32_S32U8S8_SS_TN = types.MmaInst {
    .name = "MMA_64x208x32_S32U8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %106, 0; wgmma.mma_async.sync.aligned.m64n208k32.s32.u8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103},  %104,  %105,  p; }",
    .saturate = false,
};

pub const MMA_64x208x32_S32U8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x208x32_S32U8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %106, 0; wgmma.mma_async.sync.aligned.m64n208k32.s32.u8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103},  %104,  %105,  p; }",
    .saturate = true,
};

pub const MMA_64x224x32_S32U8S8_SS_TN = types.MmaInst {
    .name = "MMA_64x224x32_S32U8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %114, 0; wgmma.mma_async.sync.aligned.m64n224k32.s32.u8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111},  %112,  %113,  p; }",
    .saturate = false,
};

pub const MMA_64x224x32_S32U8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x224x32_S32U8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %114, 0; wgmma.mma_async.sync.aligned.m64n224k32.s32.u8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111},  %112,  %113,  p; }",
    .saturate = true,
};

pub const MMA_64x240x32_S32U8S8_SS_TN = types.MmaInst {
    .name = "MMA_64x240x32_S32U8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %122, 0; wgmma.mma_async.sync.aligned.m64n240k32.s32.u8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119},  %120,  %121,  p; }",
    .saturate = false,
};

pub const MMA_64x240x32_S32U8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x240x32_S32U8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %122, 0; wgmma.mma_async.sync.aligned.m64n240k32.s32.u8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119},  %120,  %121,  p; }",
    .saturate = true,
};

pub const MMA_64x24x32_S32U8S8_RS_TN = types.MmaInst {
    .name = "MMA_64x24x32_S32U8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %17, 0; wgmma.mma_async.sync.aligned.m64n24k32.s32.u8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11}, {%12, %13, %14, %15},  %16,  p; }",
    .saturate = false,
};

pub const MMA_64x24x32_S32U8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x24x32_S32U8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %17, 0; wgmma.mma_async.sync.aligned.m64n24k32.s32.u8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11}, {%12, %13, %14, %15},  %16,  p; }",
    .saturate = true,
};

pub const MMA_64x48x32_S32U8S8_RS_TN = types.MmaInst {
    .name = "MMA_64x48x32_S32U8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %29, 0; wgmma.mma_async.sync.aligned.m64n48k32.s32.u8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23}, {%24, %25, %26, %27},  %28,  p; }",
    .saturate = false,
};

pub const MMA_64x48x32_S32U8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x48x32_S32U8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %29, 0; wgmma.mma_async.sync.aligned.m64n48k32.s32.u8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23}, {%24, %25, %26, %27},  %28,  p; }",
    .saturate = true,
};

pub const MMA_64x80x32_S32U8S8_RS_TN = types.MmaInst {
    .name = "MMA_64x80x32_S32U8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %45, 0; wgmma.mma_async.sync.aligned.m64n80k32.s32.u8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39}, {%40, %41, %42, %43},  %44,  p; }",
    .saturate = false,
};

pub const MMA_64x80x32_S32U8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x80x32_S32U8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %45, 0; wgmma.mma_async.sync.aligned.m64n80k32.s32.u8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39}, {%40, %41, %42, %43},  %44,  p; }",
    .saturate = true,
};

pub const MMA_64x112x32_S32U8S8_RS_TN = types.MmaInst {
    .name = "MMA_64x112x32_S32U8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %61, 0; wgmma.mma_async.sync.aligned.m64n112k32.s32.u8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55}, {%56,  %57,  %58,  %59},  %60,  p; }",
    .saturate = false,
};

pub const MMA_64x112x32_S32U8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x112x32_S32U8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %61, 0; wgmma.mma_async.sync.aligned.m64n112k32.s32.u8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55}, {%56,  %57,  %58,  %59},  %60,  p; }",
    .saturate = true,
};

pub const MMA_64x144x32_S32U8S8_RS_TN = types.MmaInst {
    .name = "MMA_64x144x32_S32U8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %77, 0; wgmma.mma_async.sync.aligned.m64n144k32.s32.u8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71}, {%72,  %73,  %74,  %75},  %76,  p; }",
    .saturate = false,
};

pub const MMA_64x144x32_S32U8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x144x32_S32U8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %77, 0; wgmma.mma_async.sync.aligned.m64n144k32.s32.u8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71}, {%72,  %73,  %74,  %75},  %76,  p; }",
    .saturate = true,
};

pub const MMA_64x160x32_S32U8S8_RS_TN = types.MmaInst {
    .name = "MMA_64x160x32_S32U8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %85, 0; wgmma.mma_async.sync.aligned.m64n160k32.s32.u8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79}, {%80,  %81,  %82,  %83},  %84,  p; }",
    .saturate = false,
};

pub const MMA_64x160x32_S32U8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x160x32_S32U8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %85, 0; wgmma.mma_async.sync.aligned.m64n160k32.s32.u8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79}, {%80,  %81,  %82,  %83},  %84,  p; }",
    .saturate = true,
};

pub const MMA_64x176x32_S32U8S8_RS_TN = types.MmaInst {
    .name = "MMA_64x176x32_S32U8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %93, 0; wgmma.mma_async.sync.aligned.m64n176k32.s32.u8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87}, {%88,  %89,  %90,  %91},  %92,  p; }",
    .saturate = false,
};

pub const MMA_64x176x32_S32U8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x176x32_S32U8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %93, 0; wgmma.mma_async.sync.aligned.m64n176k32.s32.u8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87}, {%88,  %89,  %90,  %91},  %92,  p; }",
    .saturate = true,
};

pub const MMA_64x208x32_S32U8S8_RS_TN = types.MmaInst {
    .name = "MMA_64x208x32_S32U8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %109, 0; wgmma.mma_async.sync.aligned.m64n208k32.s32.u8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103}, {%104, %105, %106, %107},  %108,  p; }",
    .saturate = false,
};

pub const MMA_64x208x32_S32U8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x208x32_S32U8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %109, 0; wgmma.mma_async.sync.aligned.m64n208k32.s32.u8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103}, {%104, %105, %106, %107},  %108,  p; }",
    .saturate = true,
};

pub const MMA_64x224x32_S32U8S8_RS_TN = types.MmaInst {
    .name = "MMA_64x224x32_S32U8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %117, 0; wgmma.mma_async.sync.aligned.m64n224k32.s32.u8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111}, {%112, %113, %114, %115},  %116,  p; }",
    .saturate = false,
};

pub const MMA_64x224x32_S32U8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x224x32_S32U8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %117, 0; wgmma.mma_async.sync.aligned.m64n224k32.s32.u8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111}, {%112, %113, %114, %115},  %116,  p; }",
    .saturate = true,
};

pub const MMA_64x240x32_S32U8S8_RS_TN = types.MmaInst {
    .name = "MMA_64x240x32_S32U8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %125, 0; wgmma.mma_async.sync.aligned.m64n240k32.s32.u8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119}, {%120, %121, %122, %123},  %124,  p; }",
    .saturate = false,
};

pub const MMA_64x240x32_S32U8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x240x32_S32U8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %125, 0; wgmma.mma_async.sync.aligned.m64n240k32.s32.u8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119}, {%120, %121, %122, %123},  %124,  p; }",
    .saturate = true,
};

pub const MMA_64x24x32_S32U8U8_SS_TN = types.MmaInst {
    .name = "MMA_64x24x32_S32U8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %14, 0; wgmma.mma_async.sync.aligned.m64n24k32.s32.u8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11},  %12,  %13,  p; }",
    .saturate = false,
};

pub const MMA_64x24x32_S32U8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x24x32_S32U8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %14, 0; wgmma.mma_async.sync.aligned.m64n24k32.s32.u8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11},  %12,  %13,  p; }",
    .saturate = true,
};

pub const MMA_64x48x32_S32U8U8_SS_TN = types.MmaInst {
    .name = "MMA_64x48x32_S32U8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %26, 0; wgmma.mma_async.sync.aligned.m64n48k32.s32.u8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23},  %24,  %25,  p; }",
    .saturate = false,
};

pub const MMA_64x48x32_S32U8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x48x32_S32U8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %26, 0; wgmma.mma_async.sync.aligned.m64n48k32.s32.u8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23},  %24,  %25,  p; }",
    .saturate = true,
};

pub const MMA_64x80x32_S32U8U8_SS_TN = types.MmaInst {
    .name = "MMA_64x80x32_S32U8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %42, 0; wgmma.mma_async.sync.aligned.m64n80k32.s32.u8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39},  %40,  %41,  p; }",
    .saturate = false,
};

pub const MMA_64x80x32_S32U8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x80x32_S32U8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %42, 0; wgmma.mma_async.sync.aligned.m64n80k32.s32.u8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39},  %40,  %41,  p; }",
    .saturate = true,
};

pub const MMA_64x112x32_S32U8U8_SS_TN = types.MmaInst {
    .name = "MMA_64x112x32_S32U8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %58, 0; wgmma.mma_async.sync.aligned.m64n112k32.s32.u8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55},  %56,  %57,  p; }",
    .saturate = false,
};

pub const MMA_64x112x32_S32U8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x112x32_S32U8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %58, 0; wgmma.mma_async.sync.aligned.m64n112k32.s32.u8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55},  %56,  %57,  p; }",
    .saturate = true,
};

pub const MMA_64x144x32_S32U8U8_SS_TN = types.MmaInst {
    .name = "MMA_64x144x32_S32U8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %74, 0; wgmma.mma_async.sync.aligned.m64n144k32.s32.u8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71},  %72,  %73,  p; }",
    .saturate = false,
};

pub const MMA_64x144x32_S32U8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x144x32_S32U8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %74, 0; wgmma.mma_async.sync.aligned.m64n144k32.s32.u8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71},  %72,  %73,  p; }",
    .saturate = true,
};

pub const MMA_64x160x32_S32U8U8_SS_TN = types.MmaInst {
    .name = "MMA_64x160x32_S32U8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %82, 0; wgmma.mma_async.sync.aligned.m64n160k32.s32.u8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79},  %80,  %81,  p; }",
    .saturate = false,
};

pub const MMA_64x160x32_S32U8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x160x32_S32U8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %82, 0; wgmma.mma_async.sync.aligned.m64n160k32.s32.u8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79},  %80,  %81,  p; }",
    .saturate = true,
};

pub const MMA_64x176x32_S32U8U8_SS_TN = types.MmaInst {
    .name = "MMA_64x176x32_S32U8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %90, 0; wgmma.mma_async.sync.aligned.m64n176k32.s32.u8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87},  %88,  %89,  p; }",
    .saturate = false,
};

pub const MMA_64x176x32_S32U8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x176x32_S32U8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %90, 0; wgmma.mma_async.sync.aligned.m64n176k32.s32.u8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87},  %88,  %89,  p; }",
    .saturate = true,
};

pub const MMA_64x208x32_S32U8U8_SS_TN = types.MmaInst {
    .name = "MMA_64x208x32_S32U8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %106, 0; wgmma.mma_async.sync.aligned.m64n208k32.s32.u8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103},  %104,  %105,  p; }",
    .saturate = false,
};

pub const MMA_64x208x32_S32U8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x208x32_S32U8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %106, 0; wgmma.mma_async.sync.aligned.m64n208k32.s32.u8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103},  %104,  %105,  p; }",
    .saturate = true,
};

pub const MMA_64x224x32_S32U8U8_SS_TN = types.MmaInst {
    .name = "MMA_64x224x32_S32U8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %114, 0; wgmma.mma_async.sync.aligned.m64n224k32.s32.u8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111},  %112,  %113,  p; }",
    .saturate = false,
};

pub const MMA_64x224x32_S32U8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x224x32_S32U8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %114, 0; wgmma.mma_async.sync.aligned.m64n224k32.s32.u8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111},  %112,  %113,  p; }",
    .saturate = true,
};

pub const MMA_64x240x32_S32U8U8_SS_TN = types.MmaInst {
    .name = "MMA_64x240x32_S32U8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %122, 0; wgmma.mma_async.sync.aligned.m64n240k32.s32.u8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119},  %120,  %121,  p; }",
    .saturate = false,
};

pub const MMA_64x240x32_S32U8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x240x32_S32U8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %122, 0; wgmma.mma_async.sync.aligned.m64n240k32.s32.u8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119},  %120,  %121,  p; }",
    .saturate = true,
};

pub const MMA_64x24x32_S32U8U8_RS_TN = types.MmaInst {
    .name = "MMA_64x24x32_S32U8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %17, 0; wgmma.mma_async.sync.aligned.m64n24k32.s32.u8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11}, {%12, %13, %14, %15},  %16,  p; }",
    .saturate = false,
};

pub const MMA_64x24x32_S32U8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x24x32_S32U8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %17, 0; wgmma.mma_async.sync.aligned.m64n24k32.s32.u8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11}, {%12, %13, %14, %15},  %16,  p; }",
    .saturate = true,
};

pub const MMA_64x48x32_S32U8U8_RS_TN = types.MmaInst {
    .name = "MMA_64x48x32_S32U8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %29, 0; wgmma.mma_async.sync.aligned.m64n48k32.s32.u8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23}, {%24, %25, %26, %27},  %28,  p; }",
    .saturate = false,
};

pub const MMA_64x48x32_S32U8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x48x32_S32U8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %29, 0; wgmma.mma_async.sync.aligned.m64n48k32.s32.u8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23}, {%24, %25, %26, %27},  %28,  p; }",
    .saturate = true,
};

pub const MMA_64x80x32_S32U8U8_RS_TN = types.MmaInst {
    .name = "MMA_64x80x32_S32U8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %45, 0; wgmma.mma_async.sync.aligned.m64n80k32.s32.u8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39}, {%40, %41, %42, %43},  %44,  p; }",
    .saturate = false,
};

pub const MMA_64x80x32_S32U8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x80x32_S32U8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %45, 0; wgmma.mma_async.sync.aligned.m64n80k32.s32.u8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39}, {%40, %41, %42, %43},  %44,  p; }",
    .saturate = true,
};

pub const MMA_64x112x32_S32U8U8_RS_TN = types.MmaInst {
    .name = "MMA_64x112x32_S32U8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %61, 0; wgmma.mma_async.sync.aligned.m64n112k32.s32.u8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55}, {%56,  %57,  %58,  %59},  %60,  p; }",
    .saturate = false,
};

pub const MMA_64x112x32_S32U8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x112x32_S32U8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %61, 0; wgmma.mma_async.sync.aligned.m64n112k32.s32.u8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55}, {%56,  %57,  %58,  %59},  %60,  p; }",
    .saturate = true,
};

pub const MMA_64x144x32_S32U8U8_RS_TN = types.MmaInst {
    .name = "MMA_64x144x32_S32U8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %77, 0; wgmma.mma_async.sync.aligned.m64n144k32.s32.u8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71}, {%72,  %73,  %74,  %75},  %76,  p; }",
    .saturate = false,
};

pub const MMA_64x144x32_S32U8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x144x32_S32U8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %77, 0; wgmma.mma_async.sync.aligned.m64n144k32.s32.u8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71}, {%72,  %73,  %74,  %75},  %76,  p; }",
    .saturate = true,
};

pub const MMA_64x160x32_S32U8U8_RS_TN = types.MmaInst {
    .name = "MMA_64x160x32_S32U8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %85, 0; wgmma.mma_async.sync.aligned.m64n160k32.s32.u8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79}, {%80,  %81,  %82,  %83},  %84,  p; }",
    .saturate = false,
};

pub const MMA_64x160x32_S32U8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x160x32_S32U8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %85, 0; wgmma.mma_async.sync.aligned.m64n160k32.s32.u8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79}, {%80,  %81,  %82,  %83},  %84,  p; }",
    .saturate = true,
};

pub const MMA_64x176x32_S32U8U8_RS_TN = types.MmaInst {
    .name = "MMA_64x176x32_S32U8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %93, 0; wgmma.mma_async.sync.aligned.m64n176k32.s32.u8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87}, {%88,  %89,  %90,  %91},  %92,  p; }",
    .saturate = false,
};

pub const MMA_64x176x32_S32U8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x176x32_S32U8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %93, 0; wgmma.mma_async.sync.aligned.m64n176k32.s32.u8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87}, {%88,  %89,  %90,  %91},  %92,  p; }",
    .saturate = true,
};

pub const MMA_64x208x32_S32U8U8_RS_TN = types.MmaInst {
    .name = "MMA_64x208x32_S32U8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %109, 0; wgmma.mma_async.sync.aligned.m64n208k32.s32.u8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103}, {%104, %105, %106, %107},  %108,  p; }",
    .saturate = false,
};

pub const MMA_64x208x32_S32U8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x208x32_S32U8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %109, 0; wgmma.mma_async.sync.aligned.m64n208k32.s32.u8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103}, {%104, %105, %106, %107},  %108,  p; }",
    .saturate = true,
};

pub const MMA_64x224x32_S32U8U8_RS_TN = types.MmaInst {
    .name = "MMA_64x224x32_S32U8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %117, 0; wgmma.mma_async.sync.aligned.m64n224k32.s32.u8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111}, {%112, %113, %114, %115},  %116,  p; }",
    .saturate = false,
};

pub const MMA_64x224x32_S32U8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x224x32_S32U8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %117, 0; wgmma.mma_async.sync.aligned.m64n224k32.s32.u8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111}, {%112, %113, %114, %115},  %116,  p; }",
    .saturate = true,
};

pub const MMA_64x240x32_S32U8U8_RS_TN = types.MmaInst {
    .name = "MMA_64x240x32_S32U8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %125, 0; wgmma.mma_async.sync.aligned.m64n240k32.s32.u8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119}, {%120, %121, %122, %123},  %124,  p; }",
    .saturate = false,
};

pub const MMA_64x240x32_S32U8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "MMA_64x240x32_S32U8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %125, 0; wgmma.mma_async.sync.aligned.m64n240k32.s32.u8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119}, {%120, %121, %122, %123},  %124,  p; }",
    .saturate = true,
};

pub const MMA_64x24x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x24x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 6 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sync.aligned.m64n24k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5},  %6,  %7,  p,   %9,  %10; }",
    .saturate = false,
};

pub const MMA_64x24x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x24x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 6 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sync.aligned.m64n24k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5}, {%6,  %7,  %8,  %9},  %10,  p,   %12, %13; }",
    .saturate = false,
};

pub const MMA_64x24x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x24x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %14, 0; wgmma.mma_async.sync.aligned.m64n24k32.f32.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11},  %12,  %13,  p,   %15, %16; }",
    .saturate = false,
};

pub const MMA_64x24x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x24x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %17, 0; wgmma.mma_async.sync.aligned.m64n24k32.f32.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11}, {%12, %13, %14, %15},  %16,  p,   %18, %19; }",
    .saturate = false,
};

pub const MMA_64x40x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x40x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 40, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 10 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sync.aligned.m64n40k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9},  %10,  %11,  p,   %13, %14; }",
    .saturate = false,
};

pub const MMA_64x40x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x40x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 40, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 10 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sync.aligned.m64n40k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9}, {%10, %11, %12, %13},  %14,  p,   %16, %17; }",
    .saturate = false,
};

pub const MMA_64x40x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x40x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 40, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 20 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %22, 0; wgmma.mma_async.sync.aligned.m64n40k32.f32.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19},  %20,  %21,  p,   %23, %24; }",
    .saturate = false,
};

pub const MMA_64x40x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x40x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 40, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 20 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %25, 0; wgmma.mma_async.sync.aligned.m64n40k32.f32.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19}, {%20, %21, %22, %23},  %24,  p,   %26, %27; }",
    .saturate = false,
};

pub const MMA_64x48x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x48x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %14, 0; wgmma.mma_async.sync.aligned.m64n48k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11},  %12,  %13,  p,   %15, %16; }",
    .saturate = false,
};

pub const MMA_64x48x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x48x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %17, 0; wgmma.mma_async.sync.aligned.m64n48k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11}, {%12, %13, %14, %15},  %16,  p,   %18, %19; }",
    .saturate = false,
};

pub const MMA_64x48x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x48x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %26, 0; wgmma.mma_async.sync.aligned.m64n48k32.f32.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23},  %24,  %25,  p,   %27, %28; }",
    .saturate = false,
};

pub const MMA_64x48x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x48x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %29, 0; wgmma.mma_async.sync.aligned.m64n48k32.f32.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23}, {%24, %25, %26, %27},  %28,  p,   %30, %31; }",
    .saturate = false,
};

pub const MMA_64x56x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x56x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 56, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 14 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %16, 0; wgmma.mma_async.sync.aligned.m64n56k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13},  %14,  %15,  p,   %17, %18; }",
    .saturate = false,
};

pub const MMA_64x56x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x56x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 56, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 14 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %19, 0; wgmma.mma_async.sync.aligned.m64n56k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13}, {%14, %15, %16, %17},  %18,  p,   %20, %21; }",
    .saturate = false,
};

pub const MMA_64x56x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x56x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 56, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 28 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %30, 0; wgmma.mma_async.sync.aligned.m64n56k32.f32.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27},  %28,  %29,  p,   %31, %32; }",
    .saturate = false,
};

pub const MMA_64x56x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x56x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 56, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 28 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %33, 0; wgmma.mma_async.sync.aligned.m64n56k32.f32.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27}, {%28, %29, %30, %31},  %32,  p,   %34, %35; }",
    .saturate = false,
};

pub const MMA_64x72x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x72x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 72, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 18 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sync.aligned.m64n72k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17},  %18,  %19,  p,   %21, %22; }",
    .saturate = false,
};

pub const MMA_64x72x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x72x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 72, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 18 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sync.aligned.m64n72k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17}, {%18, %19, %20, %21},  %22,  p,   %24, %25; }",
    .saturate = false,
};

pub const MMA_64x72x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x72x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 72, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 36 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %38, 0; wgmma.mma_async.sync.aligned.m64n72k32.f32.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35},  %36,  %37,  p,   %39, %40; }",
    .saturate = false,
};

pub const MMA_64x72x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x72x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 72, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 36 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %41, 0; wgmma.mma_async.sync.aligned.m64n72k32.f32.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35}, {%36, %37, %38, %39},  %40,  p,   %42, %43; }",
    .saturate = false,
};

pub const MMA_64x80x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x80x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 20 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %22, 0; wgmma.mma_async.sync.aligned.m64n80k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19},  %20,  %21,  p,   %23, %24; }",
    .saturate = false,
};

pub const MMA_64x80x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x80x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 20 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %25, 0; wgmma.mma_async.sync.aligned.m64n80k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19}, {%20, %21, %22, %23},  %24,  p,   %26, %27; }",
    .saturate = false,
};

pub const MMA_64x80x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x80x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %42, 0; wgmma.mma_async.sync.aligned.m64n80k32.f32.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39},  %40,  %41,  p,   %43, %44; }",
    .saturate = false,
};

pub const MMA_64x80x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x80x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %45, 0; wgmma.mma_async.sync.aligned.m64n80k32.f32.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39}, {%40, %41, %42, %43},  %44,  p,   %46, %47; }",
    .saturate = false,
};

pub const MMA_64x88x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x88x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 88, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 22 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %24, 0; wgmma.mma_async.sync.aligned.m64n88k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21},  %22,  %23,  p,   %25, %26; }",
    .saturate = false,
};

pub const MMA_64x88x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x88x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 88, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 22 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %27, 0; wgmma.mma_async.sync.aligned.m64n88k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21}, {%22, %23, %24, %25},  %26,  p,   %28, %29; }",
    .saturate = false,
};

pub const MMA_64x88x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x88x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 88, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 44 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %46, 0; wgmma.mma_async.sync.aligned.m64n88k32.f32.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43},  %44,  %45,  p,   %47, %48; }",
    .saturate = false,
};

pub const MMA_64x88x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x88x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 88, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 44 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %49, 0; wgmma.mma_async.sync.aligned.m64n88k32.f32.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43}, {%44, %45, %46, %47},  %48,  p,   %50, %51; }",
    .saturate = false,
};

pub const MMA_64x104x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x104x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 104, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 26 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %28, 0; wgmma.mma_async.sync.aligned.m64n104k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25},  %26,  %27,  p,   %29, %30; }",
    .saturate = false,
};

pub const MMA_64x104x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x104x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 104, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 26 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %31, 0; wgmma.mma_async.sync.aligned.m64n104k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25}, {%26, %27, %28, %29},  %30,  p,   %32, %33; }",
    .saturate = false,
};

pub const MMA_64x104x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x104x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 104, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 52 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %54, 0; wgmma.mma_async.sync.aligned.m64n104k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51},  %52,  %53,  p,    %55,  %56; }",
    .saturate = false,
};

pub const MMA_64x104x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x104x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 104, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 52 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %57, 0; wgmma.mma_async.sync.aligned.m64n104k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51}, {%52,  %53,  %54,  %55},  %56,  p,    %58,  %59; }",
    .saturate = false,
};

pub const MMA_64x112x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x112x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 28 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %30, 0; wgmma.mma_async.sync.aligned.m64n112k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27},  %28,  %29,  p,   %31, %32; }",
    .saturate = false,
};

pub const MMA_64x112x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x112x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 28 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %33, 0; wgmma.mma_async.sync.aligned.m64n112k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27}, {%28, %29, %30, %31},  %32,  p,   %34, %35; }",
    .saturate = false,
};

pub const MMA_64x112x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x112x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %58, 0; wgmma.mma_async.sync.aligned.m64n112k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55},  %56,  %57,  p,    %59,  %60; }",
    .saturate = false,
};

pub const MMA_64x112x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x112x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %61, 0; wgmma.mma_async.sync.aligned.m64n112k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55}, {%56,  %57,  %58,  %59},  %60,  p,    %62,  %63; }",
    .saturate = false,
};

pub const MMA_64x120x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x120x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 120, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 30 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %32, 0; wgmma.mma_async.sync.aligned.m64n120k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29},  %30,  %31,  p,   %33, %34; }",
    .saturate = false,
};

pub const MMA_64x120x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x120x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 120, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 30 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %35, 0; wgmma.mma_async.sync.aligned.m64n120k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29}, {%30, %31, %32, %33},  %34,  p,   %36, %37; }",
    .saturate = false,
};

pub const MMA_64x120x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x120x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 120, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 60 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %62, 0; wgmma.mma_async.sync.aligned.m64n120k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59},  %60,  %61,  p,    %63,  %64; }",
    .saturate = false,
};

pub const MMA_64x120x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x120x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 120, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 60 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %65, 0; wgmma.mma_async.sync.aligned.m64n120k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59}, {%60,  %61,  %62,  %63},  %64,  p,    %66,  %67; }",
    .saturate = false,
};

pub const MMA_64x136x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x136x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 136, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 34 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sync.aligned.m64n136k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33},  %34,  %35,  p,   %37, %38; }",
    .saturate = false,
};

pub const MMA_64x136x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x136x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 136, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 34 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sync.aligned.m64n136k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33}, {%34, %35, %36, %37},  %38,  p,   %40, %41; }",
    .saturate = false,
};

pub const MMA_64x136x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x136x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 136, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 68 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %70, 0; wgmma.mma_async.sync.aligned.m64n136k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67},  %68,  %69,  p,    %71,  %72; }",
    .saturate = false,
};

pub const MMA_64x136x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x136x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 136, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 68 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %73, 0; wgmma.mma_async.sync.aligned.m64n136k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67}, {%68,  %69,  %70,  %71},  %72,  p,    %74,  %75; }",
    .saturate = false,
};

pub const MMA_64x144x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x144x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 36 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %38, 0; wgmma.mma_async.sync.aligned.m64n144k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35},  %36,  %37,  p,   %39, %40; }",
    .saturate = false,
};

pub const MMA_64x144x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x144x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 36 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %41, 0; wgmma.mma_async.sync.aligned.m64n144k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35}, {%36, %37, %38, %39},  %40,  p,   %42, %43; }",
    .saturate = false,
};

pub const MMA_64x144x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x144x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %74, 0; wgmma.mma_async.sync.aligned.m64n144k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71},  %72,  %73,  p,    %75,  %76; }",
    .saturate = false,
};

pub const MMA_64x144x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x144x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %77, 0; wgmma.mma_async.sync.aligned.m64n144k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71}, {%72,  %73,  %74,  %75},  %76,  p,    %78,  %79; }",
    .saturate = false,
};

pub const MMA_64x152x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x152x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 152, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 38 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %40, 0; wgmma.mma_async.sync.aligned.m64n152k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37},  %38,  %39,  p,   %41, %42; }",
    .saturate = false,
};

pub const MMA_64x152x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x152x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 152, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 38 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %43, 0; wgmma.mma_async.sync.aligned.m64n152k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37}, {%38, %39, %40, %41},  %42,  p,   %44, %45; }",
    .saturate = false,
};

pub const MMA_64x152x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x152x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 152, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 76 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %78, 0; wgmma.mma_async.sync.aligned.m64n152k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75},  %76,  %77,  p,    %79,  %80; }",
    .saturate = false,
};

pub const MMA_64x152x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x152x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 152, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 76 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %81, 0; wgmma.mma_async.sync.aligned.m64n152k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75}, {%76,  %77,  %78,  %79},  %80,  p,    %82,  %83; }",
    .saturate = false,
};

pub const MMA_64x160x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x160x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %42, 0; wgmma.mma_async.sync.aligned.m64n160k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39},  %40,  %41,  p,   %43, %44; }",
    .saturate = false,
};

pub const MMA_64x160x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x160x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %45, 0; wgmma.mma_async.sync.aligned.m64n160k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39}, {%40, %41, %42, %43},  %44,  p,   %46, %47; }",
    .saturate = false,
};

pub const MMA_64x160x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x160x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %82, 0; wgmma.mma_async.sync.aligned.m64n160k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79},  %80,  %81,  p,    %83,  %84; }",
    .saturate = false,
};

pub const MMA_64x160x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x160x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %85, 0; wgmma.mma_async.sync.aligned.m64n160k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79}, {%80,  %81,  %82,  %83},  %84,  p,    %86,  %87; }",
    .saturate = false,
};

pub const MMA_64x168x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x168x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 168, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 42 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %44, 0; wgmma.mma_async.sync.aligned.m64n168k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41},  %42,  %43,  p,   %45, %46; }",
    .saturate = false,
};

pub const MMA_64x168x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x168x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 168, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 42 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %47, 0; wgmma.mma_async.sync.aligned.m64n168k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41}, {%42, %43, %44, %45},  %46,  p,   %48, %49; }",
    .saturate = false,
};

pub const MMA_64x168x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x168x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 168, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 84 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %86, 0; wgmma.mma_async.sync.aligned.m64n168k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83},  %84,  %85,  p,    %87,  %88; }",
    .saturate = false,
};

pub const MMA_64x168x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x168x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 168, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 84 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %89, 0; wgmma.mma_async.sync.aligned.m64n168k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83}, {%84,  %85,  %86,  %87},  %88,  p,    %90,  %91; }",
    .saturate = false,
};

pub const MMA_64x176x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x176x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 44 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %46, 0; wgmma.mma_async.sync.aligned.m64n176k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43},  %44,  %45,  p,   %47, %48; }",
    .saturate = false,
};

pub const MMA_64x176x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x176x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 44 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %49, 0; wgmma.mma_async.sync.aligned.m64n176k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43}, {%44, %45, %46, %47},  %48,  p,   %50, %51; }",
    .saturate = false,
};

pub const MMA_64x176x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x176x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %90, 0; wgmma.mma_async.sync.aligned.m64n176k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87},  %88,  %89,  p,    %91,  %92; }",
    .saturate = false,
};

pub const MMA_64x176x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x176x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %93, 0; wgmma.mma_async.sync.aligned.m64n176k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87}, {%88,  %89,  %90,  %91},  %92,  p,    %94,  %95; }",
    .saturate = false,
};

pub const MMA_64x184x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x184x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 184, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 46 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %48, 0; wgmma.mma_async.sync.aligned.m64n184k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45},  %46,  %47,  p,   %49, %50; }",
    .saturate = false,
};

pub const MMA_64x184x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x184x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 184, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 46 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %51, 0; wgmma.mma_async.sync.aligned.m64n184k32.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45}, {%46, %47, %48, %49},  %50,  p,   %52, %53; }",
    .saturate = false,
};

pub const MMA_64x184x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x184x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 184, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 92 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %94, 0; wgmma.mma_async.sync.aligned.m64n184k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91},  %92,  %93,  p,    %95,  %96; }",
    .saturate = false,
};

pub const MMA_64x184x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x184x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 184, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 92 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %97, 0; wgmma.mma_async.sync.aligned.m64n184k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91}, {%92,  %93,  %94,  %95},  %96,  p,    %98,  %99; }",
    .saturate = false,
};

pub const MMA_64x200x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x200x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 200, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 50 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sync.aligned.m64n200k32.f16.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49},  %50,  %51,  p,    %53,  %54; }",
    .saturate = false,
};

pub const MMA_64x200x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x200x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 200, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 50 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sync.aligned.m64n200k32.f16.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49}, {%50,  %51,  %52,  %53},  %54,  p,    %56,  %57; }",
    .saturate = false,
};

pub const MMA_64x200x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x200x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 200, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 100 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %102, 0; wgmma.mma_async.sync.aligned.m64n200k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99},  %100,  %101,  p,    %103, %104; }",
    .saturate = false,
};

pub const MMA_64x200x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x200x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 200, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 100 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %105, 0; wgmma.mma_async.sync.aligned.m64n200k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99}, {%100, %101, %102, %103},  %104,  p,    %106, %107; }",
    .saturate = false,
};

pub const MMA_64x208x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x208x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 52 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %54, 0; wgmma.mma_async.sync.aligned.m64n208k32.f16.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51},  %52,  %53,  p,    %55,  %56; }",
    .saturate = false,
};

pub const MMA_64x208x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x208x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 52 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %57, 0; wgmma.mma_async.sync.aligned.m64n208k32.f16.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51}, {%52,  %53,  %54,  %55},  %56,  p,    %58,  %59; }",
    .saturate = false,
};

pub const MMA_64x208x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x208x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %106, 0; wgmma.mma_async.sync.aligned.m64n208k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103},  %104,  %105,  p,    %107, %108; }",
    .saturate = false,
};

pub const MMA_64x208x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x208x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %109, 0; wgmma.mma_async.sync.aligned.m64n208k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103}, {%104, %105, %106, %107},  %108,  p,    %110, %111; }",
    .saturate = false,
};

pub const MMA_64x216x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x216x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 216, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 54 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %56, 0; wgmma.mma_async.sync.aligned.m64n216k32.f16.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53},  %54,  %55,  p,    %57,  %58; }",
    .saturate = false,
};

pub const MMA_64x216x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x216x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 216, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 54 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %59, 0; wgmma.mma_async.sync.aligned.m64n216k32.f16.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53}, {%54,  %55,  %56,  %57},  %58,  p,    %60,  %61; }",
    .saturate = false,
};

pub const MMA_64x216x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x216x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 216, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 108 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %110, 0; wgmma.mma_async.sync.aligned.m64n216k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107},  %108,  %109,  p,    %111, %112; }",
    .saturate = false,
};

pub const MMA_64x216x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x216x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 216, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 108 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %113, 0; wgmma.mma_async.sync.aligned.m64n216k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107}, {%108, %109, %110, %111},  %112,  p,    %114, %115; }",
    .saturate = false,
};

pub const MMA_64x224x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x224x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %58, 0; wgmma.mma_async.sync.aligned.m64n224k32.f16.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55},  %56,  %57,  p,    %59,  %60; }",
    .saturate = false,
};

pub const MMA_64x224x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x224x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %61, 0; wgmma.mma_async.sync.aligned.m64n224k32.f16.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55}, {%56,  %57,  %58,  %59},  %60,  p,    %62,  %63; }",
    .saturate = false,
};

pub const MMA_64x224x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x224x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %114, 0; wgmma.mma_async.sync.aligned.m64n224k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111},  %112,  %113,  p,    %115, %116; }",
    .saturate = false,
};

pub const MMA_64x224x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x224x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %117, 0; wgmma.mma_async.sync.aligned.m64n224k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111}, {%112, %113, %114, %115},  %116,  p,    %118, %119; }",
    .saturate = false,
};

pub const MMA_64x232x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x232x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 232, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 58 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %60, 0; wgmma.mma_async.sync.aligned.m64n232k32.f16.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57},  %58,  %59,  p,    %61,  %62; }",
    .saturate = false,
};

pub const MMA_64x232x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x232x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 232, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 58 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %63, 0; wgmma.mma_async.sync.aligned.m64n232k32.f16.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57}, {%58,  %59,  %60,  %61},  %62,  p,    %64,  %65; }",
    .saturate = false,
};

pub const MMA_64x232x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x232x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 232, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 116 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %118, 0; wgmma.mma_async.sync.aligned.m64n232k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115},  %116,  %117,  p,    %119, %120; }",
    .saturate = false,
};

pub const MMA_64x232x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x232x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 232, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 116 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %121, 0; wgmma.mma_async.sync.aligned.m64n232k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115}, {%116, %117, %118, %119},  %120,  p,    %122, %123; }",
    .saturate = false,
};

pub const MMA_64x240x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x240x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 60 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %62, 0; wgmma.mma_async.sync.aligned.m64n240k32.f16.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59},  %60,  %61,  p,    %63,  %64; }",
    .saturate = false,
};

pub const MMA_64x240x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x240x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 60 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %65, 0; wgmma.mma_async.sync.aligned.m64n240k32.f16.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59}, {%60,  %61,  %62,  %63},  %64,  p,    %66,  %67; }",
    .saturate = false,
};

pub const MMA_64x240x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x240x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %122, 0; wgmma.mma_async.sync.aligned.m64n240k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119},  %120,  %121,  p,    %123, %124; }",
    .saturate = false,
};

pub const MMA_64x240x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x240x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %125, 0; wgmma.mma_async.sync.aligned.m64n240k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119}, {%120, %121, %122, %123},  %124,  p,    %126, %127; }",
    .saturate = false,
};

pub const MMA_64x248x32_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x248x32_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 248, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 62 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %64, 0; wgmma.mma_async.sync.aligned.m64n248k32.f16.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61},  %62,  %63,  p,    %65,  %66; }",
    .saturate = false,
};

pub const MMA_64x248x32_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x248x32_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 248, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 62 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %67, 0; wgmma.mma_async.sync.aligned.m64n248k32.f16.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61}, {%62,  %63,  %64,  %65},  %66,  p,    %68,  %69; }",
    .saturate = false,
};

pub const MMA_64x248x32_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x248x32_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 248, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 124 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %126, 0; wgmma.mma_async.sync.aligned.m64n248k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123},  %124,  %125,  p,    %127, %128; }",
    .saturate = false,
};

pub const MMA_64x248x32_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x248x32_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 248, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 124 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %129, 0; wgmma.mma_async.sync.aligned.m64n248k32.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123}, {%124, %125, %126, %127},  %128,  p,    %130, %131; }",
    .saturate = false,
};

pub const MMA_64x24x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x24x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 6 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sync.aligned.m64n24k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5},  %6,  %7,  p,   %9,  %10; }",
    .saturate = false,
};

pub const MMA_64x24x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x24x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 6 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sync.aligned.m64n24k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5}, {%6,  %7,  %8,  %9},  %10,  p,   %12, %13; }",
    .saturate = false,
};

pub const MMA_64x24x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x24x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %14, 0; wgmma.mma_async.sync.aligned.m64n24k32.f32.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11},  %12,  %13,  p,   %15, %16; }",
    .saturate = false,
};

pub const MMA_64x24x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x24x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %17, 0; wgmma.mma_async.sync.aligned.m64n24k32.f32.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11}, {%12, %13, %14, %15},  %16,  p,   %18, %19; }",
    .saturate = false,
};

pub const MMA_64x40x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x40x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 40, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 10 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sync.aligned.m64n40k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9},  %10,  %11,  p,   %13, %14; }",
    .saturate = false,
};

pub const MMA_64x40x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x40x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 40, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 10 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sync.aligned.m64n40k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9}, {%10, %11, %12, %13},  %14,  p,   %16, %17; }",
    .saturate = false,
};

pub const MMA_64x40x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x40x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 40, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 20 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %22, 0; wgmma.mma_async.sync.aligned.m64n40k32.f32.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19},  %20,  %21,  p,   %23, %24; }",
    .saturate = false,
};

pub const MMA_64x40x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x40x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 40, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 20 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %25, 0; wgmma.mma_async.sync.aligned.m64n40k32.f32.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19}, {%20, %21, %22, %23},  %24,  p,   %26, %27; }",
    .saturate = false,
};

pub const MMA_64x48x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x48x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %14, 0; wgmma.mma_async.sync.aligned.m64n48k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11},  %12,  %13,  p,   %15, %16; }",
    .saturate = false,
};

pub const MMA_64x48x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x48x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %17, 0; wgmma.mma_async.sync.aligned.m64n48k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11}, {%12, %13, %14, %15},  %16,  p,   %18, %19; }",
    .saturate = false,
};

pub const MMA_64x48x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x48x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %26, 0; wgmma.mma_async.sync.aligned.m64n48k32.f32.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23},  %24,  %25,  p,   %27, %28; }",
    .saturate = false,
};

pub const MMA_64x48x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x48x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %29, 0; wgmma.mma_async.sync.aligned.m64n48k32.f32.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23}, {%24, %25, %26, %27},  %28,  p,   %30, %31; }",
    .saturate = false,
};

pub const MMA_64x56x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x56x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 56, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 14 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %16, 0; wgmma.mma_async.sync.aligned.m64n56k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13},  %14,  %15,  p,   %17, %18; }",
    .saturate = false,
};

pub const MMA_64x56x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x56x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 56, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 14 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %19, 0; wgmma.mma_async.sync.aligned.m64n56k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13}, {%14, %15, %16, %17},  %18,  p,   %20, %21; }",
    .saturate = false,
};

pub const MMA_64x56x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x56x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 56, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 28 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %30, 0; wgmma.mma_async.sync.aligned.m64n56k32.f32.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27},  %28,  %29,  p,   %31, %32; }",
    .saturate = false,
};

pub const MMA_64x56x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x56x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 56, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 28 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %33, 0; wgmma.mma_async.sync.aligned.m64n56k32.f32.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27}, {%28, %29, %30, %31},  %32,  p,   %34, %35; }",
    .saturate = false,
};

pub const MMA_64x72x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x72x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 72, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 18 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sync.aligned.m64n72k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17},  %18,  %19,  p,   %21, %22; }",
    .saturate = false,
};

pub const MMA_64x72x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x72x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 72, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 18 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sync.aligned.m64n72k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17}, {%18, %19, %20, %21},  %22,  p,   %24, %25; }",
    .saturate = false,
};

pub const MMA_64x72x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x72x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 72, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 36 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %38, 0; wgmma.mma_async.sync.aligned.m64n72k32.f32.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35},  %36,  %37,  p,   %39, %40; }",
    .saturate = false,
};

pub const MMA_64x72x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x72x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 72, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 36 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %41, 0; wgmma.mma_async.sync.aligned.m64n72k32.f32.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35}, {%36, %37, %38, %39},  %40,  p,   %42, %43; }",
    .saturate = false,
};

pub const MMA_64x80x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x80x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 20 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %22, 0; wgmma.mma_async.sync.aligned.m64n80k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19},  %20,  %21,  p,   %23, %24; }",
    .saturate = false,
};

pub const MMA_64x80x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x80x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 20 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %25, 0; wgmma.mma_async.sync.aligned.m64n80k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19}, {%20, %21, %22, %23},  %24,  p,   %26, %27; }",
    .saturate = false,
};

pub const MMA_64x80x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x80x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %42, 0; wgmma.mma_async.sync.aligned.m64n80k32.f32.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39},  %40,  %41,  p,   %43, %44; }",
    .saturate = false,
};

pub const MMA_64x80x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x80x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %45, 0; wgmma.mma_async.sync.aligned.m64n80k32.f32.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39}, {%40, %41, %42, %43},  %44,  p,   %46, %47; }",
    .saturate = false,
};

pub const MMA_64x88x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x88x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 88, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 22 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %24, 0; wgmma.mma_async.sync.aligned.m64n88k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21},  %22,  %23,  p,   %25, %26; }",
    .saturate = false,
};

pub const MMA_64x88x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x88x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 88, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 22 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %27, 0; wgmma.mma_async.sync.aligned.m64n88k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21}, {%22, %23, %24, %25},  %26,  p,   %28, %29; }",
    .saturate = false,
};

pub const MMA_64x88x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x88x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 88, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 44 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %46, 0; wgmma.mma_async.sync.aligned.m64n88k32.f32.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43},  %44,  %45,  p,   %47, %48; }",
    .saturate = false,
};

pub const MMA_64x88x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x88x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 88, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 44 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %49, 0; wgmma.mma_async.sync.aligned.m64n88k32.f32.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43}, {%44, %45, %46, %47},  %48,  p,   %50, %51; }",
    .saturate = false,
};

pub const MMA_64x104x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x104x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 104, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 26 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %28, 0; wgmma.mma_async.sync.aligned.m64n104k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25},  %26,  %27,  p,   %29, %30; }",
    .saturate = false,
};

pub const MMA_64x104x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x104x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 104, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 26 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %31, 0; wgmma.mma_async.sync.aligned.m64n104k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25}, {%26, %27, %28, %29},  %30,  p,   %32, %33; }",
    .saturate = false,
};

pub const MMA_64x104x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x104x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 104, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 52 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %54, 0; wgmma.mma_async.sync.aligned.m64n104k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51},  %52,  %53,  p,    %55,  %56; }",
    .saturate = false,
};

pub const MMA_64x104x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x104x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 104, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 52 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %57, 0; wgmma.mma_async.sync.aligned.m64n104k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51}, {%52,  %53,  %54,  %55},  %56,  p,    %58,  %59; }",
    .saturate = false,
};

pub const MMA_64x112x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x112x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 28 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %30, 0; wgmma.mma_async.sync.aligned.m64n112k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27},  %28,  %29,  p,   %31, %32; }",
    .saturate = false,
};

pub const MMA_64x112x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x112x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 28 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %33, 0; wgmma.mma_async.sync.aligned.m64n112k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27}, {%28, %29, %30, %31},  %32,  p,   %34, %35; }",
    .saturate = false,
};

pub const MMA_64x112x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x112x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %58, 0; wgmma.mma_async.sync.aligned.m64n112k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55},  %56,  %57,  p,    %59,  %60; }",
    .saturate = false,
};

pub const MMA_64x112x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x112x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %61, 0; wgmma.mma_async.sync.aligned.m64n112k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55}, {%56,  %57,  %58,  %59},  %60,  p,    %62,  %63; }",
    .saturate = false,
};

pub const MMA_64x120x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x120x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 120, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 30 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %32, 0; wgmma.mma_async.sync.aligned.m64n120k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29},  %30,  %31,  p,   %33, %34; }",
    .saturate = false,
};

pub const MMA_64x120x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x120x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 120, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 30 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %35, 0; wgmma.mma_async.sync.aligned.m64n120k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29}, {%30, %31, %32, %33},  %34,  p,   %36, %37; }",
    .saturate = false,
};

pub const MMA_64x120x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x120x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 120, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 60 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %62, 0; wgmma.mma_async.sync.aligned.m64n120k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59},  %60,  %61,  p,    %63,  %64; }",
    .saturate = false,
};

pub const MMA_64x120x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x120x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 120, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 60 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %65, 0; wgmma.mma_async.sync.aligned.m64n120k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59}, {%60,  %61,  %62,  %63},  %64,  p,    %66,  %67; }",
    .saturate = false,
};

pub const MMA_64x136x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x136x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 136, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 34 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sync.aligned.m64n136k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33},  %34,  %35,  p,   %37, %38; }",
    .saturate = false,
};

pub const MMA_64x136x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x136x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 136, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 34 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sync.aligned.m64n136k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33}, {%34, %35, %36, %37},  %38,  p,   %40, %41; }",
    .saturate = false,
};

pub const MMA_64x136x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x136x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 136, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 68 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %70, 0; wgmma.mma_async.sync.aligned.m64n136k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67},  %68,  %69,  p,    %71,  %72; }",
    .saturate = false,
};

pub const MMA_64x136x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x136x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 136, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 68 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %73, 0; wgmma.mma_async.sync.aligned.m64n136k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67}, {%68,  %69,  %70,  %71},  %72,  p,    %74,  %75; }",
    .saturate = false,
};

pub const MMA_64x144x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x144x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 36 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %38, 0; wgmma.mma_async.sync.aligned.m64n144k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35},  %36,  %37,  p,   %39, %40; }",
    .saturate = false,
};

pub const MMA_64x144x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x144x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 36 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %41, 0; wgmma.mma_async.sync.aligned.m64n144k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35}, {%36, %37, %38, %39},  %40,  p,   %42, %43; }",
    .saturate = false,
};

pub const MMA_64x144x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x144x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %74, 0; wgmma.mma_async.sync.aligned.m64n144k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71},  %72,  %73,  p,    %75,  %76; }",
    .saturate = false,
};

pub const MMA_64x144x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x144x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %77, 0; wgmma.mma_async.sync.aligned.m64n144k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71}, {%72,  %73,  %74,  %75},  %76,  p,    %78,  %79; }",
    .saturate = false,
};

pub const MMA_64x152x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x152x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 152, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 38 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %40, 0; wgmma.mma_async.sync.aligned.m64n152k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37},  %38,  %39,  p,   %41, %42; }",
    .saturate = false,
};

pub const MMA_64x152x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x152x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 152, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 38 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %43, 0; wgmma.mma_async.sync.aligned.m64n152k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37}, {%38, %39, %40, %41},  %42,  p,   %44, %45; }",
    .saturate = false,
};

pub const MMA_64x152x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x152x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 152, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 76 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %78, 0; wgmma.mma_async.sync.aligned.m64n152k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75},  %76,  %77,  p,    %79,  %80; }",
    .saturate = false,
};

pub const MMA_64x152x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x152x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 152, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 76 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %81, 0; wgmma.mma_async.sync.aligned.m64n152k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75}, {%76,  %77,  %78,  %79},  %80,  p,    %82,  %83; }",
    .saturate = false,
};

pub const MMA_64x160x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x160x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %42, 0; wgmma.mma_async.sync.aligned.m64n160k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39},  %40,  %41,  p,   %43, %44; }",
    .saturate = false,
};

pub const MMA_64x160x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x160x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %45, 0; wgmma.mma_async.sync.aligned.m64n160k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39}, {%40, %41, %42, %43},  %44,  p,   %46, %47; }",
    .saturate = false,
};

pub const MMA_64x160x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x160x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %82, 0; wgmma.mma_async.sync.aligned.m64n160k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79},  %80,  %81,  p,    %83,  %84; }",
    .saturate = false,
};

pub const MMA_64x160x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x160x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %85, 0; wgmma.mma_async.sync.aligned.m64n160k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79}, {%80,  %81,  %82,  %83},  %84,  p,    %86,  %87; }",
    .saturate = false,
};

pub const MMA_64x168x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x168x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 168, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 42 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %44, 0; wgmma.mma_async.sync.aligned.m64n168k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41},  %42,  %43,  p,   %45, %46; }",
    .saturate = false,
};

pub const MMA_64x168x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x168x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 168, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 42 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %47, 0; wgmma.mma_async.sync.aligned.m64n168k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41}, {%42, %43, %44, %45},  %46,  p,   %48, %49; }",
    .saturate = false,
};

pub const MMA_64x168x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x168x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 168, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 84 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %86, 0; wgmma.mma_async.sync.aligned.m64n168k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83},  %84,  %85,  p,    %87,  %88; }",
    .saturate = false,
};

pub const MMA_64x168x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x168x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 168, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 84 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %89, 0; wgmma.mma_async.sync.aligned.m64n168k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83}, {%84,  %85,  %86,  %87},  %88,  p,    %90,  %91; }",
    .saturate = false,
};

pub const MMA_64x176x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x176x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 44 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %46, 0; wgmma.mma_async.sync.aligned.m64n176k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43},  %44,  %45,  p,   %47, %48; }",
    .saturate = false,
};

pub const MMA_64x176x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x176x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 44 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %49, 0; wgmma.mma_async.sync.aligned.m64n176k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43}, {%44, %45, %46, %47},  %48,  p,   %50, %51; }",
    .saturate = false,
};

pub const MMA_64x176x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x176x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %90, 0; wgmma.mma_async.sync.aligned.m64n176k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87},  %88,  %89,  p,    %91,  %92; }",
    .saturate = false,
};

pub const MMA_64x176x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x176x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %93, 0; wgmma.mma_async.sync.aligned.m64n176k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87}, {%88,  %89,  %90,  %91},  %92,  p,    %94,  %95; }",
    .saturate = false,
};

pub const MMA_64x184x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x184x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 184, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 46 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %48, 0; wgmma.mma_async.sync.aligned.m64n184k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45},  %46,  %47,  p,   %49, %50; }",
    .saturate = false,
};

pub const MMA_64x184x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x184x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 184, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 46 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %51, 0; wgmma.mma_async.sync.aligned.m64n184k32.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45}, {%46, %47, %48, %49},  %50,  p,   %52, %53; }",
    .saturate = false,
};

pub const MMA_64x184x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x184x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 184, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 92 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %94, 0; wgmma.mma_async.sync.aligned.m64n184k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91},  %92,  %93,  p,    %95,  %96; }",
    .saturate = false,
};

pub const MMA_64x184x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x184x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 184, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 92 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %97, 0; wgmma.mma_async.sync.aligned.m64n184k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91}, {%92,  %93,  %94,  %95},  %96,  p,    %98,  %99; }",
    .saturate = false,
};

pub const MMA_64x200x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x200x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 200, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 50 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sync.aligned.m64n200k32.f16.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49},  %50,  %51,  p,    %53,  %54; }",
    .saturate = false,
};

pub const MMA_64x200x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x200x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 200, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 50 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sync.aligned.m64n200k32.f16.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49}, {%50,  %51,  %52,  %53},  %54,  p,    %56,  %57; }",
    .saturate = false,
};

pub const MMA_64x200x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x200x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 200, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 100 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %102, 0; wgmma.mma_async.sync.aligned.m64n200k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99},  %100,  %101,  p,    %103, %104; }",
    .saturate = false,
};

pub const MMA_64x200x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x200x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 200, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 100 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %105, 0; wgmma.mma_async.sync.aligned.m64n200k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99}, {%100, %101, %102, %103},  %104,  p,    %106, %107; }",
    .saturate = false,
};

pub const MMA_64x208x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x208x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 52 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %54, 0; wgmma.mma_async.sync.aligned.m64n208k32.f16.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51},  %52,  %53,  p,    %55,  %56; }",
    .saturate = false,
};

pub const MMA_64x208x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x208x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 52 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %57, 0; wgmma.mma_async.sync.aligned.m64n208k32.f16.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51}, {%52,  %53,  %54,  %55},  %56,  p,    %58,  %59; }",
    .saturate = false,
};

pub const MMA_64x208x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x208x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %106, 0; wgmma.mma_async.sync.aligned.m64n208k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103},  %104,  %105,  p,    %107, %108; }",
    .saturate = false,
};

pub const MMA_64x208x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x208x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %109, 0; wgmma.mma_async.sync.aligned.m64n208k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103}, {%104, %105, %106, %107},  %108,  p,    %110, %111; }",
    .saturate = false,
};

pub const MMA_64x216x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x216x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 216, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 54 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %56, 0; wgmma.mma_async.sync.aligned.m64n216k32.f16.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53},  %54,  %55,  p,    %57,  %58; }",
    .saturate = false,
};

pub const MMA_64x216x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x216x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 216, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 54 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %59, 0; wgmma.mma_async.sync.aligned.m64n216k32.f16.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53}, {%54,  %55,  %56,  %57},  %58,  p,    %60,  %61; }",
    .saturate = false,
};

pub const MMA_64x216x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x216x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 216, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 108 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %110, 0; wgmma.mma_async.sync.aligned.m64n216k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107},  %108,  %109,  p,    %111, %112; }",
    .saturate = false,
};

pub const MMA_64x216x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x216x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 216, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 108 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %113, 0; wgmma.mma_async.sync.aligned.m64n216k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107}, {%108, %109, %110, %111},  %112,  p,    %114, %115; }",
    .saturate = false,
};

pub const MMA_64x224x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x224x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %58, 0; wgmma.mma_async.sync.aligned.m64n224k32.f16.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55},  %56,  %57,  p,    %59,  %60; }",
    .saturate = false,
};

pub const MMA_64x224x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x224x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %61, 0; wgmma.mma_async.sync.aligned.m64n224k32.f16.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55}, {%56,  %57,  %58,  %59},  %60,  p,    %62,  %63; }",
    .saturate = false,
};

pub const MMA_64x224x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x224x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %114, 0; wgmma.mma_async.sync.aligned.m64n224k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111},  %112,  %113,  p,    %115, %116; }",
    .saturate = false,
};

pub const MMA_64x224x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x224x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %117, 0; wgmma.mma_async.sync.aligned.m64n224k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111}, {%112, %113, %114, %115},  %116,  p,    %118, %119; }",
    .saturate = false,
};

pub const MMA_64x232x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x232x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 232, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 58 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %60, 0; wgmma.mma_async.sync.aligned.m64n232k32.f16.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57},  %58,  %59,  p,    %61,  %62; }",
    .saturate = false,
};

pub const MMA_64x232x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x232x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 232, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 58 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %63, 0; wgmma.mma_async.sync.aligned.m64n232k32.f16.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57}, {%58,  %59,  %60,  %61},  %62,  p,    %64,  %65; }",
    .saturate = false,
};

pub const MMA_64x232x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x232x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 232, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 116 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %118, 0; wgmma.mma_async.sync.aligned.m64n232k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115},  %116,  %117,  p,    %119, %120; }",
    .saturate = false,
};

pub const MMA_64x232x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x232x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 232, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 116 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %121, 0; wgmma.mma_async.sync.aligned.m64n232k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115}, {%116, %117, %118, %119},  %120,  p,    %122, %123; }",
    .saturate = false,
};

pub const MMA_64x240x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x240x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 60 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %62, 0; wgmma.mma_async.sync.aligned.m64n240k32.f16.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59},  %60,  %61,  p,    %63,  %64; }",
    .saturate = false,
};

pub const MMA_64x240x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x240x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 60 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %65, 0; wgmma.mma_async.sync.aligned.m64n240k32.f16.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59}, {%60,  %61,  %62,  %63},  %64,  p,    %66,  %67; }",
    .saturate = false,
};

pub const MMA_64x240x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x240x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %122, 0; wgmma.mma_async.sync.aligned.m64n240k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119},  %120,  %121,  p,    %123, %124; }",
    .saturate = false,
};

pub const MMA_64x240x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x240x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %125, 0; wgmma.mma_async.sync.aligned.m64n240k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119}, {%120, %121, %122, %123},  %124,  p,    %126, %127; }",
    .saturate = false,
};

pub const MMA_64x248x32_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x248x32_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 248, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 62 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %64, 0; wgmma.mma_async.sync.aligned.m64n248k32.f16.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61},  %62,  %63,  p,    %65,  %66; }",
    .saturate = false,
};

pub const MMA_64x248x32_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x248x32_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 248, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 62 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %67, 0; wgmma.mma_async.sync.aligned.m64n248k32.f16.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61}, {%62,  %63,  %64,  %65},  %66,  p,    %68,  %69; }",
    .saturate = false,
};

pub const MMA_64x248x32_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x248x32_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 248, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 124 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %126, 0; wgmma.mma_async.sync.aligned.m64n248k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123},  %124,  %125,  p,    %127, %128; }",
    .saturate = false,
};

pub const MMA_64x248x32_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x248x32_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 248, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 124 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %129, 0; wgmma.mma_async.sync.aligned.m64n248k32.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123}, {%124, %125, %126, %127},  %128,  p,    %130, %131; }",
    .saturate = false,
};

pub const MMA_64x24x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x24x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 6 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sync.aligned.m64n24k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5},  %6,  %7,  p,   %9,  %10; }",
    .saturate = false,
};

pub const MMA_64x24x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x24x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 6 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sync.aligned.m64n24k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5}, {%6,  %7,  %8,  %9},  %10,  p,   %12, %13; }",
    .saturate = false,
};

pub const MMA_64x24x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x24x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %14, 0; wgmma.mma_async.sync.aligned.m64n24k32.f32.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11},  %12,  %13,  p,   %15, %16; }",
    .saturate = false,
};

pub const MMA_64x24x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x24x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %17, 0; wgmma.mma_async.sync.aligned.m64n24k32.f32.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11}, {%12, %13, %14, %15},  %16,  p,   %18, %19; }",
    .saturate = false,
};

pub const MMA_64x40x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x40x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 40, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 10 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sync.aligned.m64n40k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9},  %10,  %11,  p,   %13, %14; }",
    .saturate = false,
};

pub const MMA_64x40x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x40x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 40, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 10 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sync.aligned.m64n40k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9}, {%10, %11, %12, %13},  %14,  p,   %16, %17; }",
    .saturate = false,
};

pub const MMA_64x40x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x40x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 40, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 20 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %22, 0; wgmma.mma_async.sync.aligned.m64n40k32.f32.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19},  %20,  %21,  p,   %23, %24; }",
    .saturate = false,
};

pub const MMA_64x40x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x40x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 40, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 20 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %25, 0; wgmma.mma_async.sync.aligned.m64n40k32.f32.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19}, {%20, %21, %22, %23},  %24,  p,   %26, %27; }",
    .saturate = false,
};

pub const MMA_64x48x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x48x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %14, 0; wgmma.mma_async.sync.aligned.m64n48k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11},  %12,  %13,  p,   %15, %16; }",
    .saturate = false,
};

pub const MMA_64x48x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x48x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %17, 0; wgmma.mma_async.sync.aligned.m64n48k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11}, {%12, %13, %14, %15},  %16,  p,   %18, %19; }",
    .saturate = false,
};

pub const MMA_64x48x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x48x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %26, 0; wgmma.mma_async.sync.aligned.m64n48k32.f32.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23},  %24,  %25,  p,   %27, %28; }",
    .saturate = false,
};

pub const MMA_64x48x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x48x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %29, 0; wgmma.mma_async.sync.aligned.m64n48k32.f32.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23}, {%24, %25, %26, %27},  %28,  p,   %30, %31; }",
    .saturate = false,
};

pub const MMA_64x56x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x56x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 56, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 14 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %16, 0; wgmma.mma_async.sync.aligned.m64n56k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13},  %14,  %15,  p,   %17, %18; }",
    .saturate = false,
};

pub const MMA_64x56x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x56x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 56, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 14 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %19, 0; wgmma.mma_async.sync.aligned.m64n56k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13}, {%14, %15, %16, %17},  %18,  p,   %20, %21; }",
    .saturate = false,
};

pub const MMA_64x56x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x56x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 56, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 28 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %30, 0; wgmma.mma_async.sync.aligned.m64n56k32.f32.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27},  %28,  %29,  p,   %31, %32; }",
    .saturate = false,
};

pub const MMA_64x56x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x56x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 56, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 28 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %33, 0; wgmma.mma_async.sync.aligned.m64n56k32.f32.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27}, {%28, %29, %30, %31},  %32,  p,   %34, %35; }",
    .saturate = false,
};

pub const MMA_64x72x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x72x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 72, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 18 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sync.aligned.m64n72k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17},  %18,  %19,  p,   %21, %22; }",
    .saturate = false,
};

pub const MMA_64x72x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x72x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 72, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 18 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sync.aligned.m64n72k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17}, {%18, %19, %20, %21},  %22,  p,   %24, %25; }",
    .saturate = false,
};

pub const MMA_64x72x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x72x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 72, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 36 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %38, 0; wgmma.mma_async.sync.aligned.m64n72k32.f32.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35},  %36,  %37,  p,   %39, %40; }",
    .saturate = false,
};

pub const MMA_64x72x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x72x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 72, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 36 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %41, 0; wgmma.mma_async.sync.aligned.m64n72k32.f32.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35}, {%36, %37, %38, %39},  %40,  p,   %42, %43; }",
    .saturate = false,
};

pub const MMA_64x80x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x80x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 20 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %22, 0; wgmma.mma_async.sync.aligned.m64n80k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19},  %20,  %21,  p,   %23, %24; }",
    .saturate = false,
};

pub const MMA_64x80x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x80x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 20 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %25, 0; wgmma.mma_async.sync.aligned.m64n80k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19}, {%20, %21, %22, %23},  %24,  p,   %26, %27; }",
    .saturate = false,
};

pub const MMA_64x80x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x80x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %42, 0; wgmma.mma_async.sync.aligned.m64n80k32.f32.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39},  %40,  %41,  p,   %43, %44; }",
    .saturate = false,
};

pub const MMA_64x80x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x80x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %45, 0; wgmma.mma_async.sync.aligned.m64n80k32.f32.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39}, {%40, %41, %42, %43},  %44,  p,   %46, %47; }",
    .saturate = false,
};

pub const MMA_64x88x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x88x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 88, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 22 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %24, 0; wgmma.mma_async.sync.aligned.m64n88k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21},  %22,  %23,  p,   %25, %26; }",
    .saturate = false,
};

pub const MMA_64x88x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x88x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 88, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 22 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %27, 0; wgmma.mma_async.sync.aligned.m64n88k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21}, {%22, %23, %24, %25},  %26,  p,   %28, %29; }",
    .saturate = false,
};

pub const MMA_64x88x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x88x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 88, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 44 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %46, 0; wgmma.mma_async.sync.aligned.m64n88k32.f32.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43},  %44,  %45,  p,   %47, %48; }",
    .saturate = false,
};

pub const MMA_64x88x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x88x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 88, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 44 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %49, 0; wgmma.mma_async.sync.aligned.m64n88k32.f32.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43}, {%44, %45, %46, %47},  %48,  p,   %50, %51; }",
    .saturate = false,
};

pub const MMA_64x104x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x104x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 104, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 26 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %28, 0; wgmma.mma_async.sync.aligned.m64n104k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25},  %26,  %27,  p,   %29, %30; }",
    .saturate = false,
};

pub const MMA_64x104x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x104x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 104, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 26 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %31, 0; wgmma.mma_async.sync.aligned.m64n104k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25}, {%26, %27, %28, %29},  %30,  p,   %32, %33; }",
    .saturate = false,
};

pub const MMA_64x104x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x104x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 104, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 52 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %54, 0; wgmma.mma_async.sync.aligned.m64n104k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51},  %52,  %53,  p,    %55,  %56; }",
    .saturate = false,
};

pub const MMA_64x104x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x104x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 104, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 52 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %57, 0; wgmma.mma_async.sync.aligned.m64n104k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51}, {%52,  %53,  %54,  %55},  %56,  p,    %58,  %59; }",
    .saturate = false,
};

pub const MMA_64x112x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x112x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 28 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %30, 0; wgmma.mma_async.sync.aligned.m64n112k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27},  %28,  %29,  p,   %31, %32; }",
    .saturate = false,
};

pub const MMA_64x112x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x112x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 28 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %33, 0; wgmma.mma_async.sync.aligned.m64n112k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27}, {%28, %29, %30, %31},  %32,  p,   %34, %35; }",
    .saturate = false,
};

pub const MMA_64x112x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x112x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %58, 0; wgmma.mma_async.sync.aligned.m64n112k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55},  %56,  %57,  p,    %59,  %60; }",
    .saturate = false,
};

pub const MMA_64x112x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x112x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %61, 0; wgmma.mma_async.sync.aligned.m64n112k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55}, {%56,  %57,  %58,  %59},  %60,  p,    %62,  %63; }",
    .saturate = false,
};

pub const MMA_64x120x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x120x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 120, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 30 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %32, 0; wgmma.mma_async.sync.aligned.m64n120k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29},  %30,  %31,  p,   %33, %34; }",
    .saturate = false,
};

pub const MMA_64x120x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x120x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 120, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 30 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %35, 0; wgmma.mma_async.sync.aligned.m64n120k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29}, {%30, %31, %32, %33},  %34,  p,   %36, %37; }",
    .saturate = false,
};

pub const MMA_64x120x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x120x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 120, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 60 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %62, 0; wgmma.mma_async.sync.aligned.m64n120k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59},  %60,  %61,  p,    %63,  %64; }",
    .saturate = false,
};

pub const MMA_64x120x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x120x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 120, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 60 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %65, 0; wgmma.mma_async.sync.aligned.m64n120k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59}, {%60,  %61,  %62,  %63},  %64,  p,    %66,  %67; }",
    .saturate = false,
};

pub const MMA_64x136x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x136x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 136, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 34 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sync.aligned.m64n136k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33},  %34,  %35,  p,   %37, %38; }",
    .saturate = false,
};

pub const MMA_64x136x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x136x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 136, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 34 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sync.aligned.m64n136k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33}, {%34, %35, %36, %37},  %38,  p,   %40, %41; }",
    .saturate = false,
};

pub const MMA_64x136x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x136x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 136, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 68 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %70, 0; wgmma.mma_async.sync.aligned.m64n136k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67},  %68,  %69,  p,    %71,  %72; }",
    .saturate = false,
};

pub const MMA_64x136x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x136x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 136, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 68 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %73, 0; wgmma.mma_async.sync.aligned.m64n136k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67}, {%68,  %69,  %70,  %71},  %72,  p,    %74,  %75; }",
    .saturate = false,
};

pub const MMA_64x144x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x144x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 36 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %38, 0; wgmma.mma_async.sync.aligned.m64n144k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35},  %36,  %37,  p,   %39, %40; }",
    .saturate = false,
};

pub const MMA_64x144x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x144x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 36 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %41, 0; wgmma.mma_async.sync.aligned.m64n144k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35}, {%36, %37, %38, %39},  %40,  p,   %42, %43; }",
    .saturate = false,
};

pub const MMA_64x144x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x144x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %74, 0; wgmma.mma_async.sync.aligned.m64n144k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71},  %72,  %73,  p,    %75,  %76; }",
    .saturate = false,
};

pub const MMA_64x144x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x144x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %77, 0; wgmma.mma_async.sync.aligned.m64n144k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71}, {%72,  %73,  %74,  %75},  %76,  p,    %78,  %79; }",
    .saturate = false,
};

pub const MMA_64x152x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x152x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 152, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 38 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %40, 0; wgmma.mma_async.sync.aligned.m64n152k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37},  %38,  %39,  p,   %41, %42; }",
    .saturate = false,
};

pub const MMA_64x152x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x152x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 152, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 38 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %43, 0; wgmma.mma_async.sync.aligned.m64n152k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37}, {%38, %39, %40, %41},  %42,  p,   %44, %45; }",
    .saturate = false,
};

pub const MMA_64x152x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x152x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 152, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 76 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %78, 0; wgmma.mma_async.sync.aligned.m64n152k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75},  %76,  %77,  p,    %79,  %80; }",
    .saturate = false,
};

pub const MMA_64x152x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x152x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 152, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 76 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %81, 0; wgmma.mma_async.sync.aligned.m64n152k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75}, {%76,  %77,  %78,  %79},  %80,  p,    %82,  %83; }",
    .saturate = false,
};

pub const MMA_64x160x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x160x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %42, 0; wgmma.mma_async.sync.aligned.m64n160k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39},  %40,  %41,  p,   %43, %44; }",
    .saturate = false,
};

pub const MMA_64x160x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x160x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %45, 0; wgmma.mma_async.sync.aligned.m64n160k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39}, {%40, %41, %42, %43},  %44,  p,   %46, %47; }",
    .saturate = false,
};

pub const MMA_64x160x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x160x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %82, 0; wgmma.mma_async.sync.aligned.m64n160k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79},  %80,  %81,  p,    %83,  %84; }",
    .saturate = false,
};

pub const MMA_64x160x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x160x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %85, 0; wgmma.mma_async.sync.aligned.m64n160k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79}, {%80,  %81,  %82,  %83},  %84,  p,    %86,  %87; }",
    .saturate = false,
};

pub const MMA_64x168x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x168x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 168, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 42 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %44, 0; wgmma.mma_async.sync.aligned.m64n168k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41},  %42,  %43,  p,   %45, %46; }",
    .saturate = false,
};

pub const MMA_64x168x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x168x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 168, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 42 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %47, 0; wgmma.mma_async.sync.aligned.m64n168k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41}, {%42, %43, %44, %45},  %46,  p,   %48, %49; }",
    .saturate = false,
};

pub const MMA_64x168x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x168x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 168, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 84 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %86, 0; wgmma.mma_async.sync.aligned.m64n168k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83},  %84,  %85,  p,    %87,  %88; }",
    .saturate = false,
};

pub const MMA_64x168x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x168x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 168, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 84 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %89, 0; wgmma.mma_async.sync.aligned.m64n168k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83}, {%84,  %85,  %86,  %87},  %88,  p,    %90,  %91; }",
    .saturate = false,
};

pub const MMA_64x176x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x176x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 44 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %46, 0; wgmma.mma_async.sync.aligned.m64n176k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43},  %44,  %45,  p,   %47, %48; }",
    .saturate = false,
};

pub const MMA_64x176x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x176x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 44 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %49, 0; wgmma.mma_async.sync.aligned.m64n176k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43}, {%44, %45, %46, %47},  %48,  p,   %50, %51; }",
    .saturate = false,
};

pub const MMA_64x176x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x176x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %90, 0; wgmma.mma_async.sync.aligned.m64n176k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87},  %88,  %89,  p,    %91,  %92; }",
    .saturate = false,
};

pub const MMA_64x176x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x176x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %93, 0; wgmma.mma_async.sync.aligned.m64n176k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87}, {%88,  %89,  %90,  %91},  %92,  p,    %94,  %95; }",
    .saturate = false,
};

pub const MMA_64x184x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x184x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 184, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 46 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %48, 0; wgmma.mma_async.sync.aligned.m64n184k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45},  %46,  %47,  p,   %49, %50; }",
    .saturate = false,
};

pub const MMA_64x184x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x184x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 184, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 46 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %51, 0; wgmma.mma_async.sync.aligned.m64n184k32.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45}, {%46, %47, %48, %49},  %50,  p,   %52, %53; }",
    .saturate = false,
};

pub const MMA_64x184x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x184x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 184, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 92 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %94, 0; wgmma.mma_async.sync.aligned.m64n184k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91},  %92,  %93,  p,    %95,  %96; }",
    .saturate = false,
};

pub const MMA_64x184x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x184x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 184, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 92 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %97, 0; wgmma.mma_async.sync.aligned.m64n184k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91}, {%92,  %93,  %94,  %95},  %96,  p,    %98,  %99; }",
    .saturate = false,
};

pub const MMA_64x200x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x200x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 200, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 50 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sync.aligned.m64n200k32.f16.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49},  %50,  %51,  p,    %53,  %54; }",
    .saturate = false,
};

pub const MMA_64x200x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x200x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 200, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 50 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sync.aligned.m64n200k32.f16.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49}, {%50,  %51,  %52,  %53},  %54,  p,    %56,  %57; }",
    .saturate = false,
};

pub const MMA_64x200x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x200x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 200, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 100 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %102, 0; wgmma.mma_async.sync.aligned.m64n200k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99},  %100,  %101,  p,    %103, %104; }",
    .saturate = false,
};

pub const MMA_64x200x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x200x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 200, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 100 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %105, 0; wgmma.mma_async.sync.aligned.m64n200k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99}, {%100, %101, %102, %103},  %104,  p,    %106, %107; }",
    .saturate = false,
};

pub const MMA_64x208x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x208x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 52 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %54, 0; wgmma.mma_async.sync.aligned.m64n208k32.f16.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51},  %52,  %53,  p,    %55,  %56; }",
    .saturate = false,
};

pub const MMA_64x208x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x208x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 52 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %57, 0; wgmma.mma_async.sync.aligned.m64n208k32.f16.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51}, {%52,  %53,  %54,  %55},  %56,  p,    %58,  %59; }",
    .saturate = false,
};

pub const MMA_64x208x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x208x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %106, 0; wgmma.mma_async.sync.aligned.m64n208k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103},  %104,  %105,  p,    %107, %108; }",
    .saturate = false,
};

pub const MMA_64x208x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x208x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %109, 0; wgmma.mma_async.sync.aligned.m64n208k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103}, {%104, %105, %106, %107},  %108,  p,    %110, %111; }",
    .saturate = false,
};

pub const MMA_64x216x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x216x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 216, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 54 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %56, 0; wgmma.mma_async.sync.aligned.m64n216k32.f16.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53},  %54,  %55,  p,    %57,  %58; }",
    .saturate = false,
};

pub const MMA_64x216x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x216x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 216, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 54 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %59, 0; wgmma.mma_async.sync.aligned.m64n216k32.f16.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53}, {%54,  %55,  %56,  %57},  %58,  p,    %60,  %61; }",
    .saturate = false,
};

pub const MMA_64x216x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x216x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 216, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 108 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %110, 0; wgmma.mma_async.sync.aligned.m64n216k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107},  %108,  %109,  p,    %111, %112; }",
    .saturate = false,
};

pub const MMA_64x216x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x216x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 216, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 108 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %113, 0; wgmma.mma_async.sync.aligned.m64n216k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107}, {%108, %109, %110, %111},  %112,  p,    %114, %115; }",
    .saturate = false,
};

pub const MMA_64x224x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x224x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %58, 0; wgmma.mma_async.sync.aligned.m64n224k32.f16.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55},  %56,  %57,  p,    %59,  %60; }",
    .saturate = false,
};

pub const MMA_64x224x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x224x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %61, 0; wgmma.mma_async.sync.aligned.m64n224k32.f16.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55}, {%56,  %57,  %58,  %59},  %60,  p,    %62,  %63; }",
    .saturate = false,
};

pub const MMA_64x224x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x224x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %114, 0; wgmma.mma_async.sync.aligned.m64n224k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111},  %112,  %113,  p,    %115, %116; }",
    .saturate = false,
};

pub const MMA_64x224x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x224x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %117, 0; wgmma.mma_async.sync.aligned.m64n224k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111}, {%112, %113, %114, %115},  %116,  p,    %118, %119; }",
    .saturate = false,
};

pub const MMA_64x232x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x232x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 232, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 58 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %60, 0; wgmma.mma_async.sync.aligned.m64n232k32.f16.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57},  %58,  %59,  p,    %61,  %62; }",
    .saturate = false,
};

pub const MMA_64x232x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x232x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 232, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 58 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %63, 0; wgmma.mma_async.sync.aligned.m64n232k32.f16.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57}, {%58,  %59,  %60,  %61},  %62,  p,    %64,  %65; }",
    .saturate = false,
};

pub const MMA_64x232x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x232x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 232, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 116 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %118, 0; wgmma.mma_async.sync.aligned.m64n232k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115},  %116,  %117,  p,    %119, %120; }",
    .saturate = false,
};

pub const MMA_64x232x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x232x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 232, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 116 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %121, 0; wgmma.mma_async.sync.aligned.m64n232k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115}, {%116, %117, %118, %119},  %120,  p,    %122, %123; }",
    .saturate = false,
};

pub const MMA_64x240x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x240x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 60 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %62, 0; wgmma.mma_async.sync.aligned.m64n240k32.f16.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59},  %60,  %61,  p,    %63,  %64; }",
    .saturate = false,
};

pub const MMA_64x240x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x240x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 60 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %65, 0; wgmma.mma_async.sync.aligned.m64n240k32.f16.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59}, {%60,  %61,  %62,  %63},  %64,  p,    %66,  %67; }",
    .saturate = false,
};

pub const MMA_64x240x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x240x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %122, 0; wgmma.mma_async.sync.aligned.m64n240k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119},  %120,  %121,  p,    %123, %124; }",
    .saturate = false,
};

pub const MMA_64x240x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x240x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %125, 0; wgmma.mma_async.sync.aligned.m64n240k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119}, {%120, %121, %122, %123},  %124,  p,    %126, %127; }",
    .saturate = false,
};

pub const MMA_64x248x32_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x248x32_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 248, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 62 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %64, 0; wgmma.mma_async.sync.aligned.m64n248k32.f16.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61},  %62,  %63,  p,    %65,  %66; }",
    .saturate = false,
};

pub const MMA_64x248x32_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x248x32_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 248, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 62 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %67, 0; wgmma.mma_async.sync.aligned.m64n248k32.f16.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61}, {%62,  %63,  %64,  %65},  %66,  p,    %68,  %69; }",
    .saturate = false,
};

pub const MMA_64x248x32_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "MMA_64x248x32_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 248, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 124 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %126, 0; wgmma.mma_async.sync.aligned.m64n248k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123},  %124,  %125,  p,    %127, %128; }",
    .saturate = false,
};

pub const MMA_64x248x32_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "MMA_64x248x32_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 248, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 124 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %129, 0; wgmma.mma_async.sync.aligned.m64n248k32.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123}, {%124, %125, %126, %127},  %128,  p,    %130, %131; }",
    .saturate = false,
};

pub const MMA_64x24x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x24x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 6 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sync.aligned.m64n24k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5},  %6,  %7,  p,   %9,  %10; }",
    .saturate = false,
};

pub const MMA_64x24x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x24x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 6 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sync.aligned.m64n24k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5}, {%6,  %7,  %8,  %9},  %10,  p,   %12, %13; }",
    .saturate = false,
};

pub const MMA_64x24x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x24x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %14, 0; wgmma.mma_async.sync.aligned.m64n24k32.f32.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11},  %12,  %13,  p,   %15, %16; }",
    .saturate = false,
};

pub const MMA_64x24x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x24x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 24, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %17, 0; wgmma.mma_async.sync.aligned.m64n24k32.f32.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11}, {%12, %13, %14, %15},  %16,  p,   %18, %19; }",
    .saturate = false,
};

pub const MMA_64x40x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x40x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 40, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 10 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sync.aligned.m64n40k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9},  %10,  %11,  p,   %13, %14; }",
    .saturate = false,
};

pub const MMA_64x40x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x40x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 40, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 10 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sync.aligned.m64n40k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9}, {%10, %11, %12, %13},  %14,  p,   %16, %17; }",
    .saturate = false,
};

pub const MMA_64x40x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x40x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 40, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 20 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %22, 0; wgmma.mma_async.sync.aligned.m64n40k32.f32.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19},  %20,  %21,  p,   %23, %24; }",
    .saturate = false,
};

pub const MMA_64x40x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x40x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 40, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 20 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %25, 0; wgmma.mma_async.sync.aligned.m64n40k32.f32.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19}, {%20, %21, %22, %23},  %24,  p,   %26, %27; }",
    .saturate = false,
};

pub const MMA_64x48x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x48x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %14, 0; wgmma.mma_async.sync.aligned.m64n48k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11},  %12,  %13,  p,   %15, %16; }",
    .saturate = false,
};

pub const MMA_64x48x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x48x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 12 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %17, 0; wgmma.mma_async.sync.aligned.m64n48k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11}, {%12, %13, %14, %15},  %16,  p,   %18, %19; }",
    .saturate = false,
};

pub const MMA_64x48x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x48x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %26, 0; wgmma.mma_async.sync.aligned.m64n48k32.f32.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23},  %24,  %25,  p,   %27, %28; }",
    .saturate = false,
};

pub const MMA_64x48x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x48x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 48, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %29, 0; wgmma.mma_async.sync.aligned.m64n48k32.f32.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23}, {%24, %25, %26, %27},  %28,  p,   %30, %31; }",
    .saturate = false,
};

pub const MMA_64x56x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x56x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 56, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 14 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %16, 0; wgmma.mma_async.sync.aligned.m64n56k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13},  %14,  %15,  p,   %17, %18; }",
    .saturate = false,
};

pub const MMA_64x56x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x56x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 56, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 14 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %19, 0; wgmma.mma_async.sync.aligned.m64n56k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13}, {%14, %15, %16, %17},  %18,  p,   %20, %21; }",
    .saturate = false,
};

pub const MMA_64x56x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x56x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 56, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 28 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %30, 0; wgmma.mma_async.sync.aligned.m64n56k32.f32.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27},  %28,  %29,  p,   %31, %32; }",
    .saturate = false,
};

pub const MMA_64x56x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x56x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 56, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 28 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %33, 0; wgmma.mma_async.sync.aligned.m64n56k32.f32.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27}, {%28, %29, %30, %31},  %32,  p,   %34, %35; }",
    .saturate = false,
};

pub const MMA_64x72x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x72x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 72, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 18 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sync.aligned.m64n72k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17},  %18,  %19,  p,   %21, %22; }",
    .saturate = false,
};

pub const MMA_64x72x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x72x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 72, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 18 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sync.aligned.m64n72k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17}, {%18, %19, %20, %21},  %22,  p,   %24, %25; }",
    .saturate = false,
};

pub const MMA_64x72x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x72x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 72, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 36 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %38, 0; wgmma.mma_async.sync.aligned.m64n72k32.f32.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35},  %36,  %37,  p,   %39, %40; }",
    .saturate = false,
};

pub const MMA_64x72x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x72x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 72, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 36 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %41, 0; wgmma.mma_async.sync.aligned.m64n72k32.f32.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35}, {%36, %37, %38, %39},  %40,  p,   %42, %43; }",
    .saturate = false,
};

pub const MMA_64x80x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x80x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 20 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %22, 0; wgmma.mma_async.sync.aligned.m64n80k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19},  %20,  %21,  p,   %23, %24; }",
    .saturate = false,
};

pub const MMA_64x80x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x80x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 20 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %25, 0; wgmma.mma_async.sync.aligned.m64n80k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19}, {%20, %21, %22, %23},  %24,  p,   %26, %27; }",
    .saturate = false,
};

pub const MMA_64x80x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x80x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %42, 0; wgmma.mma_async.sync.aligned.m64n80k32.f32.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39},  %40,  %41,  p,   %43, %44; }",
    .saturate = false,
};

pub const MMA_64x80x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x80x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 80, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %45, 0; wgmma.mma_async.sync.aligned.m64n80k32.f32.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39}, {%40, %41, %42, %43},  %44,  p,   %46, %47; }",
    .saturate = false,
};

pub const MMA_64x88x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x88x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 88, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 22 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %24, 0; wgmma.mma_async.sync.aligned.m64n88k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21},  %22,  %23,  p,   %25, %26; }",
    .saturate = false,
};

pub const MMA_64x88x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x88x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 88, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 22 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %27, 0; wgmma.mma_async.sync.aligned.m64n88k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21}, {%22, %23, %24, %25},  %26,  p,   %28, %29; }",
    .saturate = false,
};

pub const MMA_64x88x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x88x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 88, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 44 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %46, 0; wgmma.mma_async.sync.aligned.m64n88k32.f32.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43},  %44,  %45,  p,   %47, %48; }",
    .saturate = false,
};

pub const MMA_64x88x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x88x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 88, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 44 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %49, 0; wgmma.mma_async.sync.aligned.m64n88k32.f32.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43}, {%44, %45, %46, %47},  %48,  p,   %50, %51; }",
    .saturate = false,
};

pub const MMA_64x104x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x104x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 104, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 26 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %28, 0; wgmma.mma_async.sync.aligned.m64n104k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25},  %26,  %27,  p,   %29, %30; }",
    .saturate = false,
};

pub const MMA_64x104x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x104x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 104, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 26 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %31, 0; wgmma.mma_async.sync.aligned.m64n104k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25}, {%26, %27, %28, %29},  %30,  p,   %32, %33; }",
    .saturate = false,
};

pub const MMA_64x104x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x104x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 104, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 52 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %54, 0; wgmma.mma_async.sync.aligned.m64n104k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51},  %52,  %53,  p,    %55,  %56; }",
    .saturate = false,
};

pub const MMA_64x104x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x104x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 104, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 52 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %57, 0; wgmma.mma_async.sync.aligned.m64n104k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51}, {%52,  %53,  %54,  %55},  %56,  p,    %58,  %59; }",
    .saturate = false,
};

pub const MMA_64x112x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x112x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 28 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %30, 0; wgmma.mma_async.sync.aligned.m64n112k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27},  %28,  %29,  p,   %31, %32; }",
    .saturate = false,
};

pub const MMA_64x112x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x112x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 28 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %33, 0; wgmma.mma_async.sync.aligned.m64n112k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27}, {%28, %29, %30, %31},  %32,  p,   %34, %35; }",
    .saturate = false,
};

pub const MMA_64x112x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x112x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %58, 0; wgmma.mma_async.sync.aligned.m64n112k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55},  %56,  %57,  p,    %59,  %60; }",
    .saturate = false,
};

pub const MMA_64x112x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x112x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 112, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %61, 0; wgmma.mma_async.sync.aligned.m64n112k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55}, {%56,  %57,  %58,  %59},  %60,  p,    %62,  %63; }",
    .saturate = false,
};

pub const MMA_64x120x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x120x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 120, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 30 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %32, 0; wgmma.mma_async.sync.aligned.m64n120k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29},  %30,  %31,  p,   %33, %34; }",
    .saturate = false,
};

pub const MMA_64x120x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x120x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 120, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 30 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %35, 0; wgmma.mma_async.sync.aligned.m64n120k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29}, {%30, %31, %32, %33},  %34,  p,   %36, %37; }",
    .saturate = false,
};

pub const MMA_64x120x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x120x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 120, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 60 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %62, 0; wgmma.mma_async.sync.aligned.m64n120k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59},  %60,  %61,  p,    %63,  %64; }",
    .saturate = false,
};

pub const MMA_64x120x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x120x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 120, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 60 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %65, 0; wgmma.mma_async.sync.aligned.m64n120k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59}, {%60,  %61,  %62,  %63},  %64,  p,    %66,  %67; }",
    .saturate = false,
};

pub const MMA_64x136x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x136x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 136, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 34 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sync.aligned.m64n136k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33},  %34,  %35,  p,   %37, %38; }",
    .saturate = false,
};

pub const MMA_64x136x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x136x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 136, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 34 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sync.aligned.m64n136k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33}, {%34, %35, %36, %37},  %38,  p,   %40, %41; }",
    .saturate = false,
};

pub const MMA_64x136x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x136x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 136, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 68 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %70, 0; wgmma.mma_async.sync.aligned.m64n136k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67},  %68,  %69,  p,    %71,  %72; }",
    .saturate = false,
};

pub const MMA_64x136x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x136x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 136, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 68 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %73, 0; wgmma.mma_async.sync.aligned.m64n136k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67}, {%68,  %69,  %70,  %71},  %72,  p,    %74,  %75; }",
    .saturate = false,
};

pub const MMA_64x144x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x144x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 36 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %38, 0; wgmma.mma_async.sync.aligned.m64n144k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35},  %36,  %37,  p,   %39, %40; }",
    .saturate = false,
};

pub const MMA_64x144x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x144x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 36 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %41, 0; wgmma.mma_async.sync.aligned.m64n144k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35}, {%36, %37, %38, %39},  %40,  p,   %42, %43; }",
    .saturate = false,
};

pub const MMA_64x144x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x144x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %74, 0; wgmma.mma_async.sync.aligned.m64n144k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71},  %72,  %73,  p,    %75,  %76; }",
    .saturate = false,
};

pub const MMA_64x144x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x144x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 144, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 72 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %77, 0; wgmma.mma_async.sync.aligned.m64n144k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71}, {%72,  %73,  %74,  %75},  %76,  p,    %78,  %79; }",
    .saturate = false,
};

pub const MMA_64x152x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x152x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 152, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 38 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %40, 0; wgmma.mma_async.sync.aligned.m64n152k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37},  %38,  %39,  p,   %41, %42; }",
    .saturate = false,
};

pub const MMA_64x152x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x152x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 152, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 38 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %43, 0; wgmma.mma_async.sync.aligned.m64n152k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37}, {%38, %39, %40, %41},  %42,  p,   %44, %45; }",
    .saturate = false,
};

pub const MMA_64x152x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x152x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 152, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 76 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %78, 0; wgmma.mma_async.sync.aligned.m64n152k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75},  %76,  %77,  p,    %79,  %80; }",
    .saturate = false,
};

pub const MMA_64x152x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x152x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 152, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 76 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %81, 0; wgmma.mma_async.sync.aligned.m64n152k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75}, {%76,  %77,  %78,  %79},  %80,  p,    %82,  %83; }",
    .saturate = false,
};

pub const MMA_64x160x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x160x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %42, 0; wgmma.mma_async.sync.aligned.m64n160k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39},  %40,  %41,  p,   %43, %44; }",
    .saturate = false,
};

pub const MMA_64x160x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x160x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 40 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %45, 0; wgmma.mma_async.sync.aligned.m64n160k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39}, {%40, %41, %42, %43},  %44,  p,   %46, %47; }",
    .saturate = false,
};

pub const MMA_64x160x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x160x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %82, 0; wgmma.mma_async.sync.aligned.m64n160k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79},  %80,  %81,  p,    %83,  %84; }",
    .saturate = false,
};

pub const MMA_64x160x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x160x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 160, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 80 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %85, 0; wgmma.mma_async.sync.aligned.m64n160k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79}, {%80,  %81,  %82,  %83},  %84,  p,    %86,  %87; }",
    .saturate = false,
};

pub const MMA_64x168x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x168x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 168, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 42 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %44, 0; wgmma.mma_async.sync.aligned.m64n168k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41},  %42,  %43,  p,   %45, %46; }",
    .saturate = false,
};

pub const MMA_64x168x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x168x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 168, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 42 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %47, 0; wgmma.mma_async.sync.aligned.m64n168k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41}, {%42, %43, %44, %45},  %46,  p,   %48, %49; }",
    .saturate = false,
};

pub const MMA_64x168x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x168x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 168, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 84 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %86, 0; wgmma.mma_async.sync.aligned.m64n168k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83},  %84,  %85,  p,    %87,  %88; }",
    .saturate = false,
};

pub const MMA_64x168x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x168x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 168, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 84 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %89, 0; wgmma.mma_async.sync.aligned.m64n168k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83}, {%84,  %85,  %86,  %87},  %88,  p,    %90,  %91; }",
    .saturate = false,
};

pub const MMA_64x176x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x176x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 44 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %46, 0; wgmma.mma_async.sync.aligned.m64n176k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43},  %44,  %45,  p,   %47, %48; }",
    .saturate = false,
};

pub const MMA_64x176x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x176x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 44 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %49, 0; wgmma.mma_async.sync.aligned.m64n176k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43}, {%44, %45, %46, %47},  %48,  p,   %50, %51; }",
    .saturate = false,
};

pub const MMA_64x176x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x176x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %90, 0; wgmma.mma_async.sync.aligned.m64n176k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87},  %88,  %89,  p,    %91,  %92; }",
    .saturate = false,
};

pub const MMA_64x176x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x176x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 176, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 88 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %93, 0; wgmma.mma_async.sync.aligned.m64n176k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87}, {%88,  %89,  %90,  %91},  %92,  p,    %94,  %95; }",
    .saturate = false,
};

pub const MMA_64x184x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x184x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 184, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 46 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %48, 0; wgmma.mma_async.sync.aligned.m64n184k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45},  %46,  %47,  p,   %49, %50; }",
    .saturate = false,
};

pub const MMA_64x184x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x184x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 184, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 46 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %51, 0; wgmma.mma_async.sync.aligned.m64n184k32.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45}, {%46, %47, %48, %49},  %50,  p,   %52, %53; }",
    .saturate = false,
};

pub const MMA_64x184x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x184x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 184, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 92 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %94, 0; wgmma.mma_async.sync.aligned.m64n184k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91},  %92,  %93,  p,    %95,  %96; }",
    .saturate = false,
};

pub const MMA_64x184x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x184x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 184, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 92 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %97, 0; wgmma.mma_async.sync.aligned.m64n184k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91}, {%92,  %93,  %94,  %95},  %96,  p,    %98,  %99; }",
    .saturate = false,
};

pub const MMA_64x200x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x200x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 200, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 50 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sync.aligned.m64n200k32.f16.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49},  %50,  %51,  p,    %53,  %54; }",
    .saturate = false,
};

pub const MMA_64x200x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x200x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 200, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 50 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sync.aligned.m64n200k32.f16.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49}, {%50,  %51,  %52,  %53},  %54,  p,    %56,  %57; }",
    .saturate = false,
};

pub const MMA_64x200x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x200x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 200, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 100 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %102, 0; wgmma.mma_async.sync.aligned.m64n200k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99},  %100,  %101,  p,    %103, %104; }",
    .saturate = false,
};

pub const MMA_64x200x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x200x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 200, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 100 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %105, 0; wgmma.mma_async.sync.aligned.m64n200k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99}, {%100, %101, %102, %103},  %104,  p,    %106, %107; }",
    .saturate = false,
};

pub const MMA_64x208x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x208x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 52 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %54, 0; wgmma.mma_async.sync.aligned.m64n208k32.f16.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51},  %52,  %53,  p,    %55,  %56; }",
    .saturate = false,
};

pub const MMA_64x208x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x208x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 52 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %57, 0; wgmma.mma_async.sync.aligned.m64n208k32.f16.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51}, {%52,  %53,  %54,  %55},  %56,  p,    %58,  %59; }",
    .saturate = false,
};

pub const MMA_64x208x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x208x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %106, 0; wgmma.mma_async.sync.aligned.m64n208k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103},  %104,  %105,  p,    %107, %108; }",
    .saturate = false,
};

pub const MMA_64x208x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x208x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 208, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 104 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %109, 0; wgmma.mma_async.sync.aligned.m64n208k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103}, {%104, %105, %106, %107},  %108,  p,    %110, %111; }",
    .saturate = false,
};

pub const MMA_64x216x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x216x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 216, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 54 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %56, 0; wgmma.mma_async.sync.aligned.m64n216k32.f16.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53},  %54,  %55,  p,    %57,  %58; }",
    .saturate = false,
};

pub const MMA_64x216x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x216x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 216, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 54 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %59, 0; wgmma.mma_async.sync.aligned.m64n216k32.f16.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53}, {%54,  %55,  %56,  %57},  %58,  p,    %60,  %61; }",
    .saturate = false,
};

pub const MMA_64x216x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x216x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 216, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 108 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %110, 0; wgmma.mma_async.sync.aligned.m64n216k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107},  %108,  %109,  p,    %111, %112; }",
    .saturate = false,
};

pub const MMA_64x216x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x216x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 216, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 108 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %113, 0; wgmma.mma_async.sync.aligned.m64n216k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107}, {%108, %109, %110, %111},  %112,  p,    %114, %115; }",
    .saturate = false,
};

pub const MMA_64x224x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x224x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %58, 0; wgmma.mma_async.sync.aligned.m64n224k32.f16.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55},  %56,  %57,  p,    %59,  %60; }",
    .saturate = false,
};

pub const MMA_64x224x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x224x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 56 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %61, 0; wgmma.mma_async.sync.aligned.m64n224k32.f16.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55}, {%56,  %57,  %58,  %59},  %60,  p,    %62,  %63; }",
    .saturate = false,
};

pub const MMA_64x224x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x224x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %114, 0; wgmma.mma_async.sync.aligned.m64n224k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111},  %112,  %113,  p,    %115, %116; }",
    .saturate = false,
};

pub const MMA_64x224x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x224x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 224, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 112 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %117, 0; wgmma.mma_async.sync.aligned.m64n224k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111}, {%112, %113, %114, %115},  %116,  p,    %118, %119; }",
    .saturate = false,
};

pub const MMA_64x232x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x232x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 232, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 58 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %60, 0; wgmma.mma_async.sync.aligned.m64n232k32.f16.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57},  %58,  %59,  p,    %61,  %62; }",
    .saturate = false,
};

pub const MMA_64x232x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x232x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 232, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 58 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %63, 0; wgmma.mma_async.sync.aligned.m64n232k32.f16.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57}, {%58,  %59,  %60,  %61},  %62,  p,    %64,  %65; }",
    .saturate = false,
};

pub const MMA_64x232x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x232x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 232, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 116 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %118, 0; wgmma.mma_async.sync.aligned.m64n232k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115},  %116,  %117,  p,    %119, %120; }",
    .saturate = false,
};

pub const MMA_64x232x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x232x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 232, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 116 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %121, 0; wgmma.mma_async.sync.aligned.m64n232k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115}, {%116, %117, %118, %119},  %120,  p,    %122, %123; }",
    .saturate = false,
};

pub const MMA_64x240x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x240x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 60 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %62, 0; wgmma.mma_async.sync.aligned.m64n240k32.f16.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59},  %60,  %61,  p,    %63,  %64; }",
    .saturate = false,
};

pub const MMA_64x240x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x240x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 60 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %65, 0; wgmma.mma_async.sync.aligned.m64n240k32.f16.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59}, {%60,  %61,  %62,  %63},  %64,  p,    %66,  %67; }",
    .saturate = false,
};

pub const MMA_64x240x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x240x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %122, 0; wgmma.mma_async.sync.aligned.m64n240k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119},  %120,  %121,  p,    %123, %124; }",
    .saturate = false,
};

pub const MMA_64x240x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x240x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 240, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 120 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %125, 0; wgmma.mma_async.sync.aligned.m64n240k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119}, {%120, %121, %122, %123},  %124,  p,    %126, %127; }",
    .saturate = false,
};

pub const MMA_64x248x32_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x248x32_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 248, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 62 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %64, 0; wgmma.mma_async.sync.aligned.m64n248k32.f16.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61},  %62,  %63,  p,    %65,  %66; }",
    .saturate = false,
};

pub const MMA_64x248x32_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x248x32_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 248, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 62 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %67, 0; wgmma.mma_async.sync.aligned.m64n248k32.f16.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61}, {%62,  %63,  %64,  %65},  %66,  p,    %68,  %69; }",
    .saturate = false,
};

pub const MMA_64x248x32_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "MMA_64x248x32_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 248, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 124 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %126, 0; wgmma.mma_async.sync.aligned.m64n248k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123},  %124,  %125,  p,    %127, %128; }",
    .saturate = false,
};

pub const MMA_64x248x32_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "MMA_64x248x32_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 248, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 124 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %129, 0; wgmma.mma_async.sync.aligned.m64n248k32.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123}, {%124, %125, %126, %127},  %128,  p,    %130, %131; }",
    .saturate = false,
};


pub const support_status = .unsupported;
pub const unsupported_reason = "Not yet implemented";
