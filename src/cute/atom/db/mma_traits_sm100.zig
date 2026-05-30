// AUTO-GENERATED CuTe-Zig Atom Database
const layout_mod = @import("../../layout.zig");
const traits_mod = @import("../traits.zig");

pub const SM100_2x1x1_F32F32F32F32 = .{
    .name = "SM100_2x1x1_F32F32F32F32",
    .shape_mnk = .{ 2, 1, 1 },
    .layout_a = layout_mod.make_layout(.{ 1, 2 }),
    .layout_b = layout_mod.make_layout(.{ 1, 1 }),
    .layout_c = layout_mod.make_layout(.{ 1, 2 }),
};

pub const SM100_1x2x1_F32F32F32F32 = .{
    .name = "SM100_1x2x1_F32F32F32F32",
    .shape_mnk = .{ 1, 2, 1 },
    .layout_a = layout_mod.make_layout(.{ 1, 1 }),
    .layout_b = layout_mod.make_layout(.{ 1, 2 }),
    .layout_c = layout_mod.make_layout(.{ 1, 2 }),
};
