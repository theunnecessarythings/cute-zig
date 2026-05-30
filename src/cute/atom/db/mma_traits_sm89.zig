// AUTO-GENERATED CuTe-Zig Atom Database
const layout_mod = @import("../../layout.zig");
const traits_mod = @import("../traits.zig");

pub const SM89_16x8x32_F32E4M3E4M3F32_TN = . {
    .name = "SM89_16x8x32_F32E4M3E4M3F32_TN",
    .shape_mnk = .{16,8,32},
    .layout_a = layout_mod.make_layout(. {.{4,8},. {4,2,2}},. {.{64,1},. {16,8,256}}),
    .layout_b = layout_mod.make_layout(. {.{4,8},. {4,2}},. {.{32,1},. {8,128}}),
    .layout_c = layout_mod.make_layout(. {1,1},. {0,0}),
    .supported = false,
    .status = .placeholder,
    .reason = "layout extraction not yet implemented",
};
