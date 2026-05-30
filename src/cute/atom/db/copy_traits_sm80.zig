// AUTO-GENERATED CuTe-Zig Atom Database
const layout_mod = @import("../../layout.zig");
const traits_mod = @import("../traits.zig");
const db = @import("../../arch/db/mod.zig");

pub const SM80_CP_ASYNC_CACHEALWAYS_16B = traits_mod.CopyTraits(@TypeOf(layout_mod.make_layout(.{ 1, 128 }, .{ 1, 1 })), @TypeOf(layout_mod.make_layout(.{ 1, 128 }, .{ 1, 1 })), @TypeOf(layout_mod.make_layout(.{ 1, 128 }, .{ 1, 1 }))){
    .name = "SM80_CP_ASYNC_CACHEALWAYS_16B",
    .layout_src = layout_mod.make_layout(.{ 1, 128 }, .{ 1, 1 }),
    .layout_dst = layout_mod.make_layout(.{ 1, 128 }, .{ 1, 1 }),
    .layout_ref = layout_mod.make_layout(.{ 1, 128 }, .{ 1, 1 }),
    .supported = true,
};

pub const SM80_CP_ASYNC_CACHEALWAYS_8B = traits_mod.CopyTraits(@TypeOf(layout_mod.make_layout(.{ 1, 64 }, .{ 1, 1 })), @TypeOf(layout_mod.make_layout(.{ 1, 64 }, .{ 1, 1 })), @TypeOf(layout_mod.make_layout(.{ 1, 64 }, .{ 1, 1 }))){
    .name = "SM80_CP_ASYNC_CACHEALWAYS_8B",
    .layout_src = layout_mod.make_layout(.{ 1, 64 }, .{ 1, 1 }),
    .layout_dst = layout_mod.make_layout(.{ 1, 64 }, .{ 1, 1 }),
    .layout_ref = layout_mod.make_layout(.{ 1, 64 }, .{ 1, 1 }),
    .supported = true,
};

pub const SM80_CP_ASYNC_CACHEALWAYS_ZFILL_16B = traits_mod.CopyTraits(@TypeOf(layout_mod.make_layout(.{ 1, 128 }, .{ 1, 1 })), @TypeOf(layout_mod.make_layout(.{ 1, 128 }, .{ 1, 1 })), @TypeOf(layout_mod.make_layout(.{ 1, 128 }, .{ 1, 1 }))){
    .name = "SM80_CP_ASYNC_CACHEALWAYS_ZFILL_16B",
    .layout_src = layout_mod.make_layout(.{ 1, 128 }, .{ 1, 1 }),
    .layout_dst = layout_mod.make_layout(.{ 1, 128 }, .{ 1, 1 }),
    .layout_ref = layout_mod.make_layout(.{ 1, 128 }, .{ 1, 1 }),
    .supported = true,
};

pub const SM80_CP_ASYNC_CACHEALWAYS_ZFILL_8B = traits_mod.CopyTraits(@TypeOf(layout_mod.make_layout(.{ 1, 64 }, .{ 1, 1 })), @TypeOf(layout_mod.make_layout(.{ 1, 64 }, .{ 1, 1 })), @TypeOf(layout_mod.make_layout(.{ 1, 64 }, .{ 1, 1 }))){
    .name = "SM80_CP_ASYNC_CACHEALWAYS_ZFILL_8B",
    .layout_src = layout_mod.make_layout(.{ 1, 64 }, .{ 1, 1 }),
    .layout_dst = layout_mod.make_layout(.{ 1, 64 }, .{ 1, 1 }),
    .layout_ref = layout_mod.make_layout(.{ 1, 64 }, .{ 1, 1 }),
    .supported = true,
};
