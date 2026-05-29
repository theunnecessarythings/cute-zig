// AUTO-GENERATED CuTe-Zig Atom Database
const layout_mod = @import("../../layout.zig");
const traits_mod = @import("../traits.zig");

pub const SM75_16x8x8_F32F16F16F32_TN = . {
    .name = "SM75_16x8x8_F32F16F16F32_TN",
    .shape_mnk = .{16,8,8},
    .layout_a = layout_mod.make_layout(.{.{4,8},.{2,2}},.{.{32,1},.{16,8}}),
    .layout_b = layout_mod.make_layout(.{.{4,8},2},.{.{16,1},8}),
    .layout_c = layout_mod.make_layout(.{.{4,8},.{2,2}},.{.{32,1},.{16,8}}),
};

pub const SM75_8x8x16_S32S8S8S32_TN = . {
    .name = "SM75_8x8x16_S32S8S8S32_TN",
    .shape_mnk = .{8,8,16},
    .layout_a = layout_mod.make_layout(.{.{4,8},4},.{.{32,1},8}),
    .layout_b = layout_mod.make_layout(.{.{4,8},4},.{.{32,1},8}),
    .layout_c = layout_mod.make_layout(.{.{4,8},2},.{.{16,1},8}),
};

