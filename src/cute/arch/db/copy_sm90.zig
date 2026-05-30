// AUTO-GENERATED CuTe-Zig Instruction Database
const types = @import("../types.zig");

pub const SM90_U32x1_STSM_N = types.CopyInst{
    .name = "SM90_U32x1_STSM_N",
    .sm = 90,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u128, .count = 1 },
    .ptx = "stmatrix.sync.aligned.x1.m8n8.shared.b16 [%[d0]], {%[s0]};",
    .is_async = false,
    .kind = .reg_to_smem,
    .src_space = .register,
    .dst_space = .shared,
};

pub const SM90_U32x2_STSM_N = types.CopyInst{
    .name = "SM90_U32x2_STSM_N",
    .sm = 90,
    .s_regs = .{ .ty = u32, .count = 2 },
    .d_regs = .{ .ty = u128, .count = 1 },
    .ptx = "stmatrix.sync.aligned.x2.m8n8.shared.b16 [%[d0]], {%[s0], %[s1]};",
    .is_async = false,
    .kind = .reg_to_smem,
    .src_space = .register,
    .dst_space = .shared,
};

pub const SM90_U32x4_STSM_N = types.CopyInst{
    .name = "SM90_U32x4_STSM_N",
    .sm = 90,
    .s_regs = .{ .ty = u32, .count = 4 },
    .d_regs = .{ .ty = u128, .count = 1 },
    .ptx = "stmatrix.sync.aligned.x4.m8n8.shared.b16 [%[d0]], {%[s0], %[s1], %[s2], %[s3]};",
    .is_async = false,
    .kind = .reg_to_smem,
    .src_space = .register,
    .dst_space = .shared,
};

pub const SM90_U16x2_STSM_T = types.CopyInst{
    .name = "SM90_U16x2_STSM_T",
    .sm = 90,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u128, .count = 1 },
    .ptx = "stmatrix.sync.aligned.x1.trans.m8n8.shared.b16 [%[d0]], {%[s0]};",
    .is_async = false,
    .kind = .reg_to_smem,
    .src_space = .register,
    .dst_space = .shared,
};

pub const SM90_U16x4_STSM_T = types.CopyInst{
    .name = "SM90_U16x4_STSM_T",
    .sm = 90,
    .s_regs = .{ .ty = u32, .count = 2 },
    .d_regs = .{ .ty = u128, .count = 1 },
    .ptx = "stmatrix.sync.aligned.x2.trans.m8n8.shared.b16 [%[d0]], {%[s0], %[s1]};",
    .is_async = false,
    .kind = .reg_to_smem,
    .src_space = .register,
    .dst_space = .shared,
};

pub const SM90_U16x8_STSM_T = types.CopyInst{
    .name = "SM90_U16x8_STSM_T",
    .sm = 90,
    .s_regs = .{ .ty = u32, .count = 4 },
    .d_regs = .{ .ty = u128, .count = 1 },
    .ptx = "stmatrix.sync.aligned.x4.trans.m8n8.shared.b16 [%[d0]], {%[s0], %[s1], %[s2], %[s3]};",
    .is_async = false,
    .kind = .reg_to_smem,
    .src_space = .register,
    .dst_space = .shared,
};
