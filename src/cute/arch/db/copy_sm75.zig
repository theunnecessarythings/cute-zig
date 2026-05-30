// AUTO-GENERATED CuTe-Zig Instruction Database
const types = @import("../types.zig");

pub const SM75_U32x1_LDSM_N = types.CopyInst{
    .name = "SM75_U32x1_LDSM_N",
    .sm = 75,
    .s_regs = .{ .ty = u128, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "ldmatrix.sync.aligned.x1.m8n8.shared.b16 {%[d0]}, [%[s0]];",
    .is_async = false,
    .kind = .smem_to_reg,
    .src_space = .shared,
    .dst_space = .register,
};

pub const SM75_U32x2_LDSM_N = types.CopyInst{
    .name = "SM75_U32x2_LDSM_N",
    .sm = 75,
    .s_regs = .{ .ty = u128, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 2 },
    .ptx = "ldmatrix.sync.aligned.x2.m8n8.shared.b16 {%[d0], %[d1]}, [%[s0]];",
    .is_async = false,
    .kind = .smem_to_reg,
    .src_space = .shared,
    .dst_space = .register,
};

pub const SM75_U32x4_LDSM_N = types.CopyInst{
    .name = "SM75_U32x4_LDSM_N",
    .sm = 75,
    .s_regs = .{ .ty = u128, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 4 },
    .ptx = "ldmatrix.sync.aligned.x4.m8n8.shared.b16 {%[d0], %[d1], %[d2], %[d3]}, [%[s0]];",
    .is_async = false,
    .kind = .smem_to_reg,
    .src_space = .shared,
    .dst_space = .register,
};

pub const SM75_U16x2_LDSM_T = types.CopyInst{
    .name = "SM75_U16x2_LDSM_T",
    .sm = 75,
    .s_regs = .{ .ty = u128, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "ldmatrix.sync.aligned.x1.trans.m8n8.shared.b16 {%[d0]}, [%[s0]];",
    .is_async = false,
    .kind = .smem_to_reg,
    .src_space = .shared,
    .dst_space = .register,
};

pub const SM75_U16x4_LDSM_T = types.CopyInst{
    .name = "SM75_U16x4_LDSM_T",
    .sm = 75,
    .s_regs = .{ .ty = u128, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 2 },
    .ptx = "ldmatrix.sync.aligned.x2.trans.m8n8.shared.b16 {%[d0], %[d1]}, [%[s0]];",
    .is_async = false,
    .kind = .smem_to_reg,
    .src_space = .shared,
    .dst_space = .register,
};

pub const SM75_U16x8_LDSM_T = types.CopyInst{
    .name = "SM75_U16x8_LDSM_T",
    .sm = 75,
    .s_regs = .{ .ty = u128, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 4 },
    .ptx = "ldmatrix.sync.aligned.x4.trans.m8n8.shared.b16 {%[d0], %[d1], %[d2], %[d3]}, [%[s0]];",
    .is_async = false,
    .kind = .smem_to_reg,
    .src_space = .shared,
    .dst_space = .register,
};

pub const SM75_U32x1_MOVM_T = types.CopyInst{
    .kind = .reg_to_reg,
    .src_space = .register,
    .dst_space = .register,
    .name = "SM75_U32x1_MOVM_T",
    .sm = 75,
    .s_regs = .{ .ty = u32, .count = 1 },
    .d_regs = .{ .ty = u32, .count = 1 },
    .ptx = "movmatrix.sync.aligned.m8n8.trans.b16 %[d0], %[s0];",
    .is_async = false,
};
