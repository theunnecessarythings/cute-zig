const std = @import("std");

/// Swizzle functor that applies a bitwise XOR transformation to a memory offset.
/// Matches CuTe's Swizzle<B,M,S>: Z bits are XORed with shifted Y bits.
pub fn Swizzle(comptime B: comptime_int, comptime M: comptime_int, comptime S: comptime_int) type {
    if (M < 0) @compileError("MBase must be non-negative");
    if (B < 0) @compileError("BBits must be non-negative");
    if (@abs(S) < B) @compileError("abs(SShift) must be at least BBits");

    return struct {
        pub const bits = B;
        pub const base = M;
        pub const shift = S;
        pub const bit_mask: usize = (1 << B) - 1;
        pub const yyy_mask: usize = bit_mask << (M + @max(0, S));
        pub const zzz_mask: usize = bit_mask << (M - @min(0, S));
        pub const swizzle_code: usize = yyy_mask | zzz_mask;

        const Self = @This();

        pub inline fn apply(self: Self, offset: usize) usize {
            _ = self;
            if (S >= 0) {
                return offset ^ ((offset & yyy_mask) >> S);
            } else {
                return offset ^ ((offset & yyy_mask) << -S);
            }
        }
    };
}

pub fn make_swizzle(comptime y_mask: usize, comptime z_mask: usize) Swizzle(pop_count(y_mask), @min(trailing_zeroes(y_mask), trailing_zeroes(z_mask)), @as(comptime_int, trailing_zeroes(y_mask)) - @as(comptime_int, trailing_zeroes(z_mask))) {
    const B = pop_count(y_mask);
    const z_bits = pop_count(z_mask);
    if (B != z_bits) @compileError("Number of bits in Y and Z masks must match");
    const M = @min(trailing_zeroes(y_mask), trailing_zeroes(z_mask));
    const S = @as(comptime_int, trailing_zeroes(y_mask)) - @as(comptime_int, trailing_zeroes(z_mask));
    const Result = Swizzle(B, M, S);
    if ((y_mask | z_mask) != Result.swizzle_code) @compileError("Masks do not form a representable CuTe swizzle");
    return .{};
}

pub fn composition(a: anytype, b: anytype) @TypeOf(blk: {
    const A = @TypeOf(a);
    const B = @TypeOf(b);
    if (comptime is_swizzle(A) and is_swizzle(B)) {
        break :blk composition_swizzles(a, b);
    } else if (comptime is_swizzle(A)) {
        break :blk make_swizzle_layout(b, a);
    } else if (comptime is_layout(A) and is_swizzle(B)) {
        break :blk make_swizzle_layout(a, b);
    } else {
        @compileError("Unsupported composition types");
    }
}) {
    const A = @TypeOf(a);
    const B = @TypeOf(b);
    if (comptime is_swizzle(A) and is_swizzle(B)) {
        return composition_swizzles(a, b);
    } else if (comptime is_swizzle(A)) {
        return make_swizzle_layout(b, a);
    } else if (comptime is_layout(A) and is_swizzle(B)) {
        return make_swizzle_layout(a, b);
    } else {
        unreachable;
    }
}

fn composition_swizzles(a: anytype, b: anytype) @TypeOf(make_swizzle(@TypeOf(a).yyy_mask ^ @TypeOf(b).yyy_mask, @TypeOf(a).zzz_mask ^ @TypeOf(b).zzz_mask)) {
    const A = @TypeOf(a);
    const B = @TypeOf(b);
    if (A.shift != B.shift) @compileError("Can only merge swizzles of the same shift");
    return make_swizzle(A.yyy_mask ^ B.yyy_mask, A.zzz_mask ^ B.zzz_mask);
}

fn is_swizzle(comptime T: type) bool {
    return @hasDecl(T, "swizzle_code");
}

fn is_layout(comptime T: type) bool {
    // Basic check for Layout type
    return @hasDecl(T, "ShapeType") and @hasDecl(T, "StrideType");
}

fn pop_count(comptime value: usize) comptime_int {
    return @popCount(value);
}

fn trailing_zeroes(comptime value: usize) comptime_int {
    if (value == 0) return @bitSizeOf(usize);
    return @ctz(value);
}

/// A composable layout wrapper that applies a swizzle functor to the mapped offset.
pub fn SwizzleLayout(comptime LayoutT: type, comptime SwizzleT: type) type {
    return struct {
        pub const transformed_layout = true;
        pub const transform_name = "swizzle";

        layout: LayoutT,
        swizzle: SwizzleT,
        shape: LayoutT.ShapeType,
        stride: LayoutT.StrideType,

        pub const ShapeType = LayoutT.ShapeType;
        pub const StrideType = LayoutT.StrideType;

        const Self = @This();

        pub fn init(l: LayoutT, s: SwizzleT) Self {
            return .{
                .layout = l,
                .swizzle = s,
                .shape = l.shape,
                .stride = l.stride,
            };
        }

        pub fn map(self: Self, coord: anytype) usize {
            return self.swizzle.apply(self.layout.map(coord));
        }

        pub fn map_1d(self: Self, logical_idx: usize) usize {
            return self.swizzle.apply(self.layout.map_1d(logical_idx));
        }

        pub fn get_hier_coord(self: Self, idx: usize) @TypeOf(self.layout.get_hier_coord(idx)) {
            return self.layout.get_hier_coord(self.swizzle.apply(idx));
        }

        pub fn get_flat_coord(self: Self, idx: usize) @TypeOf(self.layout.get_flat_coord(idx)) {
            return self.layout.get_flat_coord(self.swizzle.apply(idx));
        }

        pub fn get_1d_coord(self: Self, idx: usize) usize {
            return self.layout.get_1d_coord(self.swizzle.apply(idx));
        }

        pub fn size(self: Self) usize {
            return self.layout.size();
        }

        pub fn cosize(self: Self) usize {
            if (self.size() == 0) return 0;
            var max_offset: usize = 0;
            for (0..self.size()) |i| {
                const off = self.map_1d(i);
                if (off > max_offset) max_offset = off;
            }
            return max_offset + 1;
        }

        /// Slicing a SwizzleLayout must preserve the original pre-swizzle base
        /// offset. Applying the swizzle after pointer bumping is wrong for XOR
        /// layouts because `swizzle(base + local) != base + swizzle(local)`.
        pub fn slice_and_offset(self: Self, coord: anytype) struct { layout: SlicedSwizzleLayout(@TypeOf(self.layout.slice(coord)), SwizzleT), offset: usize } {
            const result = self.layout.slice_and_offset(coord);
            return .{
                .layout = make_sliced_swizzle_layout(result.layout, self.swizzle, result.offset),
                .offset = 0,
            };
        }
    };
}

pub fn make_swizzle_layout(layout: anytype, swizzle: anytype) SwizzleLayout(@TypeOf(layout), @TypeOf(swizzle)) {
    return SwizzleLayout(@TypeOf(layout), @TypeOf(swizzle)).init(layout, swizzle);
}

pub fn SlicedSwizzleLayout(comptime LayoutT: type, comptime SwizzleT: type) type {
    return struct {
        pub const transformed_layout = true;
        pub const transform_name = "sliced_swizzle";

        layout: LayoutT,
        swizzle: SwizzleT,
        base_offset: usize,
        shape: LayoutT.ShapeType,
        stride: LayoutT.StrideType,

        pub const ShapeType = LayoutT.ShapeType;
        pub const StrideType = LayoutT.StrideType;

        const Self = @This();

        pub fn init(l: LayoutT, s: SwizzleT, base: usize) Self {
            return .{
                .layout = l,
                .swizzle = s,
                .base_offset = base,
                .shape = l.shape,
                .stride = l.stride,
            };
        }

        pub fn map(self: Self, coord: anytype) usize {
            return self.swizzle.apply(self.base_offset + self.layout.map(coord));
        }

        pub fn map_1d(self: Self, logical_idx: usize) usize {
            return self.swizzle.apply(self.base_offset + self.layout.map_1d(logical_idx));
        }

        pub fn get_hier_coord(self: Self, idx: usize) @TypeOf(self.layout.get_hier_coord(idx)) {
            const pre_swizzle = self.swizzle.apply(idx);
            return self.layout.get_hier_coord(pre_swizzle - self.base_offset);
        }

        pub fn get_flat_coord(self: Self, idx: usize) @TypeOf(self.layout.get_flat_coord(idx)) {
            const pre_swizzle = self.swizzle.apply(idx);
            return self.layout.get_flat_coord(pre_swizzle - self.base_offset);
        }

        pub fn get_1d_coord(self: Self, idx: usize) usize {
            const pre_swizzle = self.swizzle.apply(idx);
            return self.layout.get_1d_coord(pre_swizzle - self.base_offset);
        }

        pub fn size(self: Self) usize {
            return self.layout.size();
        }

        pub fn cosize(self: Self) usize {
            if (self.size() == 0) return 0;
            var max_offset: usize = 0;
            for (0..self.size()) |i| {
                const off = self.map_1d(i);
                if (off > max_offset) max_offset = off;
            }
            return max_offset + 1;
        }

        pub fn slice_and_offset(self: Self, coord: anytype) struct {
            layout: SlicedSwizzleLayout(@TypeOf(self.layout.slice(coord)), SwizzleT),
            offset: usize,
        } {
            const result = self.layout.slice_and_offset(coord);
            return .{
                .layout = make_sliced_swizzle_layout(result.layout, self.swizzle, self.base_offset + result.offset),
                .offset = 0,
            };
        }
    };
}

pub fn make_sliced_swizzle_layout(layout: anytype, swizzle: anytype, base_offset: usize) SlicedSwizzleLayout(@TypeOf(layout), @TypeOf(swizzle)) {
    return SlicedSwizzleLayout(@TypeOf(layout), @TypeOf(swizzle)).init(layout, swizzle, base_offset);
}

test "swizzle layout footprint must include mapped addresses" {
    const layout = @import("layout.zig");

    const base = layout.make_layout(@as(usize, 3), @as(usize, 1));
    const sw = make_swizzle_layout(base, Swizzle(1, 0, 1){});

    try std.testing.expectEqual(@as(usize, 3), base.cosize());
    try std.testing.expectEqual(@as(usize, 3), sw.map_1d(2)); // accesses offset 3
    try std.testing.expect(sw.cosize() >= 4);
}

test "sliced swizzle layout cosize includes base offset" {
    const layout = @import("layout.zig");
    const numeric = @import("numeric.zig");

    const base = layout.make_layout(@as(usize, 8), @as(usize, 1));
    const sw = make_swizzle_layout(base, Swizzle(1, 0, 2){});

    // Slice element 4 (offset 4)
    const result = sw.slice_and_offset(numeric._4);
    const sliced = result.layout;

    try std.testing.expectEqual(@as(usize, 1), sliced.size());
    try std.testing.expectEqual(@as(usize, 5), sliced.map_1d(0)); // swizzle(4) = 5
    try std.testing.expect(sliced.cosize() >= 6);
}

test "swizzle layout exposes shape and stride for generic layout algorithms" {
    const layout = @import("layout.zig");
    const int_tuple = @import("int_tuple.zig");

    const base = layout.make_layout(
        .{ @as(usize, 4), @as(usize, 4) },
        .{ @as(isize, 1), @as(isize, 4) },
    );
    const sw = make_swizzle_layout(base, Swizzle(2, 0, 2){});

    try std.testing.expectEqual(@as(usize, 2), int_tuple.rank(@TypeOf(sw.shape)));
}
