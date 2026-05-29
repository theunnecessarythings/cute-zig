// AUTO-GENERATED CuTe-Zig Atom Database
const layout_mod = @import("../../layout.zig");
const traits_mod = @import("../traits.zig");

pub const SM90_16x8x4_F64F64F64F64_TN = . {
    .name = "SM90_16x8x4_F64F64F64F64_TN",
    .shape_mnk = .{16,8,4},
    .layout_a = layout_mod.make_layout(.{.{4,8},2},.{.{16,1},8}),
    .layout_b = layout_mod.make_layout(.{.{4,8},1},.{.{8,1},0}),
    .layout_c = layout_mod.make_layout(.{.{4,8},.{2,2}},.{.{32,1},.{16,8}}),
};

pub const SM90_16x8x8_F64F64F64F64_TN = . {
    .name = "SM90_16x8x8_F64F64F64F64_TN",
    .shape_mnk = .{16,8,8},
    .layout_a = layout_mod.make_layout(.{.{4,8},.{2,2}},.{.{16,1},.{8,64}}),
    .layout_b = layout_mod.make_layout(.{.{4,8},2},.{.{8,1},32}),
    .layout_c = layout_mod.make_layout(.{.{4,8},.{2,2}},.{.{32,1},.{16,8}}),
};

pub const SM90_16x8x16_F64F64F64F64_TN = . {
    .name = "SM90_16x8x16_F64F64F64F64_TN",
    .shape_mnk = .{16,8,16},
    .layout_a = layout_mod.make_layout(.{.{4,8},.{2,4}},.{.{16,1},.{8,64}}),
    .layout_b = layout_mod.make_layout(.{.{4,8},4},.{.{8,1},32}),
    .layout_c = layout_mod.make_layout(.{.{4,8},.{2,2}},.{.{32,1},.{16,8}}),
};

