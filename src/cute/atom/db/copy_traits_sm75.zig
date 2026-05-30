// AUTO-GENERATED CuTe-Zig Atom Database
const layout_mod = @import("../../layout.zig");
const traits_mod = @import("../traits.zig");
const db = @import("../../arch/db/mod.zig");

pub const SM75_U32x1_LDSM_N = traits_mod.CopyTraits(@TypeOf(layout_mod.make_layout(.{ .{ 8, 4 }, 128 }, .{ .{ 128, 0 }, 1 })), @TypeOf(layout_mod.make_layout(.{ 32, 32 }, .{ 32, 1 })), @TypeOf(layout_mod.make_layout(.{ .{ 8, 4 }, 128 }, .{ .{ 128, 0 }, 1 }))){
    .name = "SM75_U32x1_LDSM_N",
    .layout_src = layout_mod.make_layout(.{ .{ 8, 4 }, 128 }, .{ .{ 128, 0 }, 1 }),
    .layout_dst = layout_mod.make_layout(.{ 32, 32 }, .{ 32, 1 }),
    .layout_ref = layout_mod.make_layout(.{ .{ 8, 4 }, 128 }, .{ .{ 128, 0 }, 1 }),
    .supported = true,
};

pub const SM75_U32x2_LDSM_N = traits_mod.CopyTraits(@TypeOf(layout_mod.make_layout(.{ .{ 16, 2 }, 128 }, .{ .{ 128, 0 }, 1 })), @TypeOf(layout_mod.make_layout(.{ 32, .{ 32, 2 } }, .{ 32, .{ 1, 1024 } })), @TypeOf(layout_mod.make_layout(.{ .{ 16, 2 }, 128 }, .{ .{ 128, 0 }, 1 }))){
    .name = "SM75_U32x2_LDSM_N",
    .layout_src = layout_mod.make_layout(.{ .{ 16, 2 }, 128 }, .{ .{ 128, 0 }, 1 }),
    .layout_dst = layout_mod.make_layout(.{ 32, .{ 32, 2 } }, .{ 32, .{ 1, 1024 } }),
    .layout_ref = layout_mod.make_layout(.{ .{ 16, 2 }, 128 }, .{ .{ 128, 0 }, 1 }),
    .supported = true,
};

pub const SM75_U32x4_LDSM_N = traits_mod.CopyTraits(@TypeOf(layout_mod.make_layout(.{ 32, 128 }, .{ 128, 1 })), @TypeOf(layout_mod.make_layout(.{ 32, .{ 32, 4 } }, .{ 32, .{ 1, 1024 } })), @TypeOf(layout_mod.make_layout(.{ 32, 128 }, .{ 128, 1 }))){
    .name = "SM75_U32x4_LDSM_N",
    .layout_src = layout_mod.make_layout(.{ 32, 128 }, .{ 128, 1 }),
    .layout_dst = layout_mod.make_layout(.{ 32, .{ 32, 4 } }, .{ 32, .{ 1, 1024 } }),
    .layout_ref = layout_mod.make_layout(.{ 32, 128 }, .{ 128, 1 }),
    .supported = true,
};

pub const SM75_U16x2_LDSM_T = traits_mod.CopyTraits(@TypeOf(layout_mod.make_layout(.{ .{ 8, 4 }, 128 }, .{ .{ 128, 0 }, 1 })), @TypeOf(layout_mod.make_layout(.{ .{ 4, 8 }, .{ 16, 2 } }, .{ .{ 256, 16 }, .{ 1, 128 } })), @TypeOf(layout_mod.make_layout(.{ .{ 8, 4 }, 128 }, .{ .{ 128, 0 }, 1 }))){
    .name = "SM75_U16x2_LDSM_T",
    .layout_src = layout_mod.make_layout(.{ .{ 8, 4 }, 128 }, .{ .{ 128, 0 }, 1 }),
    .layout_dst = layout_mod.make_layout(.{ .{ 4, 8 }, .{ 16, 2 } }, .{ .{ 256, 16 }, .{ 1, 128 } }),
    .layout_ref = layout_mod.make_layout(.{ .{ 8, 4 }, 128 }, .{ .{ 128, 0 }, 1 }),
    .supported = true,
};

pub const SM75_U16x4_LDSM_T = traits_mod.CopyTraits(@TypeOf(layout_mod.make_layout(.{ .{ 16, 2 }, 128 }, .{ .{ 128, 0 }, 1 })), @TypeOf(layout_mod.make_layout(.{ .{ 4, 8 }, .{ 16, 2, 2 } }, .{ .{ 256, 16 }, .{ 1, 128, 1024 } })), @TypeOf(layout_mod.make_layout(.{ .{ 16, 2 }, 128 }, .{ .{ 128, 0 }, 1 }))){
    .name = "SM75_U16x4_LDSM_T",
    .layout_src = layout_mod.make_layout(.{ .{ 16, 2 }, 128 }, .{ .{ 128, 0 }, 1 }),
    .layout_dst = layout_mod.make_layout(.{ .{ 4, 8 }, .{ 16, 2, 2 } }, .{ .{ 256, 16 }, .{ 1, 128, 1024 } }),
    .layout_ref = layout_mod.make_layout(.{ .{ 16, 2 }, 128 }, .{ .{ 128, 0 }, 1 }),
    .supported = true,
};

pub const SM75_U16x8_LDSM_T = traits_mod.CopyTraits(@TypeOf(layout_mod.make_layout(.{ 32, 128 }, .{ 128, 1 })), @TypeOf(layout_mod.make_layout(.{ .{ 4, 8 }, .{ 16, 2, 4 } }, .{ .{ 256, 16 }, .{ 1, 128, 1024 } })), @TypeOf(layout_mod.make_layout(.{ 32, 128 }, .{ 128, 1 }))){
    .name = "SM75_U16x8_LDSM_T",
    .layout_src = layout_mod.make_layout(.{ 32, 128 }, .{ 128, 1 }),
    .layout_dst = layout_mod.make_layout(.{ .{ 4, 8 }, .{ 16, 2, 4 } }, .{ .{ 256, 16 }, .{ 1, 128, 1024 } }),
    .layout_ref = layout_mod.make_layout(.{ 32, 128 }, .{ 128, 1 }),
    .supported = true,
};

pub const SM75_U32x1_MOVM_T = traits_mod.CopyTraits(@TypeOf(layout_mod.make_layout(.{ 32, 32 }, .{ 32, 1 })), @TypeOf(layout_mod.make_layout(.{ 32, 32 }, .{ 32, 1 })), @TypeOf(layout_mod.make_layout(.{ 32, 32 }, .{ 32, 1 }))){
    .name = "SM75_U32x1_MOVM_T",
    .layout_src = layout_mod.make_layout(.{ 32, 32 }, .{ 32, 1 }),
    .layout_dst = layout_mod.make_layout(.{ 32, 32 }, .{ 32, 1 }),
    .layout_ref = layout_mod.make_layout(.{ 32, 32 }, .{ 32, 1 }),
    .supported = true,
};
