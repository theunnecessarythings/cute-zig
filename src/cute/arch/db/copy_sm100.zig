// AUTO-GENERATED CuTe-Zig Instruction Database
const types = @import("../types.zig");

pub const SM100_U8x8_LDSM_T = types.CopyInst {
    .name = "SM100_U8x8_LDSM_T",
    .sm = 100,
    .s_regs = .{ .ty = u128, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 2 },
    .ptx = "ldmatrix.sync.aligned.m16n16.x1.trans.shared.b8 {%0, %1}, [%2];",
    .is_async = false,
};

pub const SM100_U8x16_LDSM_T = types.CopyInst {
    .name = "SM100_U8x16_LDSM_T",
    .sm = 100,
    .s_regs = .{ .ty = u128, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 4 },
    .ptx = "ldmatrix.sync.aligned.m16n16.x2.trans.shared.b8 {%0, %1, %2, %3}, [%4];",
    .is_async = false,
};

pub const SM100_SU4_DU8x16_x1_LDSM_N = types.CopyInst {
    .name = "SM100_SU4_DU8x16_x1_LDSM_N",
    .sm = 100,
    .s_regs = .{ .ty = u128, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "ldmatrix.sync.aligned.m8n16.x1.shared.b8x16.b4x16_p64  {%0}, [%1];",
    .is_async = false,
};

pub const SM100_SU6_DU8x16_x1_LDSM_N = types.CopyInst {
    .name = "SM100_SU6_DU8x16_x1_LDSM_N",
    .sm = 100,
    .s_regs = .{ .ty = u128, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "ldmatrix.sync.aligned.m8n16.x1.shared.b8x16.b6x16_p32  {%0}, [%1];",
    .is_async = false,
};

pub const SM100_SU4_DU8x16_x2_LDSM_N = types.CopyInst {
    .name = "SM100_SU4_DU8x16_x2_LDSM_N",
    .sm = 100,
    .s_regs = .{ .ty = u128, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 2 },
    .ptx = "ldmatrix.sync.aligned.m8n16.x2.shared.b8x16.b4x16_p64  {%0, %1}, [%2];",
    .is_async = false,
};

pub const SM100_SU6_DU8x16_x2_LDSM_N = types.CopyInst {
    .name = "SM100_SU6_DU8x16_x2_LDSM_N",
    .sm = 100,
    .s_regs = .{ .ty = u128, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 2 },
    .ptx = "ldmatrix.sync.aligned.m8n16.x2.shared.b8x16.b6x16_p32  {%0, %1}, [%2];",
    .is_async = false,
};

pub const SM100_SU4_DU8x16_x4_LDSM_N = types.CopyInst {
    .name = "SM100_SU4_DU8x16_x4_LDSM_N",
    .sm = 100,
    .s_regs = .{ .ty = u128, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 4 },
    .ptx = "ldmatrix.sync.aligned.m8n16.x4.shared.b8x16.b4x16_p64  {%0, %1, %2, %3}, [%4];",
    .is_async = false,
};

pub const SM100_SU6_DU8x16_x4_LDSM_N = types.CopyInst {
    .name = "SM100_SU6_DU8x16_x4_LDSM_N",
    .sm = 100,
    .s_regs = .{ .ty = u128, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 4 },
    .ptx = "ldmatrix.sync.aligned.m8n16.x4.shared.b8x16.b6x16_p32  {%0, %1, %2, %3}, [%4];",
    .is_async = false,
};

pub const SM100_U8x4_STSM_T = types.CopyInst {
    .name = "SM100_U8x4_STSM_T",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u128, .count = 1 },
    .ptx = "stmatrix.sync.aligned.m16n8.x1.trans.shared.b8 [%0], {%1};",
    .is_async = false,
};

pub const SM100_U8x8_STSM_T = types.CopyInst {
    .name = "SM100_U8x8_STSM_T",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 2 },
    .d_regs = .{ .ty = u128, .count = 1 },
    .ptx = "stmatrix.sync.aligned.m16n8.x2.trans.shared.b8 [%0], {%1, %2};",
    .is_async = false,
};

pub const SM100_U8x16_STSM_T = types.CopyInst {
    .name = "SM100_U8x16_STSM_T",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 4 },
    .d_regs = .{ .ty = u128, .count = 1 },
    .ptx = "stmatrix.sync.aligned.m16n8.x4.trans.shared.b8 [%0], {%1, %2, %3, %4};",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp256b1x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp256b1x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 4 },
    .ptx = "tcgen05.ld.sync.aligned.16x256b.x1.b32 {%0, %1, %2, %3}, [%4];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp256b2x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp256b2x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 8 },
    .ptx = "tcgen05.ld.sync.aligned.16x256b.x2.b32 {%0, %1, %2, %3, %4, %5, %6, %7}, [%8];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp256b4x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp256b4x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 16 },
    .ptx = "tcgen05.ld.sync.aligned.16x256b.x4.b32 {%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15}, [%16];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp256b8x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp256b8x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 32 },
    .ptx = "tcgen05.ld.sync.aligned.16x256b.x8.b32 {%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31}, [%32];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp256b16x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp256b16x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 64 },
    .ptx = "tcgen05.ld.sync.aligned.16x256b.x16.b32 {%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63}, [%64];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp256b32x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp256b32x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 128 },
    .ptx = "tcgen05.ld.sync.aligned.16x256b.x32.b32 {%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64, %65, %66, %67, %68, %69, %70, %71, %72, %73, %74, %75, %76, %77, %78, %79, %80, %81, %82, %83, %84, %85, %86, %87, %88, %89, %90, %91, %92, %93, %94, %95, %96, %97, %98, %99, %100, %101, %102, %103, %104, %105, %106, %107, %108, %109, %110, %111, %112, %113, %114, %115, %116, %117, %118, %119, %120, %121, %122, %123, %124, %125, %126, %127}, [%128];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp128b1x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp128b1x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 2 },
    .ptx = "tcgen05.ld.sync.aligned.16x128b.x1.b32 {%0, %1}, [%2];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp128b2x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp128b2x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 4 },
    .ptx = "tcgen05.ld.sync.aligned.16x128b.x2.b32 {%0, %1, %2, %3}, [%4];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp128b4x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp128b4x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 8 },
    .ptx = "tcgen05.ld.sync.aligned.16x128b.x4.b32 {%0, %1, %2, %3, %4, %5, %6, %7}, [%8];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp128b8x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp128b8x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 16 },
    .ptx = "tcgen05.ld.sync.aligned.16x128b.x8.b32 {%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15}, [%16];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp128b16x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp128b16x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 32 },
    .ptx = "tcgen05.ld.sync.aligned.16x128b.x16.b32 {%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31}, [%32];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp128b32x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp128b32x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 64 },
    .ptx = "tcgen05.ld.sync.aligned.16x128b.x32.b32 {%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63}, [%64];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp128b64x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp128b64x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 128 },
    .ptx = "tcgen05.ld.sync.aligned.16x128b.x64.b32 {%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64, %65, %66, %67, %68, %69, %70, %71, %72, %73, %74, %75, %76, %77, %78, %79, %80, %81, %82, %83, %84, %85, %86, %87, %88, %89, %90, %91, %92, %93, %94, %95, %96, %97, %98, %99, %100, %101, %102, %103, %104, %105, %106, %107, %108, %109, %110, %111, %112, %113, %114, %115, %116, %117, %118, %119, %120, %121, %122, %123, %124, %125, %126, %127}, [%128];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp64b1x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp64b1x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.ld.sync.aligned.16x64b.x1.b32 {%0}, [%1];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp64b2x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp64b2x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 2 },
    .ptx = "tcgen05.ld.sync.aligned.16x64b.x2.b32 {%0, %1}, [%2];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp64b4x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp64b4x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 4 },
    .ptx = "tcgen05.ld.sync.aligned.16x64b.x4.b32 {%0, %1, %2, %3}, [%4];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp64b8x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp64b8x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 8 },
    .ptx = "tcgen05.ld.sync.aligned.16x64b.x8.b32 {%0, %1, %2, %3, %4, %5, %6, %7}, [%8];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp64b16x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp64b16x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 16 },
    .ptx = "tcgen05.ld.sync.aligned.16x64b.x16.b32 {%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15}, [%16];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp64b32x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp64b32x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 32 },
    .ptx = "tcgen05.ld.sync.aligned.16x64b.x32.b32 {%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31}, [%32];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp64b64x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp64b64x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 64 },
    .ptx = "tcgen05.ld.sync.aligned.16x64b.x64.b32 {%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63}, [%64];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp64b128x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp64b128x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 128 },
    .ptx = "tcgen05.ld.sync.aligned.16x64b.x128.b32 {%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64, %65, %66, %67, %68, %69, %70, %71, %72, %73, %74, %75, %76, %77, %78, %79, %80, %81, %82, %83, %84, %85, %86, %87, %88, %89, %90, %91, %92, %93, %94, %95, %96, %97, %98, %99, %100, %101, %102, %103, %104, %105, %106, %107, %108, %109, %110, %111, %112, %113, %114, %115, %116, %117, %118, %119, %120, %121, %122, %123, %124, %125, %126, %127}, [%128];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp32b1x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp32b1x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.ld.sync.aligned.16x32bx2.x1.b32 {%0}, [%1], 1;",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp32b2x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp32b2x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 2 },
    .ptx = "tcgen05.ld.sync.aligned.16x32bx2.x2.b32 {%0, %1}, [%2], 2;",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp32b4x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp32b4x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 4 },
    .ptx = "tcgen05.ld.sync.aligned.16x32bx2.x4.b32 {%0, %1, %2, %3}, [%4], 4;",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp32b8x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp32b8x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 8 },
    .ptx = "tcgen05.ld.sync.aligned.16x32bx2.x8.b32 {%0, %1, %2, %3, %4, %5, %6, %7}, [%8], 8;",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp32b16x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp32b16x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 16 },
    .ptx = "tcgen05.ld.sync.aligned.16x32bx2.x16.b32 {%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15}, [%16], 16;",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp32b32x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp32b32x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 32 },
    .ptx = "tcgen05.ld.sync.aligned.16x32bx2.x32.b32 {%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31}, [%32], 32;",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp32b64x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp32b64x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 64 },
    .ptx = "tcgen05.ld.sync.aligned.16x32bx2.x64.b32 {%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63}, [%64], 64;",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_16dp32b128x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_16dp32b128x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 128 },
    .ptx = "tcgen05.ld.sync.aligned.16x32bx2.x128.b32 {%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64, %65, %66, %67, %68, %69, %70, %71, %72, %73, %74, %75, %76, %77, %78, %79, %80, %81, %82, %83, %84, %85, %86, %87, %88, %89, %90, %91, %92, %93, %94, %95, %96, %97, %98, %99, %100, %101, %102, %103, %104, %105, %106, %107, %108, %109, %110, %111, %112, %113, %114, %115, %116, %117, %118, %119, %120, %121, %122, %123, %124, %125, %126, %127}, [%128], 128;",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_32dp32b1x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_32dp32b1x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.ld.sync.aligned.32x32b.x1.b32 {%0}, [%1];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_32dp32b2x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_32dp32b2x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 2 },
    .ptx = "tcgen05.ld.sync.aligned.32x32b.x2.b32 {%0, %1}, [%2];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_32dp32b4x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_32dp32b4x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 4 },
    .ptx = "tcgen05.ld.sync.aligned.32x32b.x4.b32 {%0, %1, %2, %3}, [%4];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_32dp32b8x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_32dp32b8x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 8 },
    .ptx = "tcgen05.ld.sync.aligned.32x32b.x8.b32 {%0, %1, %2, %3, %4, %5, %6, %7}, [%8];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_32dp32b16x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_32dp32b16x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 16 },
    .ptx = "tcgen05.ld.sync.aligned.32x32b.x16.b32 {%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15}, [%16];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_32dp32b32x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_32dp32b32x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 32 },
    .ptx = "tcgen05.ld.sync.aligned.32x32b.x32.b32 {%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31}, [%32];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_32dp32b64x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_32dp32b64x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 64 },
    .ptx = "tcgen05.ld.sync.aligned.32x32b.x64.b32 {%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63}, [%64];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_32dp32b128x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_32dp32b128x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 128 },
    .ptx = "tcgen05.ld.sync.aligned.32x32b.x128.b32 {%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64, %65, %66, %67, %68, %69, %70, %71, %72, %73, %74, %75, %76, %77, %78, %79, %80, %81, %82, %83, %84, %85, %86, %87, %88, %89, %90, %91, %92, %93, %94, %95, %96, %97, %98, %99, %100, %101, %102, %103, %104, %105, %106, %107, %108, %109, %110, %111, %112, %113, %114, %115, %116, %117, %118, %119, %120, %121, %122, %123, %124, %125, %126, %127}, [%128];",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp256b1x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp256b1x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 4 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x256b.x1.b32 [%0], {%1, %2, %3, %4};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp256b2x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp256b2x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 8 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x256b.x2.b32 [%0], {%1, %2, %3, %4, %5, %6, %7, %8};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp256b4x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp256b4x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 16 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x256b.x4.b32 [%0], {%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp256b8x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp256b8x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 32 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x256b.x8.b32 [%0], {%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp256b16x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp256b16x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 64 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x256b.x16.b32 [%0], {%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp256b32x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp256b32x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 128 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x256b.x32.b32 [%0], {%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64, %65, %66, %67, %68, %69, %70, %71, %72, %73, %74, %75, %76, %77, %78, %79, %80, %81, %82, %83, %84, %85, %86, %87, %88, %89, %90, %91, %92, %93, %94, %95, %96, %97, %98, %99, %100, %101, %102, %103, %104, %105, %106, %107, %108, %109, %110, %111, %112, %113, %114, %115, %116, %117, %118, %119, %120, %121, %122, %123, %124, %125, %126, %127, %128};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp128b1x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp128b1x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 2 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x128b.x1.b32 [%0], {%1, %2};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp128b2x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp128b2x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 4 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x128b.x2.b32 [%0], {%1, %2, %3, %4};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp128b4x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp128b4x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 8 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x128b.x4.b32 [%0], {%1, %2, %3, %4, %5, %6, %7, %8};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp128b8x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp128b8x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 16 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x128b.x8.b32 [%0], {%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp128b16x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp128b16x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 32 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x128b.x16.b32 [%0], {%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp128b32x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp128b32x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 64 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x128b.x32.b32 [%0], {%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp128b64x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp128b64x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 128 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x128b.x64.b32 [%0], {%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64, %65, %66, %67, %68, %69, %70, %71, %72, %73, %74, %75, %76, %77, %78, %79, %80, %81, %82, %83, %84, %85, %86, %87, %88, %89, %90, %91, %92, %93, %94, %95, %96, %97, %98, %99, %100, %101, %102, %103, %104, %105, %106, %107, %108, %109, %110, %111, %112, %113, %114, %115, %116, %117, %118, %119, %120, %121, %122, %123, %124, %125, %126, %127, %128};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp64b1x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp64b1x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x64b.x1.b32 [%0], {%1};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp64b2x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp64b2x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 2 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x64b.x2.b32 [%0], {%1, %2};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp64b4x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp64b4x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 4 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x64b.x4.b32 [%0], {%1, %2, %3, %4};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp64b8x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp64b8x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 8 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x64b.x8.b32 [%0], {%1, %2, %3, %4, %5, %6, %7, %8};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp64b16x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp64b16x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 16 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x64b.x16.b32 [%0], {%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp64b32x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp64b32x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 32 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x64b.x32.b32 [%0], {%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp64b64x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp64b64x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 64 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x64b.x64.b32 [%0], {%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp64b128x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp64b128x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 128 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x64b.x128.b32 [%0], {%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64, %65, %66, %67, %68, %69, %70, %71, %72, %73, %74, %75, %76, %77, %78, %79, %80, %81, %82, %83, %84, %85, %86, %87, %88, %89, %90, %91, %92, %93, %94, %95, %96, %97, %98, %99, %100, %101, %102, %103, %104, %105, %106, %107, %108, %109, %110, %111, %112, %113, %114, %115, %116, %117, %118, %119, %120, %121, %122, %123, %124, %125, %126, %127, %128};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp32b1x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp32b1x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x32bx2.x1.b32 [%0] , 1, {%1};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp32b2x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp32b2x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 2 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x32bx2.x2.b32 [%0] , 2, {%1, %2};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp32b4x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp32b4x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 4 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x32bx2.x4.b32 [%0] , 4, {%1, %2, %3, %4};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp32b8x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp32b8x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 8 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x32bx2.x8.b32 [%0] , 8, {%1, %2, %3, %4, %5, %6, %7, %8};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp32b16x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp32b16x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 16 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x32bx2.x16.b32 [%0] , 16, {%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp32b32x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp32b32x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 32 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x32bx2.x32.b32 [%0] , 32, {%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp32b64x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp32b64x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 64 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x32bx2.x64.b32 [%0] , 64, {%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_16dp32b128x = types.CopyInst {
    .name = "SM100_TMEM_STORE_16dp32b128x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 128 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.16x32bx2.x128.b32 [%0] , 128, {%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64, %65, %66, %67, %68, %69, %70, %71, %72, %73, %74, %75, %76, %77, %78, %79, %80, %81, %82, %83, %84, %85, %86, %87, %88, %89, %90, %91, %92, %93, %94, %95, %96, %97, %98, %99, %100, %101, %102, %103, %104, %105, %106, %107, %108, %109, %110, %111, %112, %113, %114, %115, %116, %117, %118, %119, %120, %121, %122, %123, %124, %125, %126, %127, %128};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_32dp32b1x = types.CopyInst {
    .name = "SM100_TMEM_STORE_32dp32b1x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.32x32b.x1.b32 [%0], {%1};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_32dp32b2x = types.CopyInst {
    .name = "SM100_TMEM_STORE_32dp32b2x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 2 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.32x32b.x2.b32 [%0], {%1, %2};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_32dp32b4x = types.CopyInst {
    .name = "SM100_TMEM_STORE_32dp32b4x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 4 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.32x32b.x4.b32 [%0], {%1, %2, %3, %4};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_32dp32b8x = types.CopyInst {
    .name = "SM100_TMEM_STORE_32dp32b8x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 8 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.32x32b.x8.b32 [%0], {%1, %2, %3, %4, %5, %6, %7, %8};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_32dp32b16x = types.CopyInst {
    .name = "SM100_TMEM_STORE_32dp32b16x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 16 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.32x32b.x16.b32 [%0], {%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_32dp32b32x = types.CopyInst {
    .name = "SM100_TMEM_STORE_32dp32b32x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 32 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.32x32b.x32.b32 [%0], {%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_32dp32b64x = types.CopyInst {
    .name = "SM100_TMEM_STORE_32dp32b64x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 64 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.32x32b.x64.b32 [%0], {%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64};",
    .is_async = false,
};

pub const SM100_TMEM_STORE_32dp32b128x = types.CopyInst {
    .name = "SM100_TMEM_STORE_32dp32b128x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 128 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "tcgen05.st.sync.aligned.32x32b.x128.b32 [%0], {%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64, %65, %66, %67, %68, %69, %70, %71, %72, %73, %74, %75, %76, %77, %78, %79, %80, %81, %82, %83, %84, %85, %86, %87, %88, %89, %90, %91, %92, %93, %94, %95, %96, %97, %98, %99, %100, %101, %102, %103, %104, %105, %106, %107, %108, %109, %110, %111, %112, %113, %114, %115, %116, %117, %118, %119, %120, %121, %122, %123, %124, %125, %126, %127, %128};",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_STAT_32dp32b32x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_STAT_32dp32b32x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 32 },
    .ptx = "tcgen05.ld.red.sync.aligned.32x32b.x32.max.f32 {%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31}, %32, [%33];",
    .is_async = false,
};

pub const SM100_TMEM_LOAD_STAT_32dp32b128x = types.CopyInst {
    .name = "SM100_TMEM_LOAD_STAT_32dp32b128x",
    .sm = 100,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 128 },
    .ptx = "tcgen05.ld.red.sync.aligned.32x32b.x128.max.f32 {%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64, %65, %66, %67, %68, %69, %70, %71, %72, %73, %74, %75, %76, %77, %78, %79, %80, %81, %82, %83, %84, %85, %86, %87, %88, %89, %90, %91, %92, %93, %94, %95, %96, %97, %98, %99, %100, %101, %102, %103, %104, %105, %106, %107, %108, %109, %110, %111, %112, %113, %114, %115, %116, %117, %118, %119, %120, %121, %122, %123, %124, %125, %126, %127}, %128, [%129];",
    .is_async = false,
};

