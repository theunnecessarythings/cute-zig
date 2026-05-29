// AUTO-GENERATED CuTe-Zig Atom Database
const layout_mod = @import("../../layout.zig");
const traits_mod = @import("../traits.zig");

pub const SM80_16x8x8_F16F16F16F16_TN = . {
    .name = "SM80_16x8x8_F16F16F16F16_TN",
    .shape_mnk = .{16,8,8},
    .layout_a = layout_mod.make_layout(.{1,1},.{0,0}),
    .layout_b = layout_mod.make_layout(.{1,1},.{0,0}),
    .layout_c = layout_mod.make_layout(.{1,1},.{0,0}),
};

pub const SM80_16x8x16_F16F16F16F16_TN = . {
    .name = "SM80_16x8x16_F16F16F16F16_TN",
    .shape_mnk = .{16,8,16},
    .layout_a = layout_mod.make_layout(.{.{4,8},.{2,2,2}},.{.{32,1},.{16,8,128}}),
    .layout_b = layout_mod.make_layout(.{.{4,8},.{2,2}},.{.{16,1},.{8,64}}),
    .layout_c = layout_mod.make_layout(.{1,1},.{0,0}),
};

pub const SM80_16x8x4_F32TF32TF32F32_TN = . {
    .name = "SM80_16x8x4_F32TF32TF32F32_TN",
    .shape_mnk = .{16,8,4},
    .layout_a = layout_mod.make_layout(.{.{4,8},2},.{.{16,1},8}),
    .layout_b = layout_mod.make_layout(.{1,1},.{0,0}),
    .layout_c = layout_mod.make_layout(.{1,1},.{0,0}),
};

pub const SM80_16x8x8_F32TF32TF32F32_TN = . {
    .name = "SM80_16x8x8_F32TF32TF32F32_TN",
    .shape_mnk = .{16,8,8},
    .layout_a = layout_mod.make_layout(.{.{4,8},.{2,2}},.{.{16,1},.{8,64}}),
    .layout_b = layout_mod.make_layout(.{.{4,8},2},.{.{8,1},32}),
    .layout_c = layout_mod.make_layout(.{1,1},.{0,0}),
};

pub const SM80_8x8x4_F64F64F64F64_TN = . {
    .name = "SM80_8x8x4_F64F64F64F64_TN",
    .shape_mnk = .{8,8,4},
    .layout_a = layout_mod.make_layout(.{1,1},.{0,0}),
    .layout_b = layout_mod.make_layout(.{1,1},.{0,0}),
    .layout_c = layout_mod.make_layout(.{1,1},.{0,0}),
};

pub const SM80_8x8x16_S32S8S8S32_TN = . {
    .name = "SM80_8x8x16_S32S8S8S32_TN",
    .shape_mnk = .{8,8,16},
    .layout_a = layout_mod.make_layout(.{1,1},.{0,0}),
    .layout_b = layout_mod.make_layout(.{1,1},.{0,0}),
    .layout_c = layout_mod.make_layout(.{1,1},.{0,0}),
};

pub const SM80_16x8x16_S32S8S8S32_TN = . {
    .name = "SM80_16x8x16_S32S8S8S32_TN",
    .shape_mnk = .{16,8,16},
    .layout_a = layout_mod.make_layout(.{.{4,8},.{4,2}},.{.{64,1},.{16,8}}),
    .layout_b = layout_mod.make_layout(.{1,1},.{0,0}),
    .layout_c = layout_mod.make_layout(.{1,1},.{0,0}),
};

pub const SM80_16x8x32_S32S8S8S32_TN = . {
    .name = "SM80_16x8x32_S32S8S8S32_TN",
    .shape_mnk = .{16,8,32},
    .layout_a = layout_mod.make_layout(.{.{4,8},.{4,2,2}},.{.{64,1},.{16,8,256}}),
    .layout_b = layout_mod.make_layout(.{.{4,8},.{4,2}},.{.{32,1},.{8,128}}),
    .layout_c = layout_mod.make_layout(.{1,1},.{0,0}),
};

pub const SM80_8x8x32_S32S4S4S32_TN = . {
    .name = "SM80_8x8x32_S32S4S4S32_TN",
    .shape_mnk = .{8, 8, 32},
    .layout_a = layout_mod.make_layout(.{.{4,8},.{8}},.{.{64,1},.{8}}),
    .layout_b = layout_mod.make_layout(.{.{4,8},.{8}},.{.{64,1},.{8}}),
    .layout_c = layout_mod.make_layout(.{1,1},.{0,0}),
};

pub const SM80_16x8x32_S32S4S4S32_TN = . {
    .name = "SM80_16x8x32_S32S4S4S32_TN",
    .shape_mnk = .{16, 8, 32},
    .layout_a = layout_mod.make_layout(.{.{4,8},.{8,2}},.{.{128,1},.{16,8}}),
    .layout_b = layout_mod.make_layout(.{.{4,8},.{8}},.{.{64,1},.{8}}),
    .layout_c = layout_mod.make_layout(.{1,1},.{0,0}),
};

pub const SM80_16x8x64_S32S4S4S32_TN = . {
    .name = "SM80_16x8x64_S32S4S4S32_TN",
    .shape_mnk = .{16, 8, 64},
    .layout_a = layout_mod.make_layout(.{.{4,8},.{8,2,2}},.{.{128,1},.{16,8,512}}),
    .layout_b = layout_mod.make_layout(.{.{4,8},.{8,2}},.{.{64,1},.{8,256}}),
    .layout_c = layout_mod.make_layout(.{1,1},.{0,0}),
};

pub const SM80_16x8x256_S32U1U1S32_TN_XORPOPC = . {
    .name = "SM80_16x8x256_S32U1U1S32_TN_XORPOPC",
    .shape_mnk = .{16,8,256},
    .layout_a = layout_mod.make_layout(.{.{4,8},.{32,2,2}},.{.{512,1},.{16,8,2048}}),
    .layout_b = layout_mod.make_layout(.{.{4,8},.{32,2}},.{.{256,1},.{8,1024}}),
    .layout_c = layout_mod.make_layout(.{1,1},.{0,0}),
};

pub const SM80_8x8x128_S32U1U1S32_TN_XORPOPC = . {
    .name = "SM80_8x8x128_S32U1U1S32_TN_XORPOPC",
    .shape_mnk = .{8,8,128},
    .layout_a = layout_mod.make_layout(.{.{4,8},32},.{.{256,1},8}),
    .layout_b = layout_mod.make_layout(.{.{4,8},32},.{.{256,1},8}),
    .layout_c = layout_mod.make_layout(.{1,1},.{0,0}),
};

pub const SM80_16x8x128_S32U1U1S32_TN_XORPOPC = . {
    .name = "SM80_16x8x128_S32U1U1S32_TN_XORPOPC",
    .shape_mnk = .{16,8,128},
    .layout_a = layout_mod.make_layout(.{.{4,8},.{32,2}},.{.{512,1},.{.{16,8}}}),
    .layout_b = layout_mod.make_layout(.{.{4,8},32},.{.{256,1},8}),
    .layout_c = layout_mod.make_layout(.{1,1},.{0,0}),
};

