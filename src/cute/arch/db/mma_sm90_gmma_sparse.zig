// AUTO-GENERATED CuTe-Zig Instruction Database
const types = @import("../types.zig");

pub const GMMA_64x8x32_F16F16F16_SS = types.MmaInst {
    .name = "GMMA_64x8x32_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 8, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %6, 0; wgmma.mma_async.sp.sync.aligned.m64n8k32.f16.f16.f16  {%0, %1},  %2,  %3,  %4, %5,  p,  %7, %8, %9, %10; }",
    .saturate = false,
};

pub const GMMA_64x8x32_F16F16F16_RS = types.MmaInst {
    .name = "GMMA_64x8x32_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 8, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %9, 0; wgmma.mma_async.sp.sync.aligned.m64n8k32.f16.f16.f16  {%0,  %1}, {%2,  %3,  %4,  %5},  %6,  %7, %8,  p,   %10, %11, %12; }",
    .saturate = false,
};

pub const GMMA_64x16x32_F16F16F16_SS = types.MmaInst {
    .name = "GMMA_64x16x32_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 16, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sp.sync.aligned.m64n16k32.f16.f16.f16  {%0,  %1,  %2,  %3},  %4,  %5,  %6, %7,  p,   %9,  %10, %11, %12; }",
    .saturate = false,
};

pub const GMMA_64x16x32_F16F16F16_RS = types.MmaInst {
    .name = "GMMA_64x16x32_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 16, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sp.sync.aligned.m64n16k32.f16.f16.f16  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7},  %8,  %9, %10,  p,   %12, %13, %14; }",
    .saturate = false,
};

pub const GMMA_64x32x32_F16F16F16_SS = types.MmaInst {
    .name = "GMMA_64x32x32_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 32, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sp.sync.aligned.m64n32k32.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7},  %8,  %9,  %10, %11,  p,   %13, %14, %15, %16; }",
    .saturate = false,
};

pub const GMMA_64x32x32_F16F16F16_RS = types.MmaInst {
    .name = "GMMA_64x32x32_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 32, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sp.sync.aligned.m64n32k32.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9,  %10, %11},  %12,  %13, %14,  p,   %16, %17, %18; }",
    .saturate = false,
};

pub const GMMA_64x64x32_F16F16F16_SS = types.MmaInst {
    .name = "GMMA_64x64x32_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 64, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sp.sync.aligned.m64n64k32.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15},  %16,  %17,  %18, %19,  p,   %21, %22, %23, %24; }",
    .saturate = false,
};

pub const GMMA_64x64x32_F16F16F16_RS = types.MmaInst {
    .name = "GMMA_64x64x32_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 64, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sp.sync.aligned.m64n64k32.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15}, {%16, %17, %18, %19},  %20,  %21, %22,  p,   %24, %25, %26; }",
    .saturate = false,
};

pub const GMMA_64x96x32_F16F16F16_SS = types.MmaInst {
    .name = "GMMA_64x96x32_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 96, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %28, 0; wgmma.mma_async.sp.sync.aligned.m64n96k32.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23},  %24,  %25,  %26, %27,  p,   %29, %30, %31, %32; }",
    .saturate = false,
};

pub const GMMA_64x96x32_F16F16F16_RS = types.MmaInst {
    .name = "GMMA_64x96x32_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 96, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %31, 0; wgmma.mma_async.sp.sync.aligned.m64n96k32.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23}, {%24, %25, %26, %27},  %28,  %29, %30,  p,   %32, %33, %34; }",
    .saturate = false,
};

pub const GMMA_64x128x32_F16F16F16_SS = types.MmaInst {
    .name = "GMMA_64x128x32_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 128, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sp.sync.aligned.m64n128k32.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31},  %32,  %33,  %34, %35,  p,   %37, %38, %39, %40; }",
    .saturate = false,
};

pub const GMMA_64x128x32_F16F16F16_RS = types.MmaInst {
    .name = "GMMA_64x128x32_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 128, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sp.sync.aligned.m64n128k32.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31}, {%32, %33, %34, %35},  %36,  %37, %38,  p,   %40, %41, %42; }",
    .saturate = false,
};

pub const GMMA_64x192x32_F16F16F16_SS = types.MmaInst {
    .name = "GMMA_64x192x32_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 192, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sp.sync.aligned.m64n192k32.f16.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45, %46, %47},  %48,  %49,  %50, %51,  p,   %53, %54, %55, %56; }",
    .saturate = false,
};

pub const GMMA_64x192x32_F16F16F16_RS = types.MmaInst {
    .name = "GMMA_64x192x32_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 192, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sp.sync.aligned.m64n192k32.f16.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47}, {%48,  %49,  %50,  %51},  %52,  %53, %54,  p,    %56,  %57,  %58; }",
    .saturate = false,
};

pub const GMMA_64x256x32_F16F16F16_SS = types.MmaInst {
    .name = "GMMA_64x256x32_F16F16F16_SS",
    .sm = 90,
    .m = 64, .n = 256, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %68, 0; wgmma.mma_async.sp.sync.aligned.m64n256k32.f16.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63},  %64,  %65,  %66, %67,  p,    %69,  %70,  %71,  %72; }",
    .saturate = false,
};

pub const GMMA_64x256x32_F16F16F16_RS = types.MmaInst {
    .name = "GMMA_64x256x32_F16F16F16_RS",
    .sm = 90,
    .m = 64, .n = 256, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %71, 0; wgmma.mma_async.sp.sync.aligned.m64n256k32.f16.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63}, {%64,  %65,  %66,  %67},  %68,  %69, %70,  p,    %72,  %73,  %74; }",
    .saturate = false,
};

pub const GMMA_64x8x32_F32F16F16_SS = types.MmaInst {
    .name = "GMMA_64x8x32_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 8, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sp.sync.aligned.m64n8k32.f32.f16.f16  {%0,  %1,  %2,  %3},  %4,  %5,  %6, %7,  p,   %9,  %10, %11, %12; }",
    .saturate = false,
};

pub const GMMA_64x8x32_F32F16F16_RS = types.MmaInst {
    .name = "GMMA_64x8x32_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 8, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sp.sync.aligned.m64n8k32.f32.f16.f16  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7},  %8,  %9, %10,  p,   %12, %13, %14; }",
    .saturate = false,
};

pub const GMMA_64x16x32_F32F16F16_SS = types.MmaInst {
    .name = "GMMA_64x16x32_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 16, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sp.sync.aligned.m64n16k32.f32.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7},  %8,  %9,  %10, %11,  p,   %13, %14, %15, %16; }",
    .saturate = false,
};

pub const GMMA_64x16x32_F32F16F16_RS = types.MmaInst {
    .name = "GMMA_64x16x32_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 16, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sp.sync.aligned.m64n16k32.f32.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9,  %10, %11},  %12,  %13, %14,  p,   %16, %17, %18; }",
    .saturate = false,
};

pub const GMMA_64x32x32_F32F16F16_SS = types.MmaInst {
    .name = "GMMA_64x32x32_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 32, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sp.sync.aligned.m64n32k32.f32.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15},  %16,  %17,  %18, %19,  p,   %21, %22, %23, %24; }",
    .saturate = false,
};

pub const GMMA_64x32x32_F32F16F16_RS = types.MmaInst {
    .name = "GMMA_64x32x32_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 32, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sp.sync.aligned.m64n32k32.f32.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15}, {%16, %17, %18, %19},  %20,  %21, %22,  p,   %24, %25, %26; }",
    .saturate = false,
};

pub const GMMA_64x64x32_F32F16F16_SS = types.MmaInst {
    .name = "GMMA_64x64x32_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 64, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sp.sync.aligned.m64n64k32.f32.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31},  %32,  %33,  %34, %35,  p,   %37, %38, %39, %40; }",
    .saturate = false,
};

pub const GMMA_64x64x32_F32F16F16_RS = types.MmaInst {
    .name = "GMMA_64x64x32_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 64, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sp.sync.aligned.m64n64k32.f32.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31}, {%32, %33, %34, %35},  %36,  %37, %38,  p,   %40, %41, %42; }",
    .saturate = false,
};

pub const GMMA_64x96x32_F32F16F16_SS = types.MmaInst {
    .name = "GMMA_64x96x32_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 96, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sp.sync.aligned.m64n96k32.f32.f16.f16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45, %46, %47},  %48,  %49,  %50, %51,  p,   %53, %54, %55, %56; }",
    .saturate = false,
};

pub const GMMA_64x96x32_F32F16F16_RS = types.MmaInst {
    .name = "GMMA_64x96x32_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 96, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sp.sync.aligned.m64n96k32.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47}, {%48,  %49,  %50,  %51},  %52,  %53, %54,  p,    %56,  %57,  %58; }",
    .saturate = false,
};

pub const GMMA_64x128x32_F32F16F16_SS = types.MmaInst {
    .name = "GMMA_64x128x32_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 128, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %68, 0; wgmma.mma_async.sp.sync.aligned.m64n128k32.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63},  %64,  %65,  %66, %67,  p,    %69,  %70,  %71,  %72; }",
    .saturate = false,
};

pub const GMMA_64x128x32_F32F16F16_RS = types.MmaInst {
    .name = "GMMA_64x128x32_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 128, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %71, 0; wgmma.mma_async.sp.sync.aligned.m64n128k32.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63}, {%64,  %65,  %66,  %67},  %68,  %69, %70,  p,    %72,  %73,  %74; }",
    .saturate = false,
};

pub const GMMA_64x192x32_F32F16F16_SS = types.MmaInst {
    .name = "GMMA_64x192x32_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 192, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %100, 0; wgmma.mma_async.sp.sync.aligned.m64n192k32.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95},  %96,  %97,  %98, %99,  p,    %101, %102, %103, %104; }",
    .saturate = false,
};

pub const GMMA_64x192x32_F32F16F16_RS = types.MmaInst {
    .name = "GMMA_64x192x32_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 192, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %103, 0; wgmma.mma_async.sp.sync.aligned.m64n192k32.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95}, {%96,  %97,  %98,  %99},  %100,  %101, %102,  p,    %104, %105, %106; }",
    .saturate = false,
};

pub const GMMA_64x256x32_F32F16F16_SS = types.MmaInst {
    .name = "GMMA_64x256x32_F32F16F16_SS",
    .sm = 90,
    .m = 64, .n = 256, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %132, 0; wgmma.mma_async.sp.sync.aligned.m64n256k32.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127},  %128,  %129,  %130, %131,  p,    %133, %134, %135, %136; }",
    .saturate = false,
};

pub const GMMA_64x256x32_F32F16F16_RS = types.MmaInst {
    .name = "GMMA_64x256x32_F32F16F16_RS",
    .sm = 90,
    .m = 64, .n = 256, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %135, 0; wgmma.mma_async.sp.sync.aligned.m64n256k32.f32.f16.f16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127}, {%128, %129, %130, %131},  %132,  %133, %134,  p,    %136, %137, %138; }",
    .saturate = false,
};

pub const GMMA_64x8x32_F32BF16BF16_SS = types.MmaInst {
    .name = "GMMA_64x8x32_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 8, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 4 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sp.sync.aligned.m64n8k32.f32.bf16.bf16  {%0,  %1,  %2,  %3},  %4,  %5,  %6, %7,  p,   %9,  %10, %11, %12; }",
    .saturate = false,
};

pub const GMMA_64x8x32_F32BF16BF16_RS = types.MmaInst {
    .name = "GMMA_64x8x32_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 8, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 4 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sp.sync.aligned.m64n8k32.f32.bf16.bf16  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7},  %8,  %9, %10,  p,   %12, %13, %14; }",
    .saturate = false,
};

pub const GMMA_64x16x32_F32BF16BF16_SS = types.MmaInst {
    .name = "GMMA_64x16x32_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 16, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 8 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sp.sync.aligned.m64n16k32.f32.bf16.bf16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7},  %8,  %9,  %10, %11,  p,   %13, %14, %15, %16; }",
    .saturate = false,
};

pub const GMMA_64x16x32_F32BF16BF16_RS = types.MmaInst {
    .name = "GMMA_64x16x32_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 16, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 8 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sp.sync.aligned.m64n16k32.f32.bf16.bf16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9,  %10, %11},  %12,  %13, %14,  p,   %16, %17, %18; }",
    .saturate = false,
};

pub const GMMA_64x32x32_F32BF16BF16_SS = types.MmaInst {
    .name = "GMMA_64x32x32_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 32, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 16 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sp.sync.aligned.m64n32k32.f32.bf16.bf16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15},  %16,  %17,  %18, %19,  p,   %21, %22, %23, %24; }",
    .saturate = false,
};

pub const GMMA_64x32x32_F32BF16BF16_RS = types.MmaInst {
    .name = "GMMA_64x32x32_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 32, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 16 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sp.sync.aligned.m64n32k32.f32.bf16.bf16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15}, {%16, %17, %18, %19},  %20,  %21, %22,  p,   %24, %25, %26; }",
    .saturate = false,
};

pub const GMMA_64x64x32_F32BF16BF16_SS = types.MmaInst {
    .name = "GMMA_64x64x32_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 64, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 32 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sp.sync.aligned.m64n64k32.f32.bf16.bf16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31},  %32,  %33,  %34, %35,  p,   %37, %38, %39, %40; }",
    .saturate = false,
};

pub const GMMA_64x64x32_F32BF16BF16_RS = types.MmaInst {
    .name = "GMMA_64x64x32_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 64, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 32 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sp.sync.aligned.m64n64k32.f32.bf16.bf16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31}, {%32, %33, %34, %35},  %36,  %37, %38,  p,   %40, %41, %42; }",
    .saturate = false,
};

pub const GMMA_64x96x32_F32BF16BF16_SS = types.MmaInst {
    .name = "GMMA_64x96x32_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 96, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 48 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sp.sync.aligned.m64n96k32.f32.bf16.bf16  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45, %46, %47},  %48,  %49,  %50, %51,  p,   %53, %54, %55, %56; }",
    .saturate = false,
};

pub const GMMA_64x96x32_F32BF16BF16_RS = types.MmaInst {
    .name = "GMMA_64x96x32_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 96, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 48 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sp.sync.aligned.m64n96k32.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47}, {%48,  %49,  %50,  %51},  %52,  %53, %54,  p,    %56,  %57,  %58; }",
    .saturate = false,
};

pub const GMMA_64x128x32_F32BF16BF16_SS = types.MmaInst {
    .name = "GMMA_64x128x32_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 128, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 64 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %68, 0; wgmma.mma_async.sp.sync.aligned.m64n128k32.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63},  %64,  %65,  %66, %67,  p,    %69,  %70,  %71,  %72; }",
    .saturate = false,
};

pub const GMMA_64x128x32_F32BF16BF16_RS = types.MmaInst {
    .name = "GMMA_64x128x32_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 128, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 64 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %71, 0; wgmma.mma_async.sp.sync.aligned.m64n128k32.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63}, {%64,  %65,  %66,  %67},  %68,  %69, %70,  p,    %72,  %73,  %74; }",
    .saturate = false,
};

pub const GMMA_64x192x32_F32BF16BF16_SS = types.MmaInst {
    .name = "GMMA_64x192x32_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 192, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 96 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %100, 0; wgmma.mma_async.sp.sync.aligned.m64n192k32.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95},  %96,  %97,  %98, %99,  p,    %101, %102, %103, %104; }",
    .saturate = false,
};

pub const GMMA_64x192x32_F32BF16BF16_RS = types.MmaInst {
    .name = "GMMA_64x192x32_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 192, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 96 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %103, 0; wgmma.mma_async.sp.sync.aligned.m64n192k32.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95}, {%96,  %97,  %98,  %99},  %100,  %101, %102,  p,    %104, %105, %106; }",
    .saturate = false,
};

pub const GMMA_64x256x32_F32BF16BF16_SS = types.MmaInst {
    .name = "GMMA_64x256x32_F32BF16BF16_SS",
    .sm = 90,
    .m = 64, .n = 256, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 128 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %132, 0; wgmma.mma_async.sp.sync.aligned.m64n256k32.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127},  %128,  %129,  %130, %131,  p,    %133, %134, %135, %136; }",
    .saturate = false,
};

pub const GMMA_64x256x32_F32BF16BF16_RS = types.MmaInst {
    .name = "GMMA_64x256x32_F32BF16BF16_RS",
    .sm = 90,
    .m = 64, .n = 256, .k = 32,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 128 },
    .d_ty = .f32, .a_ty = .bf16, .b_ty = .bf16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %135, 0; wgmma.mma_async.sp.sync.aligned.m64n256k32.f32.bf16.bf16  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127}, {%128, %129, %130, %131},  %132,  %133, %134,  p,    %136, %137, %138; }",
    .saturate = false,
};

pub const GMMA_64x8x16_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "GMMA_64x8x16_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 4 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sp.sync.aligned.m64n8k16.f32.tf32.tf32  {%0,  %1,  %2,  %3},  %4,  %5,  %6, %7,  p,   %9,  %10; }",
    .saturate = false,
};

pub const GMMA_64x8x16_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "GMMA_64x8x16_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 4 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sp.sync.aligned.m64n8k16.f32.tf32.tf32  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7},  %8,  %9, %10,  p,   %12, %13; }",
    .saturate = false,
};

pub const GMMA_64x16x16_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "GMMA_64x16x16_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 8 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sp.sync.aligned.m64n16k16.f32.tf32.tf32  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7},  %8,  %9,  %10, %11,  p,   %13, %14; }",
    .saturate = false,
};

pub const GMMA_64x16x16_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "GMMA_64x16x16_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 8 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sp.sync.aligned.m64n16k16.f32.tf32.tf32  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9,  %10, %11},  %12,  %13, %14,  p,   %16, %17; }",
    .saturate = false,
};

pub const GMMA_64x32x16_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "GMMA_64x32x16_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 16 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sp.sync.aligned.m64n32k16.f32.tf32.tf32  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15},  %16,  %17,  %18, %19,  p,   %21, %22; }",
    .saturate = false,
};

pub const GMMA_64x32x16_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "GMMA_64x32x16_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 16 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sp.sync.aligned.m64n32k16.f32.tf32.tf32  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15}, {%16, %17, %18, %19},  %20,  %21, %22,  p,   %24, %25; }",
    .saturate = false,
};

pub const GMMA_64x64x16_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "GMMA_64x64x16_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 32 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sp.sync.aligned.m64n64k16.f32.tf32.tf32  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31},  %32,  %33,  %34, %35,  p,   %37, %38; }",
    .saturate = false,
};

pub const GMMA_64x64x16_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "GMMA_64x64x16_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 32 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sp.sync.aligned.m64n64k16.f32.tf32.tf32  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31}, {%32, %33, %34, %35},  %36,  %37, %38,  p,   %40, %41; }",
    .saturate = false,
};

pub const GMMA_64x96x16_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "GMMA_64x96x16_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 48 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sp.sync.aligned.m64n96k16.f32.tf32.tf32  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45, %46, %47},  %48,  %49,  %50, %51,  p,   %53, %54; }",
    .saturate = false,
};

pub const GMMA_64x96x16_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "GMMA_64x96x16_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 48 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sp.sync.aligned.m64n96k16.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47}, {%48,  %49,  %50,  %51},  %52,  %53, %54,  p,    %56,  %57; }",
    .saturate = false,
};

pub const GMMA_64x128x16_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "GMMA_64x128x16_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 64 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %68, 0; wgmma.mma_async.sp.sync.aligned.m64n128k16.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63},  %64,  %65,  %66, %67,  p,    %69,  %70; }",
    .saturate = false,
};

pub const GMMA_64x128x16_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "GMMA_64x128x16_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 64 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %71, 0; wgmma.mma_async.sp.sync.aligned.m64n128k16.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63}, {%64,  %65,  %66,  %67},  %68,  %69, %70,  p,    %72,  %73; }",
    .saturate = false,
};

pub const GMMA_64x192x16_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "GMMA_64x192x16_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 96 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %100, 0; wgmma.mma_async.sp.sync.aligned.m64n192k16.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95},  %96,  %97,  %98, %99,  p,    %101, %102; }",
    .saturate = false,
};

pub const GMMA_64x192x16_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "GMMA_64x192x16_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 96 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %103, 0; wgmma.mma_async.sp.sync.aligned.m64n192k16.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95}, {%96,  %97,  %98,  %99},  %100,  %101, %102,  p,    %104, %105; }",
    .saturate = false,
};

pub const GMMA_64x256x16_F32TF32TF32_SS_TN = types.MmaInst {
    .name = "GMMA_64x256x16_F32TF32TF32_SS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 128 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %132, 0; wgmma.mma_async.sp.sync.aligned.m64n256k16.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127},  %128,  %129,  %130, %131,  p,    %133, %134; }",
    .saturate = false,
};

pub const GMMA_64x256x16_F32TF32TF32_RS_TN = types.MmaInst {
    .name = "GMMA_64x256x16_F32TF32TF32_RS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 16,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 128 },
    .d_ty = .f32, .a_ty = .tf32, .b_ty = .tf32, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %135, 0; wgmma.mma_async.sp.sync.aligned.m64n256k16.f32.tf32.tf32  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127}, {%128, %129, %130, %131},  %132,  %133, %134,  p,    %136, %137; }",
    .saturate = false,
};

pub const GMMA_64x8x64_S32S8S8_SS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_S32S8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.s32.s8.s8  {%0,  %1,  %2,  %3},  %4,  %5,  %6, %7,  p; }",
    .saturate = false,
};

pub const GMMA_64x8x64_S32S8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x8x64_S32S8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.s32.s8.s8.satfinite  {%0,  %1,  %2,  %3},  %4,  %5,  %6, %7,  p; }",
    .saturate = true,
};

pub const GMMA_64x16x64_S32S8S8_SS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_S32S8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.s32.s8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7},  %8,  %9,  %10, %11,  p; }",
    .saturate = false,
};

pub const GMMA_64x16x64_S32S8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x16x64_S32S8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.s32.s8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7},  %8,  %9,  %10, %11,  p; }",
    .saturate = true,
};

pub const GMMA_64x32x64_S32S8S8_SS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_S32S8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.s32.s8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15},  %16,  %17,  %18, %19,  p; }",
    .saturate = false,
};

pub const GMMA_64x32x64_S32S8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x32x64_S32S8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.s32.s8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15},  %16,  %17,  %18, %19,  p; }",
    .saturate = true,
};

pub const GMMA_64x64x64_S32S8S8_SS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_S32S8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.s32.s8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31},  %32,  %33,  %34, %35,  p; }",
    .saturate = false,
};

pub const GMMA_64x64x64_S32S8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x64x64_S32S8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.s32.s8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31},  %32,  %33,  %34, %35,  p; }",
    .saturate = true,
};

pub const GMMA_64x96x64_S32S8S8_SS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_S32S8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.s32.s8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45, %46, %47},  %48,  %49,  %50, %51,  p; }",
    .saturate = false,
};

pub const GMMA_64x96x64_S32S8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x96x64_S32S8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.s32.s8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45, %46, %47},  %48,  %49,  %50, %51,  p; }",
    .saturate = true,
};

pub const GMMA_64x128x64_S32S8S8_SS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_S32S8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %68, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.s32.s8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63},  %64,  %65,  %66, %67,  p; }",
    .saturate = false,
};

pub const GMMA_64x128x64_S32S8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x128x64_S32S8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %68, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.s32.s8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63},  %64,  %65,  %66, %67,  p; }",
    .saturate = true,
};

pub const GMMA_64x192x64_S32S8S8_SS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_S32S8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %100, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.s32.s8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95},  %96,  %97,  %98, %99,  p; }",
    .saturate = false,
};

pub const GMMA_64x192x64_S32S8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x192x64_S32S8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %100, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.s32.s8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95},  %96,  %97,  %98, %99,  p; }",
    .saturate = true,
};

pub const GMMA_64x256x64_S32S8S8_SS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_S32S8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %132, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.s32.s8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127},  %128,  %129,  %130, %131,  p; }",
    .saturate = false,
};

pub const GMMA_64x256x64_S32S8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x256x64_S32S8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %132, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.s32.s8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127},  %128,  %129,  %130, %131,  p; }",
    .saturate = true,
};

pub const GMMA_64x8x64_S32S8S8_RS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_S32S8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.s32.s8.s8  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7},  %8,  %9, %10,  p; }",
    .saturate = false,
};

pub const GMMA_64x8x64_S32S8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x8x64_S32S8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.s32.s8.s8.satfinite  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7},  %8,  %9, %10,  p; }",
    .saturate = true,
};

pub const GMMA_64x16x64_S32S8S8_RS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_S32S8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.s32.s8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9,  %10, %11},  %12,  %13, %14,  p; }",
    .saturate = false,
};

pub const GMMA_64x16x64_S32S8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x16x64_S32S8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.s32.s8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9,  %10, %11},  %12,  %13, %14,  p; }",
    .saturate = true,
};

pub const GMMA_64x32x64_S32S8S8_RS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_S32S8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.s32.s8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15}, {%16, %17, %18, %19},  %20,  %21, %22,  p; }",
    .saturate = false,
};

pub const GMMA_64x32x64_S32S8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x32x64_S32S8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.s32.s8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15}, {%16, %17, %18, %19},  %20,  %21, %22,  p; }",
    .saturate = true,
};

pub const GMMA_64x64x64_S32S8S8_RS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_S32S8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.s32.s8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31}, {%32, %33, %34, %35},  %36,  %37, %38,  p; }",
    .saturate = false,
};

pub const GMMA_64x64x64_S32S8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x64x64_S32S8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.s32.s8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31}, {%32, %33, %34, %35},  %36,  %37, %38,  p; }",
    .saturate = true,
};

pub const GMMA_64x96x64_S32S8S8_RS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_S32S8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.s32.s8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47}, {%48,  %49,  %50,  %51},  %52,  %53, %54,  p; }",
    .saturate = false,
};

pub const GMMA_64x96x64_S32S8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x96x64_S32S8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.s32.s8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47}, {%48,  %49,  %50,  %51},  %52,  %53, %54,  p; }",
    .saturate = true,
};

pub const GMMA_64x128x64_S32S8S8_RS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_S32S8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %71, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.s32.s8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63}, {%64,  %65,  %66,  %67},  %68,  %69, %70,  p; }",
    .saturate = false,
};

pub const GMMA_64x128x64_S32S8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x128x64_S32S8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %71, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.s32.s8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63}, {%64,  %65,  %66,  %67},  %68,  %69, %70,  p; }",
    .saturate = true,
};

pub const GMMA_64x192x64_S32S8S8_RS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_S32S8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %103, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.s32.s8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95}, {%96,  %97,  %98,  %99},  %100,  %101, %102,  p; }",
    .saturate = false,
};

pub const GMMA_64x192x64_S32S8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x192x64_S32S8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %103, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.s32.s8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95}, {%96,  %97,  %98,  %99},  %100,  %101, %102,  p; }",
    .saturate = true,
};

pub const GMMA_64x256x64_S32S8S8_RS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_S32S8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %135, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.s32.s8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127}, {%128, %129, %130, %131},  %132,  %133, %134,  p; }",
    .saturate = false,
};

pub const GMMA_64x256x64_S32S8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x256x64_S32S8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %135, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.s32.s8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127}, {%128, %129, %130, %131},  %132,  %133, %134,  p; }",
    .saturate = true,
};

pub const GMMA_64x8x64_S32S8U8_SS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_S32S8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.s32.s8.u8  {%0,  %1,  %2,  %3},  %4,  %5,  %6, %7,  p; }",
    .saturate = false,
};

pub const GMMA_64x8x64_S32S8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x8x64_S32S8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.s32.s8.u8.satfinite  {%0,  %1,  %2,  %3},  %4,  %5,  %6, %7,  p; }",
    .saturate = true,
};

pub const GMMA_64x16x64_S32S8U8_SS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_S32S8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.s32.s8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7},  %8,  %9,  %10, %11,  p; }",
    .saturate = false,
};

pub const GMMA_64x16x64_S32S8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x16x64_S32S8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.s32.s8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7},  %8,  %9,  %10, %11,  p; }",
    .saturate = true,
};

pub const GMMA_64x32x64_S32S8U8_SS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_S32S8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.s32.s8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15},  %16,  %17,  %18, %19,  p; }",
    .saturate = false,
};

pub const GMMA_64x32x64_S32S8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x32x64_S32S8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.s32.s8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15},  %16,  %17,  %18, %19,  p; }",
    .saturate = true,
};

pub const GMMA_64x64x64_S32S8U8_SS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_S32S8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.s32.s8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31},  %32,  %33,  %34, %35,  p; }",
    .saturate = false,
};

pub const GMMA_64x64x64_S32S8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x64x64_S32S8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.s32.s8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31},  %32,  %33,  %34, %35,  p; }",
    .saturate = true,
};

pub const GMMA_64x96x64_S32S8U8_SS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_S32S8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.s32.s8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45, %46, %47},  %48,  %49,  %50, %51,  p; }",
    .saturate = false,
};

pub const GMMA_64x96x64_S32S8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x96x64_S32S8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.s32.s8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45, %46, %47},  %48,  %49,  %50, %51,  p; }",
    .saturate = true,
};

pub const GMMA_64x128x64_S32S8U8_SS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_S32S8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %68, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.s32.s8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63},  %64,  %65,  %66, %67,  p; }",
    .saturate = false,
};

pub const GMMA_64x128x64_S32S8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x128x64_S32S8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %68, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.s32.s8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63},  %64,  %65,  %66, %67,  p; }",
    .saturate = true,
};

pub const GMMA_64x192x64_S32S8U8_SS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_S32S8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %100, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.s32.s8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95},  %96,  %97,  %98, %99,  p; }",
    .saturate = false,
};

pub const GMMA_64x192x64_S32S8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x192x64_S32S8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %100, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.s32.s8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95},  %96,  %97,  %98, %99,  p; }",
    .saturate = true,
};

pub const GMMA_64x256x64_S32S8U8_SS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_S32S8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %132, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.s32.s8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127},  %128,  %129,  %130, %131,  p; }",
    .saturate = false,
};

pub const GMMA_64x256x64_S32S8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x256x64_S32S8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %132, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.s32.s8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127},  %128,  %129,  %130, %131,  p; }",
    .saturate = true,
};

pub const GMMA_64x8x64_S32S8U8_RS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_S32S8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.s32.s8.u8  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7},  %8,  %9, %10,  p; }",
    .saturate = false,
};

pub const GMMA_64x8x64_S32S8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x8x64_S32S8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.s32.s8.u8.satfinite  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7},  %8,  %9, %10,  p; }",
    .saturate = true,
};

pub const GMMA_64x16x64_S32S8U8_RS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_S32S8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.s32.s8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9,  %10, %11},  %12,  %13, %14,  p; }",
    .saturate = false,
};

pub const GMMA_64x16x64_S32S8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x16x64_S32S8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.s32.s8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9,  %10, %11},  %12,  %13, %14,  p; }",
    .saturate = true,
};

pub const GMMA_64x32x64_S32S8U8_RS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_S32S8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.s32.s8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15}, {%16, %17, %18, %19},  %20,  %21, %22,  p; }",
    .saturate = false,
};

pub const GMMA_64x32x64_S32S8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x32x64_S32S8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.s32.s8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15}, {%16, %17, %18, %19},  %20,  %21, %22,  p; }",
    .saturate = true,
};

pub const GMMA_64x64x64_S32S8U8_RS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_S32S8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.s32.s8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31}, {%32, %33, %34, %35},  %36,  %37, %38,  p; }",
    .saturate = false,
};

pub const GMMA_64x64x64_S32S8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x64x64_S32S8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.s32.s8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31}, {%32, %33, %34, %35},  %36,  %37, %38,  p; }",
    .saturate = true,
};

pub const GMMA_64x96x64_S32S8U8_RS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_S32S8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.s32.s8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47}, {%48,  %49,  %50,  %51},  %52,  %53, %54,  p; }",
    .saturate = false,
};

pub const GMMA_64x96x64_S32S8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x96x64_S32S8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.s32.s8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47}, {%48,  %49,  %50,  %51},  %52,  %53, %54,  p; }",
    .saturate = true,
};

pub const GMMA_64x128x64_S32S8U8_RS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_S32S8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %71, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.s32.s8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63}, {%64,  %65,  %66,  %67},  %68,  %69, %70,  p; }",
    .saturate = false,
};

pub const GMMA_64x128x64_S32S8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x128x64_S32S8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %71, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.s32.s8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63}, {%64,  %65,  %66,  %67},  %68,  %69, %70,  p; }",
    .saturate = true,
};

pub const GMMA_64x192x64_S32S8U8_RS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_S32S8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %103, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.s32.s8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95}, {%96,  %97,  %98,  %99},  %100,  %101, %102,  p; }",
    .saturate = false,
};

pub const GMMA_64x192x64_S32S8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x192x64_S32S8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %103, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.s32.s8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95}, {%96,  %97,  %98,  %99},  %100,  %101, %102,  p; }",
    .saturate = true,
};

pub const GMMA_64x256x64_S32S8U8_RS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_S32S8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %135, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.s32.s8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127}, {%128, %129, %130, %131},  %132,  %133, %134,  p; }",
    .saturate = false,
};

pub const GMMA_64x256x64_S32S8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x256x64_S32S8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %135, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.s32.s8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127}, {%128, %129, %130, %131},  %132,  %133, %134,  p; }",
    .saturate = true,
};

pub const GMMA_64x8x64_S32U8S8_SS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_S32U8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.s32.u8.s8  {%0,  %1,  %2,  %3},  %4,  %5,  %6, %7,  p; }",
    .saturate = false,
};

pub const GMMA_64x8x64_S32U8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x8x64_S32U8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.s32.u8.s8.satfinite  {%0,  %1,  %2,  %3},  %4,  %5,  %6, %7,  p; }",
    .saturate = true,
};

pub const GMMA_64x16x64_S32U8S8_SS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_S32U8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.s32.u8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7},  %8,  %9,  %10, %11,  p; }",
    .saturate = false,
};

pub const GMMA_64x16x64_S32U8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x16x64_S32U8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.s32.u8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7},  %8,  %9,  %10, %11,  p; }",
    .saturate = true,
};

pub const GMMA_64x32x64_S32U8S8_SS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_S32U8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.s32.u8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15},  %16,  %17,  %18, %19,  p; }",
    .saturate = false,
};

pub const GMMA_64x32x64_S32U8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x32x64_S32U8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.s32.u8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15},  %16,  %17,  %18, %19,  p; }",
    .saturate = true,
};

pub const GMMA_64x64x64_S32U8S8_SS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_S32U8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.s32.u8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31},  %32,  %33,  %34, %35,  p; }",
    .saturate = false,
};

pub const GMMA_64x64x64_S32U8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x64x64_S32U8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.s32.u8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31},  %32,  %33,  %34, %35,  p; }",
    .saturate = true,
};

pub const GMMA_64x96x64_S32U8S8_SS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_S32U8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.s32.u8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45, %46, %47},  %48,  %49,  %50, %51,  p; }",
    .saturate = false,
};

pub const GMMA_64x96x64_S32U8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x96x64_S32U8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.s32.u8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45, %46, %47},  %48,  %49,  %50, %51,  p; }",
    .saturate = true,
};

pub const GMMA_64x128x64_S32U8S8_SS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_S32U8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %68, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.s32.u8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63},  %64,  %65,  %66, %67,  p; }",
    .saturate = false,
};

pub const GMMA_64x128x64_S32U8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x128x64_S32U8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %68, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.s32.u8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63},  %64,  %65,  %66, %67,  p; }",
    .saturate = true,
};

pub const GMMA_64x192x64_S32U8S8_SS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_S32U8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %100, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.s32.u8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95},  %96,  %97,  %98, %99,  p; }",
    .saturate = false,
};

pub const GMMA_64x192x64_S32U8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x192x64_S32U8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %100, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.s32.u8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95},  %96,  %97,  %98, %99,  p; }",
    .saturate = true,
};

pub const GMMA_64x256x64_S32U8S8_SS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_S32U8S8_SS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %132, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.s32.u8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127},  %128,  %129,  %130, %131,  p; }",
    .saturate = false,
};

pub const GMMA_64x256x64_S32U8S8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x256x64_S32U8S8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %132, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.s32.u8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127},  %128,  %129,  %130, %131,  p; }",
    .saturate = true,
};

pub const GMMA_64x8x64_S32U8S8_RS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_S32U8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.s32.u8.s8  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7},  %8,  %9, %10,  p; }",
    .saturate = false,
};

pub const GMMA_64x8x64_S32U8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x8x64_S32U8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.s32.u8.s8.satfinite  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7},  %8,  %9, %10,  p; }",
    .saturate = true,
};

pub const GMMA_64x16x64_S32U8S8_RS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_S32U8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.s32.u8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9,  %10, %11},  %12,  %13, %14,  p; }",
    .saturate = false,
};

pub const GMMA_64x16x64_S32U8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x16x64_S32U8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.s32.u8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9,  %10, %11},  %12,  %13, %14,  p; }",
    .saturate = true,
};

pub const GMMA_64x32x64_S32U8S8_RS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_S32U8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.s32.u8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15}, {%16, %17, %18, %19},  %20,  %21, %22,  p; }",
    .saturate = false,
};

pub const GMMA_64x32x64_S32U8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x32x64_S32U8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.s32.u8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15}, {%16, %17, %18, %19},  %20,  %21, %22,  p; }",
    .saturate = true,
};

pub const GMMA_64x64x64_S32U8S8_RS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_S32U8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.s32.u8.s8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31}, {%32, %33, %34, %35},  %36,  %37, %38,  p; }",
    .saturate = false,
};

pub const GMMA_64x64x64_S32U8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x64x64_S32U8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.s32.u8.s8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31}, {%32, %33, %34, %35},  %36,  %37, %38,  p; }",
    .saturate = true,
};

pub const GMMA_64x96x64_S32U8S8_RS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_S32U8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.s32.u8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47}, {%48,  %49,  %50,  %51},  %52,  %53, %54,  p; }",
    .saturate = false,
};

pub const GMMA_64x96x64_S32U8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x96x64_S32U8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.s32.u8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47}, {%48,  %49,  %50,  %51},  %52,  %53, %54,  p; }",
    .saturate = true,
};

pub const GMMA_64x128x64_S32U8S8_RS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_S32U8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %71, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.s32.u8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63}, {%64,  %65,  %66,  %67},  %68,  %69, %70,  p; }",
    .saturate = false,
};

pub const GMMA_64x128x64_S32U8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x128x64_S32U8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %71, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.s32.u8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63}, {%64,  %65,  %66,  %67},  %68,  %69, %70,  p; }",
    .saturate = true,
};

pub const GMMA_64x192x64_S32U8S8_RS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_S32U8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %103, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.s32.u8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95}, {%96,  %97,  %98,  %99},  %100,  %101, %102,  p; }",
    .saturate = false,
};

pub const GMMA_64x192x64_S32U8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x192x64_S32U8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %103, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.s32.u8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95}, {%96,  %97,  %98,  %99},  %100,  %101, %102,  p; }",
    .saturate = true,
};

pub const GMMA_64x256x64_S32U8S8_RS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_S32U8S8_RS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %135, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.s32.u8.s8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127}, {%128, %129, %130, %131},  %132,  %133, %134,  p; }",
    .saturate = false,
};

pub const GMMA_64x256x64_S32U8S8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x256x64_S32U8S8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %135, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.s32.u8.s8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127}, {%128, %129, %130, %131},  %132,  %133, %134,  p; }",
    .saturate = true,
};

pub const GMMA_64x8x64_S32U8U8_SS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_S32U8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.s32.u8.u8  {%0,  %1,  %2,  %3},  %4,  %5,  %6, %7,  p; }",
    .saturate = false,
};

pub const GMMA_64x8x64_S32U8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x8x64_S32U8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.s32.u8.u8.satfinite  {%0,  %1,  %2,  %3},  %4,  %5,  %6, %7,  p; }",
    .saturate = true,
};

pub const GMMA_64x16x64_S32U8U8_SS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_S32U8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.s32.u8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7},  %8,  %9,  %10, %11,  p; }",
    .saturate = false,
};

pub const GMMA_64x16x64_S32U8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x16x64_S32U8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.s32.u8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7},  %8,  %9,  %10, %11,  p; }",
    .saturate = true,
};

pub const GMMA_64x32x64_S32U8U8_SS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_S32U8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.s32.u8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15},  %16,  %17,  %18, %19,  p; }",
    .saturate = false,
};

pub const GMMA_64x32x64_S32U8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x32x64_S32U8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.s32.u8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15},  %16,  %17,  %18, %19,  p; }",
    .saturate = true,
};

pub const GMMA_64x64x64_S32U8U8_SS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_S32U8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.s32.u8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31},  %32,  %33,  %34, %35,  p; }",
    .saturate = false,
};

pub const GMMA_64x64x64_S32U8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x64x64_S32U8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.s32.u8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31},  %32,  %33,  %34, %35,  p; }",
    .saturate = true,
};

pub const GMMA_64x96x64_S32U8U8_SS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_S32U8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.s32.u8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45, %46, %47},  %48,  %49,  %50, %51,  p; }",
    .saturate = false,
};

pub const GMMA_64x96x64_S32U8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x96x64_S32U8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.s32.u8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45, %46, %47},  %48,  %49,  %50, %51,  p; }",
    .saturate = true,
};

pub const GMMA_64x128x64_S32U8U8_SS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_S32U8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %68, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.s32.u8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63},  %64,  %65,  %66, %67,  p; }",
    .saturate = false,
};

pub const GMMA_64x128x64_S32U8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x128x64_S32U8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %68, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.s32.u8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63},  %64,  %65,  %66, %67,  p; }",
    .saturate = true,
};

pub const GMMA_64x192x64_S32U8U8_SS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_S32U8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %100, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.s32.u8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95},  %96,  %97,  %98, %99,  p; }",
    .saturate = false,
};

pub const GMMA_64x192x64_S32U8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x192x64_S32U8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %100, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.s32.u8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95},  %96,  %97,  %98, %99,  p; }",
    .saturate = true,
};

pub const GMMA_64x256x64_S32U8U8_SS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_S32U8U8_SS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %132, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.s32.u8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127},  %128,  %129,  %130, %131,  p; }",
    .saturate = false,
};

pub const GMMA_64x256x64_S32U8U8_SS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x256x64_S32U8U8_SS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %132, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.s32.u8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127},  %128,  %129,  %130, %131,  p; }",
    .saturate = true,
};

pub const GMMA_64x8x64_S32U8U8_RS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_S32U8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.s32.u8.u8  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7},  %8,  %9, %10,  p; }",
    .saturate = false,
};

pub const GMMA_64x8x64_S32U8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x8x64_S32U8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.s32.u8.u8.satfinite  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7},  %8,  %9, %10,  p; }",
    .saturate = true,
};

pub const GMMA_64x16x64_S32U8U8_RS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_S32U8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.s32.u8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9,  %10, %11},  %12,  %13, %14,  p; }",
    .saturate = false,
};

pub const GMMA_64x16x64_S32U8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x16x64_S32U8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.s32.u8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9,  %10, %11},  %12,  %13, %14,  p; }",
    .saturate = true,
};

pub const GMMA_64x32x64_S32U8U8_RS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_S32U8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.s32.u8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15}, {%16, %17, %18, %19},  %20,  %21, %22,  p; }",
    .saturate = false,
};

pub const GMMA_64x32x64_S32U8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x32x64_S32U8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.s32.u8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15}, {%16, %17, %18, %19},  %20,  %21, %22,  p; }",
    .saturate = true,
};

pub const GMMA_64x64x64_S32U8U8_RS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_S32U8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.s32.u8.u8  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31}, {%32, %33, %34, %35},  %36,  %37, %38,  p; }",
    .saturate = false,
};

pub const GMMA_64x64x64_S32U8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x64x64_S32U8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.s32.u8.u8.satfinite  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31}, {%32, %33, %34, %35},  %36,  %37, %38,  p; }",
    .saturate = true,
};

pub const GMMA_64x96x64_S32U8U8_RS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_S32U8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.s32.u8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47}, {%48,  %49,  %50,  %51},  %52,  %53, %54,  p; }",
    .saturate = false,
};

pub const GMMA_64x96x64_S32U8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x96x64_S32U8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.s32.u8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47}, {%48,  %49,  %50,  %51},  %52,  %53, %54,  p; }",
    .saturate = true,
};

pub const GMMA_64x128x64_S32U8U8_RS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_S32U8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %71, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.s32.u8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63}, {%64,  %65,  %66,  %67},  %68,  %69, %70,  p; }",
    .saturate = false,
};

pub const GMMA_64x128x64_S32U8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x128x64_S32U8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %71, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.s32.u8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63}, {%64,  %65,  %66,  %67},  %68,  %69, %70,  p; }",
    .saturate = true,
};

pub const GMMA_64x192x64_S32U8U8_RS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_S32U8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %103, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.s32.u8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95}, {%96,  %97,  %98,  %99},  %100,  %101, %102,  p; }",
    .saturate = false,
};

pub const GMMA_64x192x64_S32U8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x192x64_S32U8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %103, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.s32.u8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95}, {%96,  %97,  %98,  %99},  %100,  %101, %102,  p; }",
    .saturate = true,
};

pub const GMMA_64x256x64_S32U8U8_RS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_S32U8U8_RS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %135, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.s32.u8.u8  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127}, {%128, %129, %130, %131},  %132,  %133, %134,  p; }",
    .saturate = false,
};

pub const GMMA_64x256x64_S32U8U8_RS_TN_SATURATE = types.MmaInst {
    .name = "GMMA_64x256x64_S32U8U8_RS_TN_SATURATE",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %135, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.s32.u8.u8.satfinite  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127}, {%128, %129, %130, %131},  %132,  %133, %134,  p; }",
    .saturate = true,
};

pub const GMMA_64x8x64_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %6, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.f16.e4m3.e4m3  {%0, %1},  %2,  %3,  %4, %5,  p,  %7, %8; }",
    .saturate = false,
};

pub const GMMA_64x8x64_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %9, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.f16.e4m3.e4m3  {%0,  %1}, {%2,  %3,  %4,  %5},  %6,  %7, %8,  p,   %10, %11; }",
    .saturate = false,
};

pub const GMMA_64x8x64_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.f32.e4m3.e4m3  {%0,  %1,  %2,  %3},  %4,  %5,  %6, %7,  p,   %9,  %10; }",
    .saturate = false,
};

pub const GMMA_64x8x64_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.f32.e4m3.e4m3  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7},  %8,  %9, %10,  p,   %12, %13; }",
    .saturate = false,
};

pub const GMMA_64x16x64_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.f16.e4m3.e4m3  {%0,  %1,  %2,  %3},  %4,  %5,  %6, %7,  p,   %9,  %10; }",
    .saturate = false,
};

pub const GMMA_64x16x64_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.f16.e4m3.e4m3  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7},  %8,  %9, %10,  p,   %12, %13; }",
    .saturate = false,
};

pub const GMMA_64x16x64_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.f32.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7},  %8,  %9,  %10, %11,  p,   %13, %14; }",
    .saturate = false,
};

pub const GMMA_64x16x64_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.f32.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9,  %10, %11},  %12,  %13, %14,  p,   %16, %17; }",
    .saturate = false,
};

pub const GMMA_64x32x64_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7},  %8,  %9,  %10, %11,  p,   %13, %14; }",
    .saturate = false,
};

pub const GMMA_64x32x64_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9,  %10, %11},  %12,  %13, %14,  p,   %16, %17; }",
    .saturate = false,
};

pub const GMMA_64x32x64_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.f32.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15},  %16,  %17,  %18, %19,  p,   %21, %22; }",
    .saturate = false,
};

pub const GMMA_64x32x64_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.f32.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15}, {%16, %17, %18, %19},  %20,  %21, %22,  p,   %24, %25; }",
    .saturate = false,
};

pub const GMMA_64x64x64_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15},  %16,  %17,  %18, %19,  p,   %21, %22; }",
    .saturate = false,
};

pub const GMMA_64x64x64_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15}, {%16, %17, %18, %19},  %20,  %21, %22,  p,   %24, %25; }",
    .saturate = false,
};

pub const GMMA_64x64x64_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.f32.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31},  %32,  %33,  %34, %35,  p,   %37, %38; }",
    .saturate = false,
};

pub const GMMA_64x64x64_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.f32.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31}, {%32, %33, %34, %35},  %36,  %37, %38,  p,   %40, %41; }",
    .saturate = false,
};

pub const GMMA_64x96x64_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %28, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23},  %24,  %25,  %26, %27,  p,   %29, %30; }",
    .saturate = false,
};

pub const GMMA_64x96x64_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %31, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23}, {%24, %25, %26, %27},  %28,  %29, %30,  p,   %32, %33; }",
    .saturate = false,
};

pub const GMMA_64x96x64_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.f32.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45, %46, %47},  %48,  %49,  %50, %51,  p,   %53, %54; }",
    .saturate = false,
};

pub const GMMA_64x96x64_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47}, {%48,  %49,  %50,  %51},  %52,  %53, %54,  p,    %56,  %57; }",
    .saturate = false,
};

pub const GMMA_64x128x64_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31},  %32,  %33,  %34, %35,  p,   %37, %38; }",
    .saturate = false,
};

pub const GMMA_64x128x64_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31}, {%32, %33, %34, %35},  %36,  %37, %38,  p,   %40, %41; }",
    .saturate = false,
};

pub const GMMA_64x128x64_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %68, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63},  %64,  %65,  %66, %67,  p,    %69,  %70; }",
    .saturate = false,
};

pub const GMMA_64x128x64_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %71, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63}, {%64,  %65,  %66,  %67},  %68,  %69, %70,  p,    %72,  %73; }",
    .saturate = false,
};

pub const GMMA_64x192x64_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.f16.e4m3.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45, %46, %47},  %48,  %49,  %50, %51,  p,   %53, %54; }",
    .saturate = false,
};

pub const GMMA_64x192x64_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.f16.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47}, {%48,  %49,  %50,  %51},  %52,  %53, %54,  p,    %56,  %57; }",
    .saturate = false,
};

pub const GMMA_64x192x64_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %100, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95},  %96,  %97,  %98, %99,  p,    %101, %102; }",
    .saturate = false,
};

pub const GMMA_64x192x64_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %103, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95}, {%96,  %97,  %98,  %99},  %100,  %101, %102,  p,    %104, %105; }",
    .saturate = false,
};

pub const GMMA_64x256x64_F16E4M3E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_F16E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %68, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.f16.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63},  %64,  %65,  %66, %67,  p,    %69,  %70; }",
    .saturate = false,
};

pub const GMMA_64x256x64_F16E4M3E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_F16E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %71, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.f16.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63}, {%64,  %65,  %66,  %67},  %68,  %69, %70,  p,    %72,  %73; }",
    .saturate = false,
};

pub const GMMA_64x256x64_F32E4M3E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_F32E4M3E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %132, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127},  %128,  %129,  %130, %131,  p,    %133, %134; }",
    .saturate = false,
};

pub const GMMA_64x256x64_F32E4M3E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_F32E4M3E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %135, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.f32.e4m3.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127}, {%128, %129, %130, %131},  %132,  %133, %134,  p,    %136, %137; }",
    .saturate = false,
};

pub const GMMA_64x8x64_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %6, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.f16.e4m3.e5m2  {%0, %1},  %2,  %3,  %4, %5,  p,  %7, %8; }",
    .saturate = false,
};

pub const GMMA_64x8x64_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %9, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.f16.e4m3.e5m2  {%0,  %1}, {%2,  %3,  %4,  %5},  %6,  %7, %8,  p,   %10, %11; }",
    .saturate = false,
};

pub const GMMA_64x8x64_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.f32.e4m3.e5m2  {%0,  %1,  %2,  %3},  %4,  %5,  %6, %7,  p,   %9,  %10; }",
    .saturate = false,
};

pub const GMMA_64x8x64_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.f32.e4m3.e5m2  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7},  %8,  %9, %10,  p,   %12, %13; }",
    .saturate = false,
};

pub const GMMA_64x16x64_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.f16.e4m3.e5m2  {%0,  %1,  %2,  %3},  %4,  %5,  %6, %7,  p,   %9,  %10; }",
    .saturate = false,
};

pub const GMMA_64x16x64_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.f16.e4m3.e5m2  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7},  %8,  %9, %10,  p,   %12, %13; }",
    .saturate = false,
};

pub const GMMA_64x16x64_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.f32.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7},  %8,  %9,  %10, %11,  p,   %13, %14; }",
    .saturate = false,
};

pub const GMMA_64x16x64_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.f32.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9,  %10, %11},  %12,  %13, %14,  p,   %16, %17; }",
    .saturate = false,
};

pub const GMMA_64x32x64_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7},  %8,  %9,  %10, %11,  p,   %13, %14; }",
    .saturate = false,
};

pub const GMMA_64x32x64_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9,  %10, %11},  %12,  %13, %14,  p,   %16, %17; }",
    .saturate = false,
};

pub const GMMA_64x32x64_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.f32.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15},  %16,  %17,  %18, %19,  p,   %21, %22; }",
    .saturate = false,
};

pub const GMMA_64x32x64_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.f32.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15}, {%16, %17, %18, %19},  %20,  %21, %22,  p,   %24, %25; }",
    .saturate = false,
};

pub const GMMA_64x64x64_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15},  %16,  %17,  %18, %19,  p,   %21, %22; }",
    .saturate = false,
};

pub const GMMA_64x64x64_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15}, {%16, %17, %18, %19},  %20,  %21, %22,  p,   %24, %25; }",
    .saturate = false,
};

pub const GMMA_64x64x64_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.f32.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31},  %32,  %33,  %34, %35,  p,   %37, %38; }",
    .saturate = false,
};

pub const GMMA_64x64x64_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.f32.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31}, {%32, %33, %34, %35},  %36,  %37, %38,  p,   %40, %41; }",
    .saturate = false,
};

pub const GMMA_64x96x64_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %28, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23},  %24,  %25,  %26, %27,  p,   %29, %30; }",
    .saturate = false,
};

pub const GMMA_64x96x64_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %31, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23}, {%24, %25, %26, %27},  %28,  %29, %30,  p,   %32, %33; }",
    .saturate = false,
};

pub const GMMA_64x96x64_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.f32.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45, %46, %47},  %48,  %49,  %50, %51,  p,   %53, %54; }",
    .saturate = false,
};

pub const GMMA_64x96x64_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47}, {%48,  %49,  %50,  %51},  %52,  %53, %54,  p,    %56,  %57; }",
    .saturate = false,
};

pub const GMMA_64x128x64_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31},  %32,  %33,  %34, %35,  p,   %37, %38; }",
    .saturate = false,
};

pub const GMMA_64x128x64_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31}, {%32, %33, %34, %35},  %36,  %37, %38,  p,   %40, %41; }",
    .saturate = false,
};

pub const GMMA_64x128x64_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %68, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63},  %64,  %65,  %66, %67,  p,    %69,  %70; }",
    .saturate = false,
};

pub const GMMA_64x128x64_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %71, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63}, {%64,  %65,  %66,  %67},  %68,  %69, %70,  p,    %72,  %73; }",
    .saturate = false,
};

pub const GMMA_64x192x64_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.f16.e4m3.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45, %46, %47},  %48,  %49,  %50, %51,  p,   %53, %54; }",
    .saturate = false,
};

pub const GMMA_64x192x64_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.f16.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47}, {%48,  %49,  %50,  %51},  %52,  %53, %54,  p,    %56,  %57; }",
    .saturate = false,
};

pub const GMMA_64x192x64_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %100, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95},  %96,  %97,  %98, %99,  p,    %101, %102; }",
    .saturate = false,
};

pub const GMMA_64x192x64_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %103, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95}, {%96,  %97,  %98,  %99},  %100,  %101, %102,  p,    %104, %105; }",
    .saturate = false,
};

pub const GMMA_64x256x64_F16E4M3E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_F16E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %68, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.f16.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63},  %64,  %65,  %66, %67,  p,    %69,  %70; }",
    .saturate = false,
};

pub const GMMA_64x256x64_F16E4M3E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_F16E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %71, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.f16.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63}, {%64,  %65,  %66,  %67},  %68,  %69, %70,  p,    %72,  %73; }",
    .saturate = false,
};

pub const GMMA_64x256x64_F32E4M3E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_F32E4M3E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %132, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127},  %128,  %129,  %130, %131,  p,    %133, %134; }",
    .saturate = false,
};

pub const GMMA_64x256x64_F32E4M3E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_F32E4M3E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %135, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.f32.e4m3.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127}, {%128, %129, %130, %131},  %132,  %133, %134,  p,    %136, %137; }",
    .saturate = false,
};

pub const GMMA_64x8x64_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %6, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.f16.e5m2.e4m3  {%0, %1},  %2,  %3,  %4, %5,  p,  %7, %8; }",
    .saturate = false,
};

pub const GMMA_64x8x64_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %9, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.f16.e5m2.e4m3  {%0,  %1}, {%2,  %3,  %4,  %5},  %6,  %7, %8,  p,   %10, %11; }",
    .saturate = false,
};

pub const GMMA_64x8x64_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.f32.e5m2.e4m3  {%0,  %1,  %2,  %3},  %4,  %5,  %6, %7,  p,   %9,  %10; }",
    .saturate = false,
};

pub const GMMA_64x8x64_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.f32.e5m2.e4m3  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7},  %8,  %9, %10,  p,   %12, %13; }",
    .saturate = false,
};

pub const GMMA_64x16x64_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.f16.e5m2.e4m3  {%0,  %1,  %2,  %3},  %4,  %5,  %6, %7,  p,   %9,  %10; }",
    .saturate = false,
};

pub const GMMA_64x16x64_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.f16.e5m2.e4m3  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7},  %8,  %9, %10,  p,   %12, %13; }",
    .saturate = false,
};

pub const GMMA_64x16x64_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.f32.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7},  %8,  %9,  %10, %11,  p,   %13, %14; }",
    .saturate = false,
};

pub const GMMA_64x16x64_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.f32.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9,  %10, %11},  %12,  %13, %14,  p,   %16, %17; }",
    .saturate = false,
};

pub const GMMA_64x32x64_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7},  %8,  %9,  %10, %11,  p,   %13, %14; }",
    .saturate = false,
};

pub const GMMA_64x32x64_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9,  %10, %11},  %12,  %13, %14,  p,   %16, %17; }",
    .saturate = false,
};

pub const GMMA_64x32x64_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.f32.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15},  %16,  %17,  %18, %19,  p,   %21, %22; }",
    .saturate = false,
};

pub const GMMA_64x32x64_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.f32.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15}, {%16, %17, %18, %19},  %20,  %21, %22,  p,   %24, %25; }",
    .saturate = false,
};

pub const GMMA_64x64x64_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15},  %16,  %17,  %18, %19,  p,   %21, %22; }",
    .saturate = false,
};

pub const GMMA_64x64x64_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15}, {%16, %17, %18, %19},  %20,  %21, %22,  p,   %24, %25; }",
    .saturate = false,
};

pub const GMMA_64x64x64_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.f32.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31},  %32,  %33,  %34, %35,  p,   %37, %38; }",
    .saturate = false,
};

pub const GMMA_64x64x64_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.f32.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31}, {%32, %33, %34, %35},  %36,  %37, %38,  p,   %40, %41; }",
    .saturate = false,
};

pub const GMMA_64x96x64_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %28, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23},  %24,  %25,  %26, %27,  p,   %29, %30; }",
    .saturate = false,
};

pub const GMMA_64x96x64_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %31, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23}, {%24, %25, %26, %27},  %28,  %29, %30,  p,   %32, %33; }",
    .saturate = false,
};

pub const GMMA_64x96x64_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.f32.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45, %46, %47},  %48,  %49,  %50, %51,  p,   %53, %54; }",
    .saturate = false,
};

pub const GMMA_64x96x64_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47}, {%48,  %49,  %50,  %51},  %52,  %53, %54,  p,    %56,  %57; }",
    .saturate = false,
};

pub const GMMA_64x128x64_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31},  %32,  %33,  %34, %35,  p,   %37, %38; }",
    .saturate = false,
};

pub const GMMA_64x128x64_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31}, {%32, %33, %34, %35},  %36,  %37, %38,  p,   %40, %41; }",
    .saturate = false,
};

pub const GMMA_64x128x64_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %68, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63},  %64,  %65,  %66, %67,  p,    %69,  %70; }",
    .saturate = false,
};

pub const GMMA_64x128x64_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %71, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63}, {%64,  %65,  %66,  %67},  %68,  %69, %70,  p,    %72,  %73; }",
    .saturate = false,
};

pub const GMMA_64x192x64_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.f16.e5m2.e4m3  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45, %46, %47},  %48,  %49,  %50, %51,  p,   %53, %54; }",
    .saturate = false,
};

pub const GMMA_64x192x64_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.f16.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47}, {%48,  %49,  %50,  %51},  %52,  %53, %54,  p,    %56,  %57; }",
    .saturate = false,
};

pub const GMMA_64x192x64_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %100, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95},  %96,  %97,  %98, %99,  p,    %101, %102; }",
    .saturate = false,
};

pub const GMMA_64x192x64_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %103, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95}, {%96,  %97,  %98,  %99},  %100,  %101, %102,  p,    %104, %105; }",
    .saturate = false,
};

pub const GMMA_64x256x64_F16E5M2E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_F16E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %68, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.f16.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63},  %64,  %65,  %66, %67,  p,    %69,  %70; }",
    .saturate = false,
};

pub const GMMA_64x256x64_F16E5M2E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_F16E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %71, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.f16.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63}, {%64,  %65,  %66,  %67},  %68,  %69, %70,  p,    %72,  %73; }",
    .saturate = false,
};

pub const GMMA_64x256x64_F32E5M2E4M3_SS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_F32E5M2E4M3_SS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %132, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127},  %128,  %129,  %130, %131,  p,    %133, %134; }",
    .saturate = false,
};

pub const GMMA_64x256x64_F32E5M2E4M3_RS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_F32E5M2E4M3_RS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %135, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.f32.e5m2.e4m3  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127}, {%128, %129, %130, %131},  %132,  %133, %134,  p,    %136, %137; }",
    .saturate = false,
};

pub const GMMA_64x8x64_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %6, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.f16.e5m2.e5m2  {%0, %1},  %2,  %3,  %4, %5,  p,  %7, %8; }",
    .saturate = false,
};

pub const GMMA_64x8x64_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 2 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %9, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.f16.e5m2.e5m2  {%0,  %1}, {%2,  %3,  %4,  %5},  %6,  %7, %8,  p,   %10, %11; }",
    .saturate = false,
};

pub const GMMA_64x8x64_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.f32.e5m2.e5m2  {%0,  %1,  %2,  %3},  %4,  %5,  %6, %7,  p,   %9,  %10; }",
    .saturate = false,
};

pub const GMMA_64x8x64_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x8x64_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 8, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sp.sync.aligned.m64n8k64.f32.e5m2.e5m2  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7},  %8,  %9, %10,  p,   %12, %13; }",
    .saturate = false,
};

pub const GMMA_64x16x64_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %8, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.f16.e5m2.e5m2  {%0,  %1,  %2,  %3},  %4,  %5,  %6, %7,  p,   %9,  %10; }",
    .saturate = false,
};

pub const GMMA_64x16x64_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 4 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %11, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.f16.e5m2.e5m2  {%0,  %1,  %2,  %3}, {%4,  %5,  %6,  %7},  %8,  %9, %10,  p,   %12, %13; }",
    .saturate = false,
};

pub const GMMA_64x16x64_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.f32.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7},  %8,  %9,  %10, %11,  p,   %13, %14; }",
    .saturate = false,
};

pub const GMMA_64x16x64_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x16x64_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 16, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sp.sync.aligned.m64n16k64.f32.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9,  %10, %11},  %12,  %13, %14,  p,   %16, %17; }",
    .saturate = false,
};

pub const GMMA_64x32x64_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %12, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7},  %8,  %9,  %10, %11,  p,   %13, %14; }",
    .saturate = false,
};

pub const GMMA_64x32x64_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 8 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %15, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7}, {%8,  %9,  %10, %11},  %12,  %13, %14,  p,   %16, %17; }",
    .saturate = false,
};

pub const GMMA_64x32x64_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.f32.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15},  %16,  %17,  %18, %19,  p,   %21, %22; }",
    .saturate = false,
};

pub const GMMA_64x32x64_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x32x64_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 32, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sp.sync.aligned.m64n32k64.f32.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15}, {%16, %17, %18, %19},  %20,  %21, %22,  p,   %24, %25; }",
    .saturate = false,
};

pub const GMMA_64x64x64_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %20, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15},  %16,  %17,  %18, %19,  p,   %21, %22; }",
    .saturate = false,
};

pub const GMMA_64x64x64_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 16 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %23, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15}, {%16, %17, %18, %19},  %20,  %21, %22,  p,   %24, %25; }",
    .saturate = false,
};

pub const GMMA_64x64x64_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.f32.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31},  %32,  %33,  %34, %35,  p,   %37, %38; }",
    .saturate = false,
};

pub const GMMA_64x64x64_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x64x64_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 64, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sp.sync.aligned.m64n64k64.f32.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31}, {%32, %33, %34, %35},  %36,  %37, %38,  p,   %40, %41; }",
    .saturate = false,
};

pub const GMMA_64x96x64_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %28, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23},  %24,  %25,  %26, %27,  p,   %29, %30; }",
    .saturate = false,
};

pub const GMMA_64x96x64_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 24 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %31, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23}, {%24, %25, %26, %27},  %28,  %29, %30,  p,   %32, %33; }",
    .saturate = false,
};

pub const GMMA_64x96x64_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.f32.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45, %46, %47},  %48,  %49,  %50, %51,  p,   %53, %54; }",
    .saturate = false,
};

pub const GMMA_64x96x64_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x96x64_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 96, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sp.sync.aligned.m64n96k64.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47}, {%48,  %49,  %50,  %51},  %52,  %53, %54,  p,    %56,  %57; }",
    .saturate = false,
};

pub const GMMA_64x128x64_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %36, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31},  %32,  %33,  %34, %35,  p,   %37, %38; }",
    .saturate = false,
};

pub const GMMA_64x128x64_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 32 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %39, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31}, {%32, %33, %34, %35},  %36,  %37, %38,  p,   %40, %41; }",
    .saturate = false,
};

pub const GMMA_64x128x64_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %68, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63},  %64,  %65,  %66, %67,  p,    %69,  %70; }",
    .saturate = false,
};

pub const GMMA_64x128x64_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x128x64_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 128, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %71, 0; wgmma.mma_async.sp.sync.aligned.m64n128k64.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63}, {%64,  %65,  %66,  %67},  %68,  %69, %70,  p,    %72,  %73; }",
    .saturate = false,
};

pub const GMMA_64x192x64_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %52, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.f16.e5m2.e5m2  {%0,  %1,  %2,  %3,  %4,  %5,  %6,  %7,    %8,  %9,  %10, %11, %12, %13, %14, %15,   %16, %17, %18, %19, %20, %21, %22, %23,   %24, %25, %26, %27, %28, %29, %30, %31,   %32, %33, %34, %35, %36, %37, %38, %39,   %40, %41, %42, %43, %44, %45, %46, %47},  %48,  %49,  %50, %51,  p,   %53, %54; }",
    .saturate = false,
};

pub const GMMA_64x192x64_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 48 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %55, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.f16.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47}, {%48,  %49,  %50,  %51},  %52,  %53, %54,  p,    %56,  %57; }",
    .saturate = false,
};

pub const GMMA_64x192x64_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %100, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95},  %96,  %97,  %98, %99,  p,    %101, %102; }",
    .saturate = false,
};

pub const GMMA_64x192x64_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x192x64_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 192, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 96 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %103, 0; wgmma.mma_async.sp.sync.aligned.m64n192k64.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95}, {%96,  %97,  %98,  %99},  %100,  %101, %102,  p,    %104, %105; }",
    .saturate = false,
};

pub const GMMA_64x256x64_F16E5M2E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_F16E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %68, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.f16.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63},  %64,  %65,  %66, %67,  p,    %69,  %70; }",
    .saturate = false,
};

pub const GMMA_64x256x64_F16E5M2E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_F16E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = u32, .count = 64 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %71, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.f16.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63}, {%64,  %65,  %66,  %67},  %68,  %69, %70,  p,    %72,  %73; }",
    .saturate = false,
};

pub const GMMA_64x256x64_F32E5M2E5M2_SS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_F32E5M2E5M2_SS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u64, .count = 1 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %132, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127},  %128,  %129,  %130, %131,  p,    %133, %134; }",
    .saturate = false,
};

pub const GMMA_64x256x64_F32E5M2E5M2_RS_TN = types.MmaInst {
    .name = "GMMA_64x256x64_F32E5M2E5M2_RS_TN",
    .sm = 90,
    .m = 64, .n = 256, .k = 64,
    .d_regs = .{ .ty = void, .count = 1 },
    .a_regs = .{ .ty = u32, .count = 4 },
    .b_regs = .{ .ty = u64, .count = 1 },
    .c_regs = .{ .ty = f32, .count = 128 },
    .d_ty = .f32, .a_ty = .f16, .b_ty = .f16, .c_ty = .f32,
    .layout_a = .row, .layout_b = .col,
    .ptx = "{ .reg .pred p; setp.ne.b32 p, %135, 0; wgmma.mma_async.sp.sync.aligned.m64n256k64.f32.e5m2.e5m2  {%0,   %1,   %2,   %3,   %4,   %5,   %6,   %7,     %8,   %9,   %10,  %11,  %12,  %13,  %14,  %15,    %16,  %17,  %18,  %19,  %20,  %21,  %22,  %23,    %24,  %25,  %26,  %27,  %28,  %29,  %30,  %31,    %32,  %33,  %34,  %35,  %36,  %37,  %38,  %39,    %40,  %41,  %42,  %43,  %44,  %45,  %46,  %47,    %48,  %49,  %50,  %51,  %52,  %53,  %54,  %55,    %56,  %57,  %58,  %59,  %60,  %61,  %62,  %63,    %64,  %65,  %66,  %67,  %68,  %69,  %70,  %71,    %72,  %73,  %74,  %75,  %76,  %77,  %78,  %79,    %80,  %81,  %82,  %83,  %84,  %85,  %86,  %87,    %88,  %89,  %90,  %91,  %92,  %93,  %94,  %95,    %96,  %97,  %98,  %99,  %100, %101, %102, %103,   %104, %105, %106, %107, %108, %109, %110, %111,   %112, %113, %114, %115, %116, %117, %118, %119,   %120, %121, %122, %123, %124, %125, %126, %127}, {%128, %129, %130, %131},  %132,  %133, %134,  p,    %136, %137; }",
    .saturate = false,
};

