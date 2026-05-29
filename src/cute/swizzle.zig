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
        layout: LayoutT,
        swizzle: SwizzleT,

        const Self = @This();

        pub fn init(l: LayoutT, s: SwizzleT) Self {
            return .{ .layout = l, .swizzle = s };
        }

        pub fn map(self: Self, coord: anytype) usize {
            return self.swizzle.apply(self.layout.map(coord));
        }

        pub fn map_1d(self: Self, logical_idx: usize) usize {
            return self.swizzle.apply(self.layout.map_1d(logical_idx));
        }

        pub fn size(self: Self) usize {
            return self.layout.size();
        }

        /// Slicing a SwizzleLayout returns a new SwizzleLayout wrapping the sliced sub-layout.
        pub fn slice_and_offset(self: Self, coord: anytype) struct { 
            layout: SwizzleLayout(@TypeOf(self.layout.slice(coord)), SwizzleT), 
            offset: usize 
        } {
            const result = self.layout.slice_and_offset(coord);
            return .{
                .layout = make_swizzle_layout(result.layout, self.swizzle),
                .offset = result.offset,
            };
        }
    };
}

pub fn make_swizzle_layout(layout: anytype, swizzle: anytype) SwizzleLayout(@TypeOf(layout), @TypeOf(swizzle)) {
    return SwizzleLayout(@TypeOf(layout), @TypeOf(swizzle)).init(layout, swizzle);
}
