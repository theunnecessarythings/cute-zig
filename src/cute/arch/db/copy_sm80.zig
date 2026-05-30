// AUTO-GENERATED CuTe-Zig Instruction Database
const types = @import("../types.zig");

pub const SM80_CP_ASYNC_CACHEALWAYS_16B = types.CopyInst{
    .name = "SM80_CP_ASYNC_CACHEALWAYS_16B",
    .sm = 80,
    .kind = .gmem_to_smem_async,
    .src_space = .global,
    .dst_space = .shared,
    .s_regs = .{ .ty = u128, .count = 1 },
    .d_regs = .{ .ty = u128, .count = 1 },
    .ptx = "cp.async.ca.shared.global.L2::128B [%[d0]], [%[s0]], %[size];",
    .is_async = true,
    .predication = .instruction_guard,
    .copy_bytes = 16,
};

pub const SM80_CP_ASYNC_CACHEALWAYS_ZFILL_16B = types.CopyInst{
    .name = "SM80_CP_ASYNC_CACHEALWAYS_ZFILL_16B",
    .sm = 80,
    .kind = .gmem_to_smem_async,
    .src_space = .global,
    .dst_space = .shared,
    .s_regs = .{ .ty = u128, .count = 1 },
    .d_regs = .{ .ty = u128, .count = 1 },
    .ptx = "cp.async.ca.shared.global.L2::128B [%[d0]], [%[s0]], %[size], %[zfill];",
    .is_async = true,
    .predication = .cp_async_zero_fill,
    .copy_bytes = 16,
};
