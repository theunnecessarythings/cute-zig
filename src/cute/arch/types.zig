const std = @import("std");

pub const DType = enum {
    f16,
    f32,
    f64,
    bf16,
    tf32,
    s8,
    u8,
    s32,
    u32,
    u1,
    s4,
    u4,
};

pub const Layout = enum {
    row,
    col,
};

pub const RegSpec = struct {
    ty: type,
    count: u8,
};

pub const MmaInst = struct {
    name: []const u8,
    sm: u16,

    m: u16,
    n: u16,
    k: u16,

    d_ty: DType,
    a_ty: DType,
    b_ty: DType,
    c_ty: DType,

    layout_a: Layout,
    layout_b: Layout,

    d_regs: RegSpec,
    a_regs: RegSpec,
    b_regs: RegSpec,
    c_regs: RegSpec,

    ptx: []const u8,
    saturate: bool = false,
};

pub const CopyKind = enum {
    reg_to_reg,
    smem_to_reg,
    reg_to_smem,
    gmem_to_smem_async,
    tma_load,
    tma_store,
};

pub const AddressSpace = enum {
    register,
    shared,
    global,
    descriptor,
};

pub const CopyInst = struct {
    name: []const u8,
    sm: u16,
    kind: CopyKind,
    src_space: AddressSpace,
    dst_space: AddressSpace,
    s_regs: RegSpec,
    d_regs: RegSpec,
    ptx: []const u8,
    is_async: bool = false,
};
