const std = @import("std");
const layout_mod = @import("../layout.zig");

pub const SupportStatus = enum {
    implemented,
    unsupported,
    placeholder,
    generation_failed,
};

pub fn MmaTraits(comptime LA: type, comptime LB: type, comptime LC: type) type {
    return struct {
        name: []const u8,
        shape_mnk: struct { usize, usize, usize },

        layout_a: LA,
        layout_b: LB,
        layout_c: LC,

        supported: bool = true,
        status: SupportStatus = .implemented,
        reason: ?[]const u8 = null,
    };
}

pub fn CopyTraits(comptime LS: type, comptime LD: type, comptime LR: type) type {
    return struct {
        name: []const u8,

        layout_src: LS,
        layout_dst: LD,
        layout_ref: LR,

        supported: bool = true,
        status: SupportStatus = .implemented,
        reason: ?[]const u8 = null,
    };
}
