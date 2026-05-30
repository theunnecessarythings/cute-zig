const std = @import("std");
const int_tuple = @import("int_tuple.zig");
const numeric = @import("numeric.zig");
const underscore = @import("underscore.zig");

pub fn SliceResultType(comptime LayoutT: type, comptime CoordT: type) type {
    const ShapeT = LayoutT.ShapeType;
    const StrideT = LayoutT.StrideType;
    
    // We can't easily instantiate them here if they are complex, 
    // but we can use their types with 'undefined' if they are structs.
    // A better way is to use a helper that only operates on types.
    const result_shape_type = @TypeOf(wrap_static_ints(slice_value(@as(CoordT, undefined), @as(ShapeT, undefined))));
    const result_stride_type = @TypeOf(wrap_static_ints(slice_value(@as(CoordT, undefined), @as(StrideT, undefined))));
    
    const NewLayoutT = Layout(result_shape_type, result_stride_type);
    return struct { 
        pub const LayoutType = NewLayoutT;
        layout: NewLayoutT, 
        offset: usize 
    };
}

pub fn Layout(comptime Shape: type, comptime Stride: type) type {
    return struct {
        pub const ShapeType = Shape;
        pub const StrideType = Stride;

        shape: Shape,
        stride: Stride,

        const Self = @This();

        pub fn init(s: Shape, d: Stride) Self {
            return .{ .shape = s, .stride = d };
        }

        /// Map a coordinate to a linear index.
        /// coord can be an integer or a tuple of integers.
        pub fn map(self: Self, coord: anytype) usize {
            return crd2idx(coord, self.shape, self.stride);
        }

        pub fn size(self: Self) usize {
            return int_tuple.size(self.shape);
        }

        /// Map a 1D logical index to a physical offset.
        /// Recursively unrolls hierarchical shapes and strides.
        pub fn map_1d(self: Self, logical_idx: usize) usize {
            return crd2idx(idx2crd(logical_idx, self.shape, self.stride), self.shape, self.stride);
        }

        pub fn get_hier_coord(self: Self, idx: usize) Idx2CrdType(@TypeOf(idx), Shape, Stride) {
            return idx2crd(idx, self.shape, self.stride);
        }

        pub fn get_flat_coord(self: Self, idx: usize) FlatCoordType(Shape) {
            return hier_to_flat_coord(idx2crd(idx, self.shape, self.stride), self.shape);
        }

        pub fn get_1d_coord(self: Self, idx: usize) usize {
            return crd2idx(idx2crd(idx, self.shape, self.stride), self.shape, make_compact_col_major_stride(self.shape));
        }

        pub fn cosize(self: Self) usize {
            // Real cosize: maximum extent of the layout footprint.
            return cosize_recursive(self.shape, self.stride) + 1;
        }

        fn cosize_recursive(shp: anytype, strd: anytype) usize {
            const ShapeT = @TypeOf(shp);
            if (comptime int_tuple.is_tuple(ShapeT)) {
                var max_offset: usize = 0;
                const R = comptime int_tuple.rank(ShapeT);
                inline for (0..R) |i| {
                    max_offset += cosize_recursive(shp[i], strd[i]);
                }
                return max_offset;
            } else {
                const s = @as(usize, @intCast(numeric.value(shp)));
                const d = strd;
                const int_d = if (comptime is_scaled_basis(@TypeOf(d)))
                    @as(isize, @intCast(numeric.value(d.value)))
                else switch (@typeInfo(@TypeOf(d))) {
                    .int, .comptime_int => @as(isize, @intCast(numeric.value(d))),
                    .@"struct", .@"enum", .@"union", .@"opaque" => @as(isize, @intCast(numeric.value(d))),
                    else => 0,
                };
                const abs_d = if (int_d >= 0) @as(usize, @intCast(int_d)) else @as(usize, @intCast(-int_d));
                return (s - 1) * abs_d;
            }
        }

        pub inline fn slice_and_offset(self: Self, coord: anytype) SliceResultType(Self, @TypeOf(coord)) {
            return .{
                .layout = make_layout(slice_value(coord, self.shape), slice_value(coord, self.stride)),
                .offset = slice_offset(coord, self.shape, self.stride),
            };
        }

        pub inline fn slice(self: Self, coord: anytype) SliceResultType(Self, @TypeOf(coord)).LayoutType {
            return make_layout(slice_value(coord, self.shape), slice_value(coord, self.stride));
        }

        pub inline fn dice(self: Self, coord: anytype) @TypeOf(make_layout(dice_value(coord, self.shape), dice_value(coord, self.stride))) {
            return make_layout(dice_value(coord, self.shape), dice_value(coord, self.stride));
        }
    };
}

pub fn wrap_static_ints(val: anytype) @TypeOf(blk: {
    @setEvalBranchQuota(10_000);
    const T = @TypeOf(val);
    if (T == comptime_int) {
        break :blk numeric.c(val);
    } else if (comptime int_tuple.is_tuple(T)) {
        const R = comptime int_tuple.rank(T);
        if (R == 0) break :blk .{};
        if (R == 1) break :blk .{wrap_static_ints(val[0])};
        if (R == 2) break :blk .{wrap_static_ints(val[0]), wrap_static_ints(val[1])};
        if (R == 3) break :blk .{wrap_static_ints(val[0]), wrap_static_ints(val[1]), wrap_static_ints(val[2])};
        if (R == 4) break :blk .{wrap_static_ints(val[0]), wrap_static_ints(val[1]), wrap_static_ints(val[2]), wrap_static_ints(val[3])};
        @compileError("wrap_static_ints supports rank up to 4");
    } else {
        break :blk val;
    }
}) {
    const T = @TypeOf(val);
    if (T == comptime_int) {
        return numeric.c(val);
    } else if (comptime int_tuple.is_tuple(T)) {
        const R = comptime int_tuple.rank(T);
        if (R == 0) return .{};
        if (R == 1) return .{wrap_static_ints(val[0])};
        if (R == 2) return .{wrap_static_ints(val[0]), wrap_static_ints(val[1])};
        if (R == 3) return .{wrap_static_ints(val[0]), wrap_static_ints(val[1]), wrap_static_ints(val[2])};
        if (R == 4) return .{wrap_static_ints(val[0]), wrap_static_ints(val[1]), wrap_static_ints(val[2]), wrap_static_ints(val[3])};
        @compileError("wrap_static_ints supports rank up to 4");
    } else {
        return val;
    }
}

pub fn make_layout(shp: anytype, strd: anytype) Layout(@TypeOf(wrap_static_ints(shp)), @TypeOf(wrap_static_ints(strd))) {
    const wrapped_shp = wrap_static_ints(shp);
    const wrapped_strd = wrap_static_ints(strd);
    return Layout(@TypeOf(wrapped_shp), @TypeOf(wrapped_strd)).init(wrapped_shp, wrapped_strd);
}

pub fn make_layout_left(shp: anytype) @TypeOf(make_layout(shp, make_compact_col_major_stride(shp))) {
    return make_layout(shp, make_compact_col_major_stride(shp));
}

pub fn make_layout_right(shp: anytype) @TypeOf(make_layout(shp, make_compact_row_major_stride(shp))) {
    return make_layout(shp, make_compact_row_major_stride(shp));
}

pub fn make_identity_layout(shp: anytype) @TypeOf(make_layout(shp, make_basis_like(shp))) {
    return make_layout(shp, make_basis_like(shp));
}

pub fn make_layout_like(l: anytype) @TypeOf(make_layout(l.shape, compact_order_like(l.shape, l.stride))) {
    return make_layout(l.shape, compact_order_like(l.shape, l.stride));
}

pub fn make_ordered_layout(shp: anytype, order: anytype) @TypeOf(make_layout(shp, compact_order(shp, order))) {
    return make_layout(shp, compact_order(shp, order));
}

pub fn shape(l: anytype) @TypeOf(l.shape) {
    return l.shape;
}

pub fn stride(l: anytype) @TypeOf(l.stride) {
    return l.stride;
}

pub fn size(l: anytype) usize {
    return int_tuple.size(l.shape);
}

pub fn rank(l: anytype) usize {
    return int_tuple.rank(@TypeOf(l.shape));
}

pub fn depth(l: anytype) usize {
    return int_tuple.depth(@TypeOf(l.shape));
}

pub fn cosize(l: anytype) usize {
    return l.cosize();
}

pub fn slice(coord: anytype, l: anytype) @TypeOf(l.slice(coord)) {
    return l.slice(coord);
}

pub fn slice_and_offset(coord: anytype, l: anytype) @TypeOf(l.slice_and_offset(coord)) {
    return l.slice_and_offset(coord);
}

pub fn dice(coord: anytype, l: anytype) @TypeOf(l.dice(coord)) {
    return l.dice(coord);
}

pub fn take(comptime begin: usize, comptime end: usize, l: anytype) @TypeOf(make_layout(
    int_tuple.take(begin, end, l.shape),
    int_tuple.take(begin, end, l.stride),
)) {
    return make_layout(
        int_tuple.take(begin, end, l.shape),
        int_tuple.take(begin, end, l.stride),
    );
}

pub fn select2(comptime first: usize, comptime second: usize, l: anytype) @TypeOf(make_layout(
    .{ l.shape[first], l.shape[second] },
    .{ l.stride[first], l.stride[second] },
)) {
    return make_layout(
        .{ l.shape[first], l.shape[second] },
        .{ l.stride[first], l.stride[second] },
    );
}

pub fn flatten_layout(l: anytype) @TypeOf(make_layout(
    int_tuple.flatten(l.shape),
    int_tuple.flatten(l.stride),
)) {
    return make_layout(int_tuple.flatten(l.shape), int_tuple.flatten(l.stride));
}

pub fn coalesce(l: anytype) CoalescedLayoutType(@TypeOf(l)) {
    const flat_shape = int_tuple.flatten(l.shape);
    const flat_stride = int_tuple.flatten(l.stride);
    return make_layout(
        coalesced_shape_value(flat_shape, flat_stride),
        coalesced_stride_value(flat_shape, flat_stride),
    );
}

pub fn filter_zeros(l: anytype) @TypeOf(make_layout(filter_zero_shape(l.stride, l.shape), l.stride)) {
    return make_layout(filter_zero_shape(l.stride, l.shape), l.stride);
}

pub fn filter(l: anytype) @TypeOf(coalesce(filter_zeros(l))) {
    return coalesce(filter_zeros(l));
}

pub fn complement(l: anytype, cotarget: anytype) ComplementType(@TypeOf(filter(l)), @TypeOf(cotarget)) {
    const fl = filter(l);
    return complement_filtered(fl, cotarget);
}

pub fn complement_auto(l: anytype) @TypeOf(complement(l, numeric.c(@as(comptime_int, cosize(filter(l)))))) {
    return complement(l, numeric.c(@as(comptime_int, cosize(filter(l)))));
}

pub fn logical_divide(l: anytype, tiler: anytype) LogicalDivideType(@TypeOf(l), @TypeOf(tiler)) {
    return logical_divide_impl(l, tiler);
}

pub fn zipped_divide(l: anytype, tiler: anytype) @TypeOf(tile_unzip(logical_divide(l, tiler), tiler)) {
    return tile_unzip(logical_divide(l, tiler), tiler);
}

pub fn tiled_divide(l: anytype, tiler: anytype) @TypeOf(unpack_second_mode(zipped_divide(l, tiler))) {
    return unpack_second_mode(zipped_divide(l, tiler));
}

pub fn flat_divide(l: anytype, tiler: anytype) @TypeOf(unpack_both_modes(zipped_divide(l, tiler))) {
    return unpack_both_modes(zipped_divide(l, tiler));
}

pub fn logical_product(block: anytype, tiler: anytype) @TypeOf(make_layout(
    logical_product_shape(block, tiler),
    logical_product_stride(block, tiler),
)) {
    return make_layout(logical_product_shape(block, tiler), logical_product_stride(block, tiler));
}

pub fn zipped_product(block: anytype, tiler: anytype) @TypeOf(tile_unzip(logical_product(block, tiler), tiler)) {
    return tile_unzip(logical_product(block, tiler), tiler);
}

pub fn tiled_product(block: anytype, tiler: anytype) @TypeOf(unpack_second_mode(zipped_product(block, tiler))) {
    return unpack_second_mode(zipped_product(block, tiler));
}

pub fn flat_product(block: anytype, tiler: anytype) @TypeOf(unpack_both_modes(zipped_product(block, tiler))) {
    return unpack_both_modes(zipped_product(block, tiler));
}

pub fn blocked_product(block: anytype, tiler: anytype) @TypeOf(make_layout(
    blocked_product_shape(block, tiler),
    blocked_product_stride(block, tiler),
)) {
    return make_layout(blocked_product_shape(block, tiler), blocked_product_stride(block, tiler));
}

pub fn raked_product(block: anytype, tiler: anytype) @TypeOf(make_layout(
    raked_product_shape(block, tiler),
    raked_product_stride(block, tiler),
)) {
    return make_layout(raked_product_shape(block, tiler), raked_product_stride(block, tiler));
}

pub fn coshape(l: anytype) usize {
    return coshape_for(l.shape, l.stride);
}

fn coshape_for(shp: anytype, strd: anytype) usize {
    return 1 + coshape_extent(shp, strd);
}

fn coshape_extent(shp: anytype, strd: anytype) usize {
    if (comptime int_tuple.is_tuple(@TypeOf(shp))) {
        var result: usize = 0;
        inline for (0..comptime int_tuple.rank(@TypeOf(shp))) |i| {
            result += coshape_extent(shp[i], strd[i]);
        }
        return result;
    }
    const s = @as(isize, @intCast(numeric.value(shp)));
    const d = if (comptime is_scaled_basis(@TypeOf(strd)))
        @as(isize, @intCast(numeric.value(strd.value)))
    else
        @as(isize, @intCast(numeric.value(strd)));
    const abs_d = if (d >= 0) d else -d;
    return @as(usize, @intCast((s - 1) * abs_d));
}

pub fn crd2idx(coord: anytype, shp: anytype, strd: anytype) usize {
    return crd2idx_with_basis_coord(coord, shp, strd, coord);
}

fn crd2idx_with_basis_coord(coord: anytype, shp: anytype, strd: anytype, basis_coord: anytype) usize {
    const CoordT = @TypeOf(coord);
    const ShapeT = @TypeOf(shp);
    if (comptime is_scaled_basis(@TypeOf(strd))) {
        return @as(usize, @intCast(numeric.value(basis_value(basis_coord, strd)))) * @as(usize, @intCast(numeric.value(strd.value)));
    }
    if (comptime int_tuple.is_tuple(ShapeT)) {
        if (comptime !int_tuple.is_tuple(CoordT)) {
            return crd2idx_with_basis_coord(idx2crd(coord, shp, strd), shp, strd, basis_coord);
        }
        comptime if (int_tuple.rank(CoordT) != int_tuple.rank(ShapeT)) @compileError("coordinate and shape ranks must match");
        var result: usize = 0;
        inline for (0..comptime int_tuple.rank(ShapeT)) |i| {
            result += crd2idx_with_basis_coord(coord[i], shp[i], strd[i], basis_coord);
        }
        return result;
    }
    const c = @as(isize, @intCast(numeric.value(coord)));
    const d = @as(isize, @intCast(numeric.value(strd)));
    return @as(usize, @intCast(c * d));
}

fn ScaledBasis(comptime ValueT: type, comptime path: []const usize) type {
    const owned_path = path[0..path.len].*;
    return struct {
        pub const basis_path = owned_path;
        pub const value_type = ValueT;
        value: ValueT,
    };
}

fn scaled_basis(value: anytype, comptime path: []const usize) ScaledBasis(@TypeOf(value), path) {
    return .{ .value = value };
}

fn is_scaled_basis(comptime T: type) bool {
    return switch (@typeInfo(T)) {
        .@"struct" => @hasDecl(T, "basis_path") and @hasDecl(T, "value_type"),
        else => false,
    };
}

fn basis_value(coord: anytype, basis: anytype) BasisValueType(@TypeOf(coord), @TypeOf(basis)) {
    const BasisT = @TypeOf(basis);
    return basis_value_path(coord, &BasisT.basis_path);
}

fn BasisValueType(comptime CoordT: type, comptime BasisT: type) type {
    return BasisValuePathType(CoordT, &BasisT.basis_path);
}

fn basis_value_path(coord: anytype, comptime path: []const usize) BasisValuePathType(@TypeOf(coord), path) {
    if (comptime path.len == 0) return coord;
    return basis_value_path(coord[path[0]], path[1..]);
}

fn BasisValuePathType(comptime CoordT: type, comptime path: []const usize) type {
    if (comptime path.len == 0) return CoordT;
    return BasisValuePathType(child_type(CoordT, path[0]), path[1..]);
}

fn min_abs_stride(strd: anytype) usize {
    const T = @TypeOf(strd);
    if (comptime is_scaled_basis(T)) {
        return min_abs_stride(strd.value);
    }
    if (comptime int_tuple.is_tuple(T)) {
        var min_s: usize = std.math.maxInt(usize);
        const R = comptime int_tuple.rank(T);
        inline for (0..R) |i| {
            const s = min_abs_stride(strd[i]);
            if (s < min_s) min_s = s;
        }
        return min_s;
    }
    const v = numeric.value(strd);
    // Handle both static and runtime integers. 
    // If it's a signed integer, we want its absolute value.
    const iv: isize = @intCast(v);
    return if (iv >= 0) @as(usize, @intCast(iv)) else @as(usize, @intCast(-iv));
}

pub fn idx2crd(idx: anytype, shp: anytype, strd: anytype) Idx2CrdType(@TypeOf(idx), @TypeOf(shp), @TypeOf(strd)) {
    return idx2crd_impl(@as(usize, @intCast(numeric.value(idx))), shp, strd).coord;
}

fn idx2crd_impl(idx: usize, shp: anytype, strd: anytype) struct { coord: Idx2CrdType(usize, @TypeOf(shp), @TypeOf(strd)), remainder: usize } {
    const ShapeT = @TypeOf(shp);
    if (comptime int_tuple.is_tuple(ShapeT)) {
        const R = comptime int_tuple.rank(ShapeT);
        var result: Idx2CrdType(usize, @TypeOf(shp), @TypeOf(strd)) = undefined;
        var rest = idx;

        // For compact layouts, we must decompose in increasing order of absolute strides.
        var strides: [R]usize = undefined;
        inline for (0..R) |i| strides[i] = min_abs_stride(strd[i]);

        var p: [R]usize = undefined;
        inline for (0..R) |i| p[i] = i;

        // Comptime sort if possible, otherwise runtime.
        // We use a simple insertion sort for small R.
        for (0..R) |i| {
            for (i + 1..R) |j| {
                // Tie-break equal strides by processing higher-indexed modes first (row-major-like).
                if (strides[p[j]] < strides[p[i]] or (strides[p[j]] == strides[p[i]] and p[j] > p[i])) {
                    const tmp = p[i];
                    p[i] = p[j];
                    p[j] = tmp;
                }
            }
        }

        inline for (0..R) |i| {
            const mode_idx = p[i];
            // Since mode_idx might be runtime, we use a switch-like unrolling to access shp[mode_idx]
            inline for (0..R) |k| {
                if (mode_idx == k) {
                    const sub = idx2crd_impl(rest, shp[k], strd[k]);
                    result[k] = sub.coord;
                    rest = sub.remainder;
                }
            }
        }
        return .{ .coord = result, .remainder = rest };
    }
    const s = min_abs_stride(strd);
    const extent = @as(usize, @intCast(numeric.value(shp)));
    const val = (idx / s) % extent;
    return .{ .coord = val, .remainder = idx - val * s };
}
fn Idx2CrdType(comptime IdxT: type, comptime ShapeT: type, comptime StrideT: type) type {
    _ = IdxT;
    _ = StrideT;
    if (comptime int_tuple.is_tuple(ShapeT)) {
        const R = comptime int_tuple.rank(ShapeT);
        comptime var fields: [R]type = undefined;
        inline for (0..R) |i| fields[i] = Idx2CrdType(usize, child_type(ShapeT, i), usize);
        return std.meta.Tuple(&fields);
    }
    return usize;
}

fn hier_to_flat_coord(coord: anytype, shp: anytype) FlatCoordType(@TypeOf(shp)) {
    if (comptime int_tuple.is_tuple(@TypeOf(shp))) {
        var result: FlatCoordType(@TypeOf(shp)) = undefined;
        inline for (0..comptime int_tuple.rank(@TypeOf(shp))) |i| {
            result[i] = crd2idx(coord[i], shp[i], make_compact_col_major_stride(shp[i]));
        }
        return result;
    }
    return @as(usize, @intCast(numeric.value(coord)));
}

fn FlatCoordType(comptime ShapeT: type) type {
    if (comptime int_tuple.is_tuple(ShapeT)) {
        const R = comptime int_tuple.rank(ShapeT);
        comptime var fields: [R]type = undefined;
        inline for (0..R) |i| fields[i] = usize;
        return std.meta.Tuple(&fields);
    }
    return usize;
}

fn make_basis_like(shp: anytype) BasisLikeType(@TypeOf(shp), &.{}) {
    return make_basis_like_at(shp, &.{});
}

fn make_basis_like_at(shp: anytype, comptime path: []const usize) BasisLikeType(@TypeOf(shp), path) {
    if (comptime int_tuple.is_tuple(@TypeOf(shp))) {
        const R = comptime int_tuple.rank(@TypeOf(shp));
        var result: BasisLikeType(@TypeOf(shp), path) = undefined;
        inline for (0..R) |i| result[i] = make_basis_like_at(shp[i], append_path(path, i));
        return result;
    }
    return scaled_basis(numeric._1, path);
}

fn BasisLikeType(comptime ShapeT: type, comptime path: []const usize) type {
    if (comptime int_tuple.is_tuple(ShapeT)) {
        const R = comptime int_tuple.rank(ShapeT);
        comptime var fields: [R]type = undefined;
        inline for (0..R) |i| fields[i] = BasisLikeType(child_type(ShapeT, i), append_path(path, i));
        return std.meta.Tuple(&fields);
    }
    return ScaledBasis(@TypeOf(numeric._1), path);
}

fn append_path(comptime path: []const usize, comptime value: usize) []const usize {
    comptime var result: [path.len + 1]usize = undefined;
    inline for (0..path.len) |i| result[i] = path[i];
    result[path.len] = value;
    const owned = result;
    return &owned;
}

fn CoalescedLayoutType(comptime LayoutT: type) type {
    return @TypeOf(make_layout(
        @as(CoalescedShapeType(@TypeOf(int_tuple.flatten(@as(LayoutT.ShapeType, undefined))), @TypeOf(int_tuple.flatten(@as(LayoutT.StrideType, undefined)))), undefined),
        @as(CoalescedStrideType(@TypeOf(int_tuple.flatten(@as(LayoutT.ShapeType, undefined))), @TypeOf(int_tuple.flatten(@as(LayoutT.StrideType, undefined)))), undefined),
    ));
}

fn CoalescedShapeType(comptime ShapeT: type, comptime StrideT: type) type {
    @setEvalBranchQuota(10_000);
    const OutR = comptime coalesced_rank_type(ShapeT, StrideT);
    comptime var fields: [OutR]type = undefined;
    inline for (0..OutR) |out_i| fields[out_i] = coalesced_shape_child_type(out_i, ShapeT, StrideT);
    return std.meta.Tuple(&fields);
}

fn CoalescedStrideType(comptime ShapeT: type, comptime StrideT: type) type {
    @setEvalBranchQuota(10_000);
    const OutR = comptime coalesced_rank_type(ShapeT, StrideT);
    comptime var fields: [OutR]type = undefined;
    inline for (0..OutR) |out_i| fields[out_i] = coalesced_stride_child_type(out_i, ShapeT, StrideT);
    return std.meta.Tuple(&fields);
}

fn coalesced_shape_value(flat_shape: anytype, flat_stride: anytype) CoalescedShapeType(@TypeOf(flat_shape), @TypeOf(flat_stride)) {
    const OutT = CoalescedShapeType(@TypeOf(flat_shape), @TypeOf(flat_stride));
    return switch (comptime int_tuple.rank(OutT)) {
        1 => .{coalesced_shape_at(0, flat_shape, flat_stride)},
        2 => .{
            coalesced_shape_at(0, flat_shape, flat_stride),
            coalesced_shape_at(1, flat_shape, flat_stride),
        },
        3 => .{
            coalesced_shape_at(0, flat_shape, flat_stride),
            coalesced_shape_at(1, flat_shape, flat_stride),
            coalesced_shape_at(2, flat_shape, flat_stride),
        },
        4 => .{
            coalesced_shape_at(0, flat_shape, flat_stride),
            coalesced_shape_at(1, flat_shape, flat_stride),
            coalesced_shape_at(2, flat_shape, flat_stride),
            coalesced_shape_at(3, flat_shape, flat_stride),
        },
        else => @compileError("coalesce currently supports coalesced rank 1..4"),
    };
}

fn coalesced_stride_value(flat_shape: anytype, flat_stride: anytype) CoalescedStrideType(@TypeOf(flat_shape), @TypeOf(flat_stride)) {
    const OutT = CoalescedStrideType(@TypeOf(flat_shape), @TypeOf(flat_stride));
    return switch (comptime int_tuple.rank(OutT)) {
        1 => .{coalesced_stride_at(0, flat_shape, flat_stride)},
        2 => .{
            coalesced_stride_at(0, flat_shape, flat_stride),
            coalesced_stride_at(1, flat_shape, flat_stride),
        },
        3 => .{
            coalesced_stride_at(0, flat_shape, flat_stride),
            coalesced_stride_at(1, flat_shape, flat_stride),
            coalesced_stride_at(2, flat_shape, flat_stride),
        },
        4 => .{
            coalesced_stride_at(0, flat_shape, flat_stride),
            coalesced_stride_at(1, flat_shape, flat_stride),
            coalesced_stride_at(2, flat_shape, flat_stride),
            coalesced_stride_at(3, flat_shape, flat_stride),
        },
        else => @compileError("coalesce currently supports coalesced rank 1..4"),
    };
}

fn coalesced_shape_at(comptime out_i: usize, flat_shape: anytype, flat_stride: anytype) child_type(CoalescedShapeType(@TypeOf(flat_shape), @TypeOf(flat_stride)), out_i) {
    const T = child_type(CoalescedShapeType(@TypeOf(flat_shape), @TypeOf(flat_stride)), out_i);
    if (comptime numeric.is_static_int(T)) return .{};
    return @as(T, @intCast(coalesced_shape_runtime(out_i, flat_shape, flat_stride)));
}

fn coalesced_stride_at(comptime out_i: usize, flat_shape: anytype, flat_stride: anytype) child_type(CoalescedStrideType(@TypeOf(flat_shape), @TypeOf(flat_stride)), out_i) {
    const T = child_type(CoalescedStrideType(@TypeOf(flat_shape), @TypeOf(flat_stride)), out_i);
    if (comptime numeric.is_static_int(T)) return .{};
    return @as(T, @intCast(coalesced_stride_runtime(out_i, flat_shape, flat_stride)));
}

fn coalesced_rank_type(comptime ShapeT: type, comptime StrideT: type) usize {
    const R = comptime int_tuple.rank(ShapeT);
    comptime var out_count: usize = 1;
    comptime var new_shape = child_type(ShapeT, R - 1);
    comptime var new_stride = child_type(StrideT, R - 1);
    comptime var i = R - 1;
    inline while (i > 0) {
        i -= 1;
        const s = child_type(ShapeT, i);
        const d = child_type(StrideT, i);
        if (is_static_one(s)) {
            continue;
        } else if (is_static_one(new_shape)) {
            new_shape = s;
            new_stride = d;
        } else if (can_coalesce_pair_type(s, d, new_shape, new_stride)) {
            new_shape = numeric.C(s.static_value * new_shape.static_value);
            new_stride = d;
        } else {
            out_count += 1;
            new_shape = s;
            new_stride = d;
        }
    }
    return out_count;
}

fn coalesced_shape_child_type(comptime out_i: usize, comptime ShapeT: type, comptime StrideT: type) type {
    return coalesced_child_type(.shape, out_i, ShapeT, StrideT);
}

fn coalesced_stride_child_type(comptime out_i: usize, comptime ShapeT: type, comptime StrideT: type) type {
    return coalesced_child_type(.stride, out_i, ShapeT, StrideT);
}

const CoalescedChildKind = enum { shape, stride };

fn coalesced_child_type(comptime kind: CoalescedChildKind, comptime out_i: usize, comptime ShapeT: type, comptime StrideT: type) type {
    const R = comptime int_tuple.rank(ShapeT);
    const OutR = comptime coalesced_rank_type(ShapeT, StrideT);
    comptime var out_rev: usize = 0;
    comptime var new_shape = child_type(ShapeT, R - 1);
    comptime var new_stride = child_type(StrideT, R - 1);
    comptime var i = R - 1;
    inline while (i > 0) {
        i -= 1;
        const s = child_type(ShapeT, i);
        const d = child_type(StrideT, i);
        if (is_static_one(s)) {
            continue;
        } else if (is_static_one(new_shape)) {
            new_shape = s;
            new_stride = d;
        } else if (can_coalesce_pair_type(s, d, new_shape, new_stride)) {
            new_shape = numeric.C(s.static_value * new_shape.static_value);
            new_stride = d;
        } else {
            if (OutR - 1 - out_rev == out_i) return if (kind == .shape) new_shape else new_stride;
            out_rev += 1;
            new_shape = s;
            new_stride = d;
        }
    }
    if (OutR - 1 - out_rev == out_i) return if (kind == .shape) new_shape else new_stride;
    @compileError("invalid coalesced child index");
}

fn coalesced_shape_runtime(comptime out_i: usize, flat_shape: anytype, flat_stride: anytype) usize {
    return coalesced_runtime(.shape, out_i, flat_shape, flat_stride);
}

fn coalesced_stride_runtime(comptime out_i: usize, flat_shape: anytype, flat_stride: anytype) usize {
    return coalesced_runtime(.stride, out_i, flat_shape, flat_stride);
}

fn coalesced_runtime(comptime kind: CoalescedChildKind, comptime out_i: usize, flat_shape: anytype, flat_stride: anytype) usize {
    const ShapeT = @TypeOf(flat_shape);
    const R = comptime int_tuple.rank(ShapeT);
    const OutR = comptime coalesced_rank_type(ShapeT, @TypeOf(flat_stride));
    var out_rev: usize = 0;
    var new_shape = @as(usize, @intCast(numeric.value(flat_shape[R - 1])));
    var new_stride = @as(usize, @intCast(numeric.value(flat_stride[R - 1])));
    comptime var i = R - 1;
    inline while (i > 0) {
        i -= 1;
        const sT = child_type(ShapeT, i);
        if (comptime is_static_one(sT)) {
            continue;
        } else if (comptime is_static_one(coalesced_running_shape_type(i + 1, ShapeT, @TypeOf(flat_stride)))) {
            new_shape = @as(usize, @intCast(numeric.value(flat_shape[i])));
            new_stride = @as(usize, @intCast(numeric.value(flat_stride[i])));
        } else if (comptime can_coalesce_pair_runtime_step(i, ShapeT, @TypeOf(flat_stride))) {
            new_shape *= @as(usize, @intCast(numeric.value(flat_shape[i])));
            new_stride = @as(usize, @intCast(numeric.value(flat_stride[i])));
        } else {
            if (OutR - 1 - out_rev == out_i) return if (kind == .shape) new_shape else new_stride;
            out_rev += 1;
            new_shape = @as(usize, @intCast(numeric.value(flat_shape[i])));
            new_stride = @as(usize, @intCast(numeric.value(flat_stride[i])));
        }
    }
    return if (kind == .shape) new_shape else new_stride;
}

fn coalesced_running_shape_type(comptime start_i: usize, comptime ShapeT: type, comptime StrideT: type) type {
    const R = comptime int_tuple.rank(ShapeT);
    comptime var new_shape = child_type(ShapeT, R - 1);
    comptime var new_stride = child_type(StrideT, R - 1);
    comptime var i = R - 1;
    inline while (i > start_i) {
        i -= 1;
        const s = child_type(ShapeT, i);
        const d = child_type(StrideT, i);
        if (is_static_one(s)) {
            continue;
        } else if (is_static_one(new_shape)) {
            new_shape = s;
            new_stride = d;
        } else if (can_coalesce_pair_type(s, d, new_shape, new_stride)) {
            new_shape = numeric.C(s.static_value * new_shape.static_value);
            new_stride = d;
        } else {
            new_shape = s;
            new_stride = d;
        }
    }
    return new_shape;
}

fn can_coalesce_pair_runtime_step(comptime idx: usize, comptime ShapeT: type, comptime StrideT: type) bool {
    const RunningShapeT = coalesced_running_shape_type(idx + 1, ShapeT, StrideT);
    const RunningStrideT = coalesced_running_stride_type(idx + 1, ShapeT, StrideT);
    return can_coalesce_pair_type(child_type(ShapeT, idx), child_type(StrideT, idx), RunningShapeT, RunningStrideT);
}

fn coalesced_running_stride_type(comptime start_i: usize, comptime ShapeT: type, comptime StrideT: type) type {
    const R = comptime int_tuple.rank(ShapeT);
    comptime var new_shape = child_type(ShapeT, R - 1);
    comptime var new_stride = child_type(StrideT, R - 1);
    comptime var i = R - 1;
    inline while (i > start_i) {
        i -= 1;
        const s = child_type(ShapeT, i);
        const d = child_type(StrideT, i);
        if (is_static_one(s)) {
            continue;
        } else if (is_static_one(new_shape)) {
            new_shape = s;
            new_stride = d;
        } else if (can_coalesce_pair_type(s, d, new_shape, new_stride)) {
            new_shape = numeric.C(s.static_value * new_shape.static_value);
            new_stride = d;
        } else {
            new_shape = s;
            new_stride = d;
        }
    }
    return new_stride;
}

fn can_coalesce_pair_type(comptime Shape0: type, comptime Stride0: type, comptime Shape1: type, comptime Stride1: type) bool {
    return numeric.is_static_int(Shape0) and
        numeric.is_static_int(Stride0) and
        numeric.is_static_int(Shape1) and
        numeric.is_static_int(Stride1) and
        Shape0.static_value * Stride0.static_value == Stride1.static_value;
}

fn is_static_one(comptime T: type) bool {
    return numeric.is_static_int(T) and T.static_value == 1;
}

fn ComplementType(comptime LayoutT: type, comptime CoTargetT: type) type {
    return @TypeOf(complement_filtered(
        @as(LayoutT, undefined),
        @as(CoTargetT, undefined),
    ));
}

fn complement_filtered(l: anytype, cotarget: anytype) ComplementFilteredType(@TypeOf(l), @TypeOf(cotarget)) {
    const ShapeT = @TypeOf(l.shape);
    if (comptime int_tuple.rank(ShapeT) == 1) {
        return complement_rank1(l, cotarget);
    }
    if (comptime int_tuple.rank(ShapeT) == 2) {
        return complement_rank2(l, cotarget);
    }
    if (comptime int_tuple.rank(ShapeT) == 3) {
        return complement_rank3(l, cotarget);
    }
    @compileError("complement currently supports filtered rank <= 3");
}

fn ComplementFilteredType(comptime LayoutT: type, comptime CoTargetT: type) type {
    const ShapeT = LayoutT.ShapeType;
    if (comptime int_tuple.rank(ShapeT) == 1) {
        return @TypeOf(complement_rank1(@as(LayoutT, undefined), @as(CoTargetT, undefined)));
    }
    if (comptime int_tuple.rank(ShapeT) == 2) {
        return @TypeOf(complement_rank2(@as(LayoutT, undefined), @as(CoTargetT, undefined)));
    }
    if (comptime int_tuple.rank(ShapeT) == 3) {
        return @TypeOf(complement_rank3(@as(LayoutT, undefined), @as(CoTargetT, undefined)));
    }
    @compileError("complement currently supports filtered rank <= 3");
}

fn complement_rank1(l: anytype, cotarget: anytype) @TypeOf(coalesce(make_layout(
    complement_rank1_shape(l.shape[0], l.stride[0], cotarget),
    complement_rank1_stride(l.shape[0], l.stride[0], cotarget),
))) {
    return coalesce(make_layout(
        complement_rank1_shape(l.shape[0], l.stride[0], cotarget),
        complement_rank1_stride(l.shape[0], l.stride[0], cotarget),
    ));
}

fn complement_rank1_shape(shp: anytype, strd: anytype, cotarget: anytype) @TypeOf(complement_rank1_shape_impl(shp, strd, cotarget)) {
    return complement_rank1_shape_impl(shp, strd, cotarget);
}

fn complement_rank1_stride(shp: anytype, strd: anytype, cotarget: anytype) @TypeOf(complement_rank1_stride_impl(shp, strd, cotarget)) {
    return complement_rank1_stride_impl(shp, strd, cotarget);
}

fn complement_rank1_shape_impl(shp: anytype, strd: anytype, cotarget: anytype) type_or_tuple_rank1_shape(@TypeOf(shp), @TypeOf(strd), @TypeOf(cotarget)) {
    const StrideT = @TypeOf(strd);
    if (comptime is_static_zero(StrideT)) return cotarget;
    const first = strd;
    const new_stride = numeric.mul(strd, shp);
    const rest = static_ceil_div(cotarget, new_stride);
    return .{ first, rest };
}

fn complement_rank1_stride_impl(shp: anytype, strd: anytype, cotarget: anytype) type_or_tuple_rank1_stride(@TypeOf(shp), @TypeOf(strd), @TypeOf(cotarget)) {
    const StrideT = @TypeOf(strd);
    if (comptime is_static_zero(StrideT)) return numeric._1;
    return .{ numeric._1, numeric.mul(strd, shp) };
}

fn type_or_tuple_rank1_shape(comptime ShapeT: type, comptime StrideT: type, comptime CoTargetT: type) type {
    if (comptime is_static_zero(StrideT)) return CoTargetT;
    return @TypeOf(.{
        @as(StrideT, undefined),
        @as(@TypeOf(static_ceil_div(@as(CoTargetT, undefined), numeric.mul(@as(StrideT, undefined), @as(ShapeT, undefined)))), undefined),
    });
}

fn type_or_tuple_rank1_stride(comptime ShapeT: type, comptime StrideT: type, comptime CoTargetT: type) type {
    _ = CoTargetT;
    if (comptime is_static_zero(StrideT)) return @TypeOf(numeric._1);
    return @TypeOf(.{
        numeric._1,
        @as(@TypeOf(numeric.mul(@as(StrideT, undefined), @as(ShapeT, undefined))), undefined),
    });
}

fn complement_rank2(l: anytype, cotarget: anytype) @TypeOf(coalesce(make_layout(
    complement_rank2_shape(l.shape, l.stride, cotarget),
    complement_rank2_stride(l.shape, l.stride, cotarget),
))) {
    return coalesce(make_layout(
        complement_rank2_shape(l.shape, l.stride, cotarget),
        complement_rank2_stride(l.shape, l.stride, cotarget),
    ));
}

fn complement_rank2_shape(shp: anytype, strd: anytype, cotarget: anytype) ComplementRank2ShapeType(@TypeOf(shp), @TypeOf(strd), @TypeOf(cotarget)) {
    const first_idx: usize = comptime if (numeric.value(@as(child_type(@TypeOf(strd), 0), undefined)) <= numeric.value(@as(child_type(@TypeOf(strd), 1), undefined))) 0 else 1;
    const second_idx: usize = comptime 1 - first_idx;
    const first_shape = static_div(strd[first_idx], numeric._1);
    const first_new_stride = numeric.mul(strd[first_idx], shp[first_idx]);
    const second_shape = static_div(strd[second_idx], first_new_stride);
    const rest_stride = numeric.mul(strd[second_idx], shp[second_idx]);
    const rest_shape = static_ceil_div(cotarget, rest_stride);
    return .{ .{ first_shape, second_shape }, rest_shape };
}

fn complement_rank2_stride(shp: anytype, strd: anytype, cotarget: anytype) ComplementRank2StrideType(@TypeOf(shp), @TypeOf(strd), @TypeOf(cotarget)) {
    const first_idx: usize = comptime if (numeric.value(@as(child_type(@TypeOf(strd), 0), undefined)) <= numeric.value(@as(child_type(@TypeOf(strd), 1), undefined))) 0 else 1;
    const second_idx: usize = comptime 1 - first_idx;
    const first_new_stride = numeric.mul(strd[first_idx], shp[first_idx]);
    const rest_stride = numeric.mul(strd[second_idx], shp[second_idx]);
    return .{ .{ numeric._1, first_new_stride }, rest_stride };
}

fn ComplementRank2ShapeType(comptime ShapeT: type, comptime StrideT: type, comptime CoTargetT: type) type {
    const first_idx: usize = comptime if (numeric.value(@as(child_type(StrideT, 0), undefined)) <= numeric.value(@as(child_type(StrideT, 1), undefined))) 0 else 1;
    const second_idx: usize = comptime 1 - first_idx;
    const first_shape = static_div(@as(child_type(StrideT, first_idx), undefined), numeric._1);
    const first_new_stride = numeric.mul(@as(child_type(StrideT, first_idx), undefined), @as(child_type(ShapeT, first_idx), undefined));
    const second_shape = static_div(@as(child_type(StrideT, second_idx), undefined), first_new_stride);
    const rest_stride = numeric.mul(@as(child_type(StrideT, second_idx), undefined), @as(child_type(ShapeT, second_idx), undefined));
    return @TypeOf(.{
        .{ first_shape, second_shape },
        static_ceil_div(@as(CoTargetT, undefined), rest_stride),
    });
}

fn ComplementRank2StrideType(comptime ShapeT: type, comptime StrideT: type, comptime CoTargetT: type) type {
    _ = CoTargetT;
    const first_idx: usize = comptime if (numeric.value(@as(child_type(StrideT, 0), undefined)) <= numeric.value(@as(child_type(StrideT, 1), undefined))) 0 else 1;
    const second_idx: usize = comptime 1 - first_idx;
    const first_new_stride = numeric.mul(@as(child_type(StrideT, first_idx), undefined), @as(child_type(ShapeT, first_idx), undefined));
    const rest_stride = numeric.mul(@as(child_type(StrideT, second_idx), undefined), @as(child_type(ShapeT, second_idx), undefined));
    return @TypeOf(.{ .{ numeric._1, first_new_stride }, rest_stride });
}

fn complement_rank3(l: anytype, cotarget: anytype) @TypeOf(coalesce(make_layout(
    complement_rank3_shape(l.shape, l.stride, cotarget),
    complement_rank3_stride(l.shape, l.stride, cotarget),
))) {
    return coalesce(make_layout(
        complement_rank3_shape(l.shape, l.stride, cotarget),
        complement_rank3_stride(l.shape, l.stride, cotarget),
    ));
}

fn complement_rank3_shape(shp: anytype, strd: anytype, cotarget: anytype) ComplementRank3ShapeType(@TypeOf(shp), @TypeOf(strd), @TypeOf(cotarget)) {
    const idxs = comptime sorted_stride_indices3(@TypeOf(strd));
    const s0 = strd[idxs[0]];
    const s1 = strd[idxs[1]];
    const s2 = strd[idxs[2]];
    const first_shape = static_div(s0, numeric._1);
    const first_new_stride = numeric.mul(s0, shp[idxs[0]]);
    const second_shape = static_div(s1, first_new_stride);
    const second_new_stride = numeric.mul(s1, shp[idxs[1]]);
    const third_shape = static_div(s2, second_new_stride);
    const rest_stride = numeric.mul(s2, shp[idxs[2]]);
    const rest_shape = static_ceil_div(cotarget, rest_stride);
    return .{ .{ first_shape, second_shape, third_shape }, rest_shape };
}

fn complement_rank3_stride(shp: anytype, strd: anytype, cotarget: anytype) ComplementRank3StrideType(@TypeOf(shp), @TypeOf(strd), @TypeOf(cotarget)) {
    const idxs = comptime sorted_stride_indices3(@TypeOf(strd));
    const s0 = strd[idxs[0]];
    const s1 = strd[idxs[1]];
    const s2 = strd[idxs[2]];
    const first_new_stride = numeric.mul(s0, shp[idxs[0]]);
    const second_new_stride = numeric.mul(s1, shp[idxs[1]]);
    const rest_stride = numeric.mul(s2, shp[idxs[2]]);
    return .{ .{ numeric._1, first_new_stride, second_new_stride }, rest_stride };
}

fn ComplementRank3ShapeType(comptime ShapeT: type, comptime StrideT: type, comptime CoTargetT: type) type {
    const idxs = comptime sorted_stride_indices3(StrideT);
    const s0 = @as(child_type(StrideT, idxs[0]), undefined);
    const s1 = @as(child_type(StrideT, idxs[1]), undefined);
    const s2 = @as(child_type(StrideT, idxs[2]), undefined);
    const first_shape = static_div(s0, numeric._1);
    const first_new_stride = numeric.mul(s0, @as(child_type(ShapeT, idxs[0]), undefined));
    const second_shape = static_div(s1, first_new_stride);
    const second_new_stride = numeric.mul(s1, @as(child_type(ShapeT, idxs[1]), undefined));
    const third_shape = static_div(s2, second_new_stride);
    const rest_stride = numeric.mul(s2, @as(child_type(ShapeT, idxs[2]), undefined));
    return @TypeOf(.{
        .{ first_shape, second_shape, third_shape },
        static_ceil_div(@as(CoTargetT, undefined), rest_stride),
    });
}

fn ComplementRank3StrideType(comptime ShapeT: type, comptime StrideT: type, comptime CoTargetT: type) type {
    _ = CoTargetT;
    const idxs = comptime sorted_stride_indices3(StrideT);
    const s0 = @as(child_type(StrideT, idxs[0]), undefined);
    const s1 = @as(child_type(StrideT, idxs[1]), undefined);
    const s2 = @as(child_type(StrideT, idxs[2]), undefined);
    const first_new_stride = numeric.mul(s0, @as(child_type(ShapeT, idxs[0]), undefined));
    const second_new_stride = numeric.mul(s1, @as(child_type(ShapeT, idxs[1]), undefined));
    const rest_stride = numeric.mul(s2, @as(child_type(ShapeT, idxs[2]), undefined));
    return @TypeOf(.{ .{ numeric._1, first_new_stride, second_new_stride }, rest_stride });
}

fn sorted_stride_indices3(comptime StrideT: type) [3]usize {
    comptime var idxs = [_]usize{ 0, 1, 2 };
    comptime var i: usize = 0;
    inline while (i < 3) : (i += 1) {
        comptime var j: usize = i + 1;
        inline while (j < 3) : (j += 1) {
            if (stride_type_value(child_type(StrideT, idxs[j])) < stride_type_value(child_type(StrideT, idxs[i]))) {
                const tmp = idxs[i];
                idxs[i] = idxs[j];
                idxs[j] = tmp;
            }
        }
    }
    return idxs;
}

fn stride_type_value(comptime T: type) comptime_int {
    if (comptime numeric.is_static_int(T)) return T.static_value;
    @compileError("static complement rank > 1 requires static strides");
}

fn LogicalDivideType(comptime LayoutT: type, comptime TilerT: type) type {
    return @TypeOf(logical_divide_impl(@as(LayoutT, undefined), @as(TilerT, undefined)));
}

fn logical_divide_impl(l: anytype, tiler: anytype) @TypeOf(make_layout(
    logical_divide_shape(l, tiler),
    logical_divide_stride(l, tiler),
)) {
    return make_layout(
        logical_divide_shape(l, tiler),
        logical_divide_stride(l, tiler),
    );
}

fn logical_divide_shape(l: anytype, tiler: anytype) LogicalDivideShapeType(@TypeOf(l), @TypeOf(tiler)) {
    const ShapeT = @TypeOf(l.shape);
    if (comptime int_tuple.is_tuple(ShapeT)) {
        if (comptime !int_tuple.is_tuple(@TypeOf(tiler))) {
            return logical_divide_rank1_shape(unwrap_rank1_layout(coalesce(l)), tiler);
        }
        comptime if (!int_tuple.is_tuple(@TypeOf(tiler))) @compileError("tuple layout logical_divide expects tuple tiler");
        const R = comptime int_tuple.rank(ShapeT);
        return switch (R) {
            1 => .{logical_divide_rank1_shape(layout_mode_at(l, 0), tiler[0])},
            2 => .{
                logical_divide_rank1_shape(layout_mode_at(l, 0), tiler[0]),
                logical_divide_rank1_shape(layout_mode_at(l, 1), tiler[1]),
            },
            3 => .{
                logical_divide_rank1_shape(layout_mode_at(l, 0), tiler[0]),
                logical_divide_rank1_shape(layout_mode_at(l, 1), tiler[1]),
                logical_divide_rank1_shape(layout_mode_at(l, 2), tiler[2]),
            },
            else => @compileError("logical_divide tuple tiler currently supports rank <= 3"),
        };
    }
    return logical_divide_rank1_shape(l, tiler);
}

fn logical_divide_stride(l: anytype, tiler: anytype) LogicalDivideStrideType(@TypeOf(l), @TypeOf(tiler)) {
    const ShapeT = @TypeOf(l.shape);
    if (comptime int_tuple.is_tuple(ShapeT)) {
        if (comptime !int_tuple.is_tuple(@TypeOf(tiler))) {
            return logical_divide_rank1_stride(unwrap_rank1_layout(coalesce(l)), tiler);
        }
        comptime if (!int_tuple.is_tuple(@TypeOf(tiler))) @compileError("tuple layout logical_divide expects tuple tiler");
        const R = comptime int_tuple.rank(ShapeT);
        return switch (R) {
            1 => .{logical_divide_rank1_stride(layout_mode_at(l, 0), tiler[0])},
            2 => .{
                logical_divide_rank1_stride(layout_mode_at(l, 0), tiler[0]),
                logical_divide_rank1_stride(layout_mode_at(l, 1), tiler[1]),
            },
            3 => .{
                logical_divide_rank1_stride(layout_mode_at(l, 0), tiler[0]),
                logical_divide_rank1_stride(layout_mode_at(l, 1), tiler[1]),
                logical_divide_rank1_stride(layout_mode_at(l, 2), tiler[2]),
            },
            else => @compileError("logical_divide tuple tiler currently supports rank <= 3"),
        };
    }
    return logical_divide_rank1_stride(l, tiler);
}

fn LogicalDivideShapeType(comptime LayoutT: type, comptime TilerT: type) type {
    if (comptime int_tuple.is_tuple(LayoutT.ShapeType)) {
        if (comptime !int_tuple.is_tuple(TilerT)) {
            return @TypeOf(logical_divide_rank1_shape(
                @as(UnwrapRank1LayoutType(CoalescedLayoutType(LayoutT)), undefined),
                @as(TilerT, undefined),
            ));
        }
        const R = comptime int_tuple.rank(LayoutT.ShapeType);
        comptime var fields: [R]type = undefined;
        inline for (0..R) |i| {
            fields[i] = @TypeOf(logical_divide_rank1_shape(
                layout_mode_type_value(LayoutT, i),
                @as(child_type(TilerT, i), undefined),
            ));
        }
        return std.meta.Tuple(&fields);
    }
    return @TypeOf(logical_divide_rank1_shape(@as(LayoutT, undefined), @as(TilerT, undefined)));
}

fn LogicalDivideStrideType(comptime LayoutT: type, comptime TilerT: type) type {
    if (comptime int_tuple.is_tuple(LayoutT.ShapeType)) {
        if (comptime !int_tuple.is_tuple(TilerT)) {
            return @TypeOf(logical_divide_rank1_stride(
                @as(UnwrapRank1LayoutType(CoalescedLayoutType(LayoutT)), undefined),
                @as(TilerT, undefined),
            ));
        }
        const R = comptime int_tuple.rank(LayoutT.ShapeType);
        comptime var fields: [R]type = undefined;
        inline for (0..R) |i| {
            fields[i] = @TypeOf(logical_divide_rank1_stride(
                layout_mode_type_value(LayoutT, i),
                @as(child_type(TilerT, i), undefined),
            ));
        }
        return std.meta.Tuple(&fields);
    }
    return @TypeOf(logical_divide_rank1_stride(@as(LayoutT, undefined), @as(TilerT, undefined)));
}

fn layout_mode_at(l: anytype, comptime idx: usize) @TypeOf(make_layout(l.shape[idx], l.stride[idx])) {
    return make_layout(l.shape[idx], l.stride[idx]);
}

fn layout_mode_type_value(comptime LayoutT: type, comptime idx: usize) @TypeOf(make_layout(
    @as(child_type(LayoutT.ShapeType, idx), undefined),
    @as(child_type(LayoutT.StrideType, idx), undefined),
)) {
    return undefined;
}

fn unwrap_rank1_layout(l: anytype) UnwrapRank1LayoutType(@TypeOf(l)) {
    if (comptime !int_tuple.is_tuple(@TypeOf(l.shape)) or int_tuple.rank(@TypeOf(l.shape)) != 1) return l;
    return make_layout(l.shape[0], l.stride[0]);
}

fn UnwrapRank1LayoutType(comptime LayoutT: type) type {
    if (comptime !int_tuple.is_tuple(LayoutT.ShapeType) or int_tuple.rank(LayoutT.ShapeType) != 1) return LayoutT;
    return @TypeOf(make_layout(
        @as(child_type(LayoutT.ShapeType, 0), undefined),
        @as(child_type(LayoutT.StrideType, 0), undefined),
    ));
}

fn tile_unzip(l: anytype, tiler: anytype) @TypeOf(make_layout(
    zip2_by(l.shape, tiler),
    zip2_by(l.stride, tiler),
)) {
    return make_layout(zip2_by(l.shape, tiler), zip2_by(l.stride, tiler));
}

fn zip2_by(t: anytype, guide: anytype) Zip2ByType(@TypeOf(t), @TypeOf(guide)) {
    if (comptime !int_tuple.is_tuple(@TypeOf(guide))) return t;
    const R = comptime int_tuple.rank(@TypeOf(guide));
    return switch (R) {
        1 => .{
            .{t[0][0]},
            .{t[0][1]},
        },
        2 => .{
            .{ t[0][0], t[1][0] },
            .{ t[0][1], t[1][1] },
        },
        3 => .{
            .{ t[0][0], t[1][0], t[2][0] },
            .{ t[0][1], t[1][1], t[2][1] },
        },
        else => @compileError("zip2_by currently supports guide rank <= 3"),
    };
}

fn Zip2ByType(comptime T: type, comptime GuideT: type) type {
    if (comptime !int_tuple.is_tuple(GuideT)) return T;
    const R = comptime int_tuple.rank(GuideT);
    comptime var first_fields: [R]type = undefined;
    comptime var second_fields: [R]type = undefined;
    inline for (0..R) |i| {
        first_fields[i] = child_type(child_type(T, i), 0);
        second_fields[i] = child_type(child_type(T, i), 1);
    }
    return @TypeOf(.{
        @as(std.meta.Tuple(&first_fields), undefined),
        @as(std.meta.Tuple(&second_fields), undefined),
    });
}

fn unpack_second_mode(l: anytype) @TypeOf(make_layout(
    unpack_second_value(l.shape),
    unpack_second_value(l.stride),
)) {
    return make_layout(unpack_second_value(l.shape), unpack_second_value(l.stride));
}

fn unpack_second_value(v: anytype) UnpackSecondType(@TypeOf(v)) {
    const SecondT = child_type(@TypeOf(v), 1);
    if (comptime !int_tuple.is_tuple(SecondT)) return v;
    const R = comptime int_tuple.rank(SecondT);
    return switch (R) {
        1 => .{ v[0], v[1][0] },
        2 => .{ v[0], v[1][0], v[1][1] },
        3 => .{ v[0], v[1][0], v[1][1], v[1][2] },
        else => @compileError("tiled_divide currently supports rest rank <= 3"),
    };
}

fn UnpackSecondType(comptime T: type) type {
    const SecondT = child_type(T, 1);
    if (comptime !int_tuple.is_tuple(SecondT)) return T;
    const R = comptime int_tuple.rank(SecondT);
    comptime var fields: [R + 1]type = undefined;
    fields[0] = child_type(T, 0);
    inline for (0..R) |i| fields[i + 1] = child_type(SecondT, i);
    return std.meta.Tuple(&fields);
}

fn unpack_both_modes(l: anytype) @TypeOf(make_layout(
    unpack_both_value(l.shape),
    unpack_both_value(l.stride),
)) {
    return make_layout(unpack_both_value(l.shape), unpack_both_value(l.stride));
}

fn unpack_both_value(v: anytype) UnpackBothType(@TypeOf(v)) {
    const FirstT = child_type(@TypeOf(v), 0);
    const SecondT = child_type(@TypeOf(v), 1);
    if (comptime !int_tuple.is_tuple(FirstT) and !int_tuple.is_tuple(SecondT)) return v;
    if (comptime !int_tuple.is_tuple(FirstT)) {
        const R1 = comptime int_tuple.rank(SecondT);
        return switch (R1) {
            1 => .{ v[0], v[1][0] },
            2 => .{ v[0], v[1][0], v[1][1] },
            3 => .{ v[0], v[1][0], v[1][1], v[1][2] },
            else => @compileError("flat_divide/product currently supports group ranks <= 3"),
        };
    }
    if (comptime !int_tuple.is_tuple(SecondT)) {
        const R0 = comptime int_tuple.rank(FirstT);
        return switch (R0) {
            1 => .{ v[0][0], v[1] },
            2 => .{ v[0][0], v[0][1], v[1] },
            3 => .{ v[0][0], v[0][1], v[0][2], v[1] },
            else => @compileError("flat_divide/product currently supports group ranks <= 3"),
        };
    }
    const R0 = comptime if (int_tuple.is_tuple(FirstT)) int_tuple.rank(FirstT) else 1;
    const R1 = comptime if (int_tuple.is_tuple(SecondT)) int_tuple.rank(SecondT) else 1;
    return switch (R0) {
        1 => switch (R1) {
            1 => .{ v[0][0], v[1][0] },
            2 => .{ v[0][0], v[1][0], v[1][1] },
            3 => .{ v[0][0], v[1][0], v[1][1], v[1][2] },
            else => @compileError("flat_divide currently supports group ranks <= 3"),
        },
        2 => switch (R1) {
            1 => .{ v[0][0], v[0][1], v[1][0] },
            2 => .{ v[0][0], v[0][1], v[1][0], v[1][1] },
            3 => .{ v[0][0], v[0][1], v[1][0], v[1][1], v[1][2] },
            else => @compileError("flat_divide currently supports group ranks <= 3"),
        },
        3 => switch (R1) {
            1 => .{ v[0][0], v[0][1], v[0][2], v[1][0] },
            2 => .{ v[0][0], v[0][1], v[0][2], v[1][0], v[1][1] },
            3 => .{ v[0][0], v[0][1], v[0][2], v[1][0], v[1][1], v[1][2] },
            else => @compileError("flat_divide currently supports group ranks <= 3"),
        },
        else => @compileError("flat_divide currently supports group ranks <= 3"),
    };
}

fn UnpackBothType(comptime T: type) type {
    const FirstT = child_type(T, 0);
    const SecondT = child_type(T, 1);
    const R0 = comptime if (int_tuple.is_tuple(FirstT)) int_tuple.rank(FirstT) else 1;
    const R1 = comptime if (int_tuple.is_tuple(SecondT)) int_tuple.rank(SecondT) else 1;
    comptime var fields: [R0 + R1]type = undefined;
    inline for (0..R0) |i| fields[i] = if (comptime int_tuple.is_tuple(FirstT)) child_type(FirstT, i) else FirstT;
    inline for (0..R1) |i| fields[R0 + i] = if (comptime int_tuple.is_tuple(SecondT)) child_type(SecondT, i) else SecondT;
    return std.meta.Tuple(&fields);
}

fn logical_product_shape(block: anytype, tiler: anytype) @TypeOf(.{
    block.shape,
    complement_shape_for_product(block, tiler),
}) {
    comptime if (int_tuple.is_tuple(@TypeOf(tiler.shape))) {
        @compileError("logical_product currently supports scalar tilers");
    };
    return .{
        block.shape,
        complement_shape_for_product(block, tiler),
    };
}

fn logical_product_stride(block: anytype, tiler: anytype) @TypeOf(.{
    block.stride,
    complement_stride_for_product(block, tiler),
}) {
    comptime if (int_tuple.is_tuple(@TypeOf(tiler.shape))) {
        @compileError("logical_product currently supports scalar tilers");
    };
    return .{
        block.stride,
        complement_stride_for_product(block, tiler),
    };
}

fn complement_shape_for_product(block: anytype, tiler: anytype) @TypeOf(product_complement_layout(block, tiler).shape) {
    return product_complement_layout(block, tiler).shape;
}

fn complement_stride_for_product(block: anytype, tiler: anytype) @TypeOf(product_complement_layout(block, tiler).stride) {
    return product_complement_layout(block, tiler).stride;
}

fn product_complement_layout(block: anytype, tiler: anytype) @TypeOf(unwrap_rank1_layout(complement(
    block,
    product_cotarget(block, tiler),
))) {
    return unwrap_rank1_layout(complement(block, product_cotarget(block, tiler)));
}

fn product_cotarget(block: anytype, tiler: anytype) numeric.C(@as(comptime_int, int_tuple.size(block.shape)) * @as(comptime_int, cosize(tiler))) {
    return .{};
}

fn blocked_product_shape(block: anytype, tiler: anytype) @TypeOf(.{
    .{ block.shape[0], tiler.shape },
    .{ block.shape[1], numeric._1 },
}) {
    comptime if (!int_tuple.is_tuple(@TypeOf(block.shape)) or int_tuple.rank(@TypeOf(block.shape)) != 2 or int_tuple.is_tuple(@TypeOf(tiler.shape))) {
        @compileError("blocked_product currently supports rank-2 block and scalar tiler");
    };
    return .{
        .{ block.shape[0], tiler.shape },
        .{ block.shape[1], numeric._1 },
    };
}

fn blocked_product_stride(block: anytype, tiler: anytype) @TypeOf(.{
    .{ block.stride[0], product_outer_stride(block, tiler) },
    .{ block.stride[1], numeric._0 },
}) {
    comptime if (!int_tuple.is_tuple(@TypeOf(block.shape)) or int_tuple.rank(@TypeOf(block.shape)) != 2 or int_tuple.is_tuple(@TypeOf(tiler.shape))) {
        @compileError("blocked_product currently supports rank-2 block and scalar tiler");
    };
    return .{
        .{ block.stride[0], product_outer_stride(block, tiler) },
        .{ block.stride[1], numeric._0 },
    };
}

fn raked_product_shape(block: anytype, tiler: anytype) @TypeOf(.{
    .{ tiler.shape, block.shape[0] },
    .{ numeric._1, block.shape[1] },
}) {
    comptime if (!int_tuple.is_tuple(@TypeOf(block.shape)) or int_tuple.rank(@TypeOf(block.shape)) != 2 or int_tuple.is_tuple(@TypeOf(tiler.shape))) {
        @compileError("raked_product currently supports rank-2 block and scalar tiler");
    };
    return .{
        .{ tiler.shape, block.shape[0] },
        .{ numeric._1, block.shape[1] },
    };
}

fn raked_product_stride(block: anytype, tiler: anytype) @TypeOf(.{
    .{ product_outer_stride(block, tiler), block.stride[0] },
    .{ numeric._0, block.stride[1] },
}) {
    comptime if (!int_tuple.is_tuple(@TypeOf(block.shape)) or int_tuple.rank(@TypeOf(block.shape)) != 2 or int_tuple.is_tuple(@TypeOf(tiler.shape))) {
        @compileError("raked_product currently supports rank-2 block and scalar tiler");
    };
    return .{
        .{ product_outer_stride(block, tiler), block.stride[0] },
        .{ numeric._0, block.stride[1] },
    };
}

fn product_outer_stride(block: anytype, tiler: anytype) numeric.C(@as(comptime_int, int_tuple.size(block.shape)) * numeric.value(tiler.stride)) {
    return .{};
}

fn logical_divide_rank1_shape(l: anytype, tiler: anytype) @TypeOf(.{
    tiler.shape,
    static_ceil_div(l.shape, tiler.shape),
}) {
    return .{
        tiler.shape,
        static_ceil_div(l.shape, tiler.shape),
    };
}

fn logical_divide_rank1_stride(l: anytype, tiler: anytype) @TypeOf(.{
    numeric.mul(l.stride, tiler.stride),
    logical_divide_rest_stride(l, tiler),
}) {
    return .{
        numeric.mul(l.stride, tiler.stride),
        logical_divide_rest_stride(l, tiler),
    };
}

fn logical_divide_rest_stride(l: anytype, tiler: anytype) LogicalDivideRestStrideType(@TypeOf(l), @TypeOf(tiler)) {
    const RestShapeT = @TypeOf(static_ceil_div(l.shape, tiler.shape));
    if (comptime is_static_one(RestShapeT)) return numeric._0;
    return numeric.mul(l.stride, tiler.shape);
}

fn LogicalDivideRestStrideType(comptime LayoutT: type, comptime TilerT: type) type {
    const rest_shape_type = @TypeOf(static_ceil_div(@as(LayoutT.ShapeType, undefined), @as(TilerT.ShapeType, undefined)));
    if (comptime is_static_one(rest_shape_type)) return @TypeOf(numeric._0);
    return @TypeOf(numeric.mul(@as(LayoutT.StrideType, undefined), @as(TilerT.ShapeType, undefined)));
}

fn static_div(a: anytype, b: anytype) if (numeric.is_static_int(@TypeOf(a)) and numeric.is_static_int(@TypeOf(b))) numeric.C(@divTrunc(numeric.value(a), numeric.value(b))) else @TypeOf(@divTrunc(numeric.value(a), numeric.value(b))) {
    if (comptime numeric.is_static_int(@TypeOf(a)) and numeric.is_static_int(@TypeOf(b))) return .{};
    return @divTrunc(numeric.value(a), numeric.value(b));
}

fn static_ceil_div(a: anytype, b: anytype) if (numeric.is_static_int(@TypeOf(a)) and numeric.is_static_int(@TypeOf(b))) numeric.C(@divTrunc(numeric.value(a) + numeric.value(b) - 1, numeric.value(b))) else @TypeOf(@divTrunc(numeric.value(a) + numeric.value(b) - 1, numeric.value(b))) {
    if (comptime numeric.is_static_int(@TypeOf(a)) and numeric.is_static_int(@TypeOf(b))) return .{};
    return @divTrunc(numeric.value(a) + numeric.value(b) - 1, numeric.value(b));
}

fn make_compact_col_major_stride(shp: anytype) CompactStrideType(@TypeOf(shp)) {
    if (comptime int_tuple.is_tuple(@TypeOf(shp))) {
        var result: CompactStrideType(@TypeOf(shp)) = undefined;
        var running: usize = 1;
        inline for (0..comptime int_tuple.rank(@TypeOf(shp))) |i| {
            result[i] = make_stride_scaled_like(shp[i], running);
            running *= int_tuple.product(shp[i]);
        }
        return result;
    }
    return @as(usize, 1);
}

fn make_stride_scaled_like(shp: anytype, scale: usize) CompactStrideType(@TypeOf(shp)) {
    if (comptime int_tuple.is_tuple(@TypeOf(shp))) {
        var result: CompactStrideType(@TypeOf(shp)) = undefined;
        var running = scale;
        inline for (0..comptime int_tuple.rank(@TypeOf(shp))) |i| {
            result[i] = make_stride_scaled_like(shp[i], running);
            running *= int_tuple.product(shp[i]);
        }
        return result;
    }
    return scale;
}

fn make_compact_row_major_stride(shp: anytype) CompactStrideType(@TypeOf(shp)) {
    if (comptime int_tuple.is_tuple(@TypeOf(shp))) {
        var result: CompactStrideType(@TypeOf(shp)) = undefined;
        var running: usize = 1;
        comptime var idx = int_tuple.rank(@TypeOf(shp));
        inline while (idx > 0) {
            idx -= 1;
            result[idx] = make_stride_scaled_like(shp[idx], running);
            running *= int_tuple.product(shp[idx]);
        }
        return result;
    }
    return @as(usize, 1);
}

fn CompactStrideType(comptime ShapeT: type) type {
    if (comptime int_tuple.is_tuple(ShapeT)) {
        const R = comptime int_tuple.rank(ShapeT);
        comptime var fields: [R]type = undefined;
        inline for (0..R) |i| fields[i] = CompactStrideType(child_type(ShapeT, i));
        return std.meta.Tuple(&fields);
    }
    return usize;
}

fn compact_order(shp: anytype, order: anytype) CompactOrderType(@TypeOf(shp), @TypeOf(order)) {
    comptime if (!int_tuple.is_tuple(@TypeOf(shp))) return @as(CompactOrderType(@TypeOf(shp), @TypeOf(order)), 1);
    const R = comptime int_tuple.rank(@TypeOf(shp));
    return switch (R) {
        1 => .{compact_order_stride_at(0, shp, order)},
        2 => .{
            compact_order_stride_at(0, shp, order),
            compact_order_stride_at(1, shp, order),
        },
        3 => .{
            compact_order_stride_at(0, shp, order),
            compact_order_stride_at(1, shp, order),
            compact_order_stride_at(2, shp, order),
        },
        4 => .{
            compact_order_stride_at(0, shp, order),
            compact_order_stride_at(1, shp, order),
            compact_order_stride_at(2, shp, order),
            compact_order_stride_at(3, shp, order),
        },
        else => @compileError("compact_order currently supports rank <= 4"),
    };
}

fn CompactOrderType(comptime ShapeT: type, comptime OrderT: type) type {
    @setEvalBranchQuota(10_000);
    if (comptime int_tuple.is_tuple(ShapeT)) {
        const R = comptime int_tuple.rank(ShapeT);
        comptime var fields: [R]type = undefined;
        inline for (0..R) |i| {
            fields[i] = if (can_static_order_stride(i, ShapeT, OrderT)) numeric.C(compact_order_stride_value(i, ShapeT, OrderT)) else usize;
        }
        return std.meta.Tuple(&fields);
    }
    return usize;
}

fn compact_order_stride_at(comptime idx: usize, shp: anytype, order: anytype) child_type(CompactOrderType(@TypeOf(shp), @TypeOf(order)), idx) {
    const T = child_type(CompactOrderType(@TypeOf(shp), @TypeOf(order)), idx);
    if (comptime numeric.is_static_int(T)) return .{};
    return @as(T, @intCast(compact_order_stride_runtime(idx, shp, order)));
}

fn compact_order_stride_value(comptime idx: usize, comptime ShapeT: type, comptime OrderT: type) usize {
    comptime var value: usize = 1;
    inline for (0..comptime int_tuple.rank(ShapeT)) |j| {
        if (comptime order_rank_value(child_type(OrderT, j), j, OrderT) < order_rank_value(child_type(OrderT, idx), idx, OrderT)) {
            value *= static_product_type(child_type(ShapeT, j));
        }
    }
    return value;
}

fn can_static_order_stride(comptime idx: usize, comptime ShapeT: type, comptime OrderT: type) bool {
    if (!numeric.is_static_int(child_type(OrderT, idx))) return false;
    inline for (0..comptime int_tuple.rank(ShapeT)) |j| {
        if (comptime order_rank_value(child_type(OrderT, j), j, OrderT) < order_rank_value(child_type(OrderT, idx), idx, OrderT)) {
            if (!all_static_ints(child_type(ShapeT, j))) return false;
        }
    }
    return true;
}

fn all_static_ints(comptime T: type) bool {
    if (comptime int_tuple.is_tuple(T)) {
        inline for (0..comptime int_tuple.rank(T)) |i| {
            if (!all_static_ints(child_type(T, i))) return false;
        }
        return true;
    }
    return numeric.is_static_int(T);
}

fn compact_order_stride_runtime(comptime idx: usize, shp: anytype, order: anytype) usize {
    var value: usize = 1;
    inline for (0..comptime int_tuple.rank(@TypeOf(shp))) |j| {
        if (comptime order_rank_value(child_type(@TypeOf(order), j), j, @TypeOf(order)) < order_rank_value(child_type(@TypeOf(order), idx), idx, @TypeOf(order))) {
            value *= int_tuple.product(shp[j]);
        }
    }
    return value;
}

fn order_rank_value(comptime T: type, comptime idx: usize, comptime OrderT: type) comptime_int {
    if (comptime numeric.is_static_int(T)) return T.static_value;
    return max_static_order(OrderT) + 1 + dynamic_order_index(idx, OrderT);
}

fn max_static_order(comptime OrderT: type) comptime_int {
    if (comptime int_tuple.is_tuple(OrderT)) {
        comptime var result: comptime_int = 0;
        inline for (0..comptime int_tuple.rank(OrderT)) |i| {
            const v = max_static_order(child_type(OrderT, i));
            if (v > result) result = v;
        }
        return result;
    }
    if (comptime numeric.is_static_int(OrderT)) return OrderT.static_value;
    return 0;
}

fn dynamic_order_index(comptime idx: usize, comptime OrderT: type) comptime_int {
    comptime var result: comptime_int = 0;
    inline for (0..idx) |i| {
        if (!numeric.is_static_int(child_type(OrderT, i))) result += 1;
    }
    return result;
}

fn compact_order_like(shp: anytype, strd: anytype) LayoutLikeStrideType(@TypeOf(shp), @TypeOf(strd)) {
    comptime if (!int_tuple.is_tuple(@TypeOf(shp))) return @as(LayoutLikeStrideType(@TypeOf(shp), @TypeOf(strd)), 1);
    const R = comptime int_tuple.rank(@TypeOf(shp));
    return switch (R) {
        1 => .{layout_like_stride_at(0, shp, strd)},
        2 => .{
            layout_like_stride_at(0, shp, strd),
            layout_like_stride_at(1, shp, strd),
        },
        3 => .{
            layout_like_stride_at(0, shp, strd),
            layout_like_stride_at(1, shp, strd),
            layout_like_stride_at(2, shp, strd),
        },
        4 => .{
            layout_like_stride_at(0, shp, strd),
            layout_like_stride_at(1, shp, strd),
            layout_like_stride_at(2, shp, strd),
            layout_like_stride_at(3, shp, strd),
        },
        else => @compileError("compact_order_like currently supports rank <= 4"),
    };
}

fn LayoutLikeStrideType(comptime ShapeT: type, comptime StrideT: type) type {
    @setEvalBranchQuota(10_000);
    if (comptime int_tuple.is_tuple(ShapeT)) {
        const R = comptime int_tuple.rank(ShapeT);
        const FilteredShapeT = FilterZeroShapeType(StrideT, ShapeT);
        const CompactT = CompactOrderType(FilteredShapeT, StrideT);
        comptime var fields: [R]type = undefined;
        inline for (0..R) |i| {
            fields[i] = if (is_static_zero(child_type(StrideT, i))) numeric.C(0) else child_type(CompactT, i);
        }
        return std.meta.Tuple(&fields);
    }
    return usize;
}

fn layout_like_stride_at(comptime idx: usize, shp: anytype, strd: anytype) child_type(LayoutLikeStrideType(@TypeOf(shp), @TypeOf(strd)), idx) {
    const T = child_type(LayoutLikeStrideType(@TypeOf(shp), @TypeOf(strd)), idx);
    if (comptime numeric.is_static_int(T)) return .{};
    const filtered_shape = filter_zero_shape(strd, shp);
    const compact = compact_order(filtered_shape, strd);
    return @as(T, @intCast(compact[idx]));
}

fn filter_zero_shape(strd: anytype, shp: anytype) FilterZeroShapeType(@TypeOf(strd), @TypeOf(shp)) {
    if (comptime int_tuple.is_tuple(@TypeOf(shp))) {
        var result: FilterZeroShapeType(@TypeOf(strd), @TypeOf(shp)) = undefined;
        inline for (0..comptime int_tuple.rank(@TypeOf(shp))) |i| {
            result[i] = filter_zero_shape(strd[i], shp[i]);
        }
        return result;
    }
    if (comptime is_static_zero(@TypeOf(strd))) return .{};
    return shp;
}

fn FilterZeroShapeType(comptime StrideT: type, comptime ShapeT: type) type {
    if (comptime int_tuple.is_tuple(ShapeT)) {
        const R = comptime int_tuple.rank(ShapeT);
        comptime var fields: [R]type = undefined;
        inline for (0..R) |i| {
            fields[i] = FilterZeroShapeType(child_type(StrideT, i), child_type(ShapeT, i));
        }
        return std.meta.Tuple(&fields);
    }
    return if (comptime is_static_zero(StrideT)) numeric.C(1) else ShapeT;
}

fn stride_order_value(comptime T: type, comptime index: usize) comptime_int {
    if (comptime numeric.is_static_int(T)) return T.static_value;
    return 1_000_000 + index;
}

fn is_static_zero(comptime T: type) bool {
    return numeric.is_static_int(T) and T.static_value == 0;
}

fn static_or_runtime_stride(comptime T: type, value: usize) T {
    if (comptime numeric.is_static_int(T)) return .{};
    return @as(T, @intCast(value));
}

fn static_product_type(comptime T: type) usize {
    if (comptime int_tuple.is_tuple(T)) {
        comptime var result: usize = 1;
        inline for (0..comptime int_tuple.rank(T)) |i| {
            result *= static_product_type(child_type(T, i));
        }
        return result;
    }
    if (comptime numeric.is_static_int(T)) return @as(usize, @intCast(T.static_value));
    @compileError("static_product_type requires static integer leaves");
}

fn child_type(comptime T: type, comptime i: usize) type {
    return switch (@typeInfo(T)) {
        .@"struct" => |s| s.fields[i].type,
        .array => |a| a.child,
        else => T,
    };
}

inline fn slice_value(coord: anytype, value: anytype) SliceValueType(@TypeOf(coord), @TypeOf(value)) {
    @setEvalBranchQuota(100_000);
    const CoordT = @TypeOf(coord);
    if (comptime int_tuple.is_tuple(CoordT)) {
        var result: SliceValueType(CoordT, @TypeOf(value)) = undefined;
        comptime var out_i = 0;
        inline for (0..comptime int_tuple.rank(CoordT)) |i| {
            if (comptime slice_rank(child_type(CoordT, i)) > 0) {
                result[out_i] = slice_value(coord[i], value[i]);
                out_i += 1;
            }
        }
        return result;
    } else if (comptime underscore.is_underscore(CoordT)) {
        return value;
    } else {
        return .{};
    }
}

fn SliceValueType(comptime CoordT: type, comptime ValueT: type) type {
    @setEvalBranchQuota(100_000);
    if (comptime int_tuple.is_tuple(CoordT)) {
        const R = slice_rank(CoordT);
        comptime var fields: [R]type = undefined;
        comptime var out_i = 0;
        inline for (0..comptime int_tuple.rank(CoordT)) |i| {
            if (comptime slice_rank(child_type(CoordT, i)) > 0) {
                fields[out_i] = SliceValueType(child_type(CoordT, i), child_type(ValueT, i));
                out_i += 1;
            }
        }
        return std.meta.Tuple(&fields);
    } else if (comptime underscore.is_underscore(CoordT)) {
        return ValueT;
    } else {
        return std.meta.Tuple(&.{});
    }
}

fn slice_rank(comptime CoordT: type) usize {
    @setEvalBranchQuota(10_000);
    if (comptime int_tuple.is_tuple(CoordT)) {
        comptime var total = 0;
        inline for (0..comptime int_tuple.rank(CoordT)) |i| {
            total += @min(slice_rank(child_type(CoordT, i)), 1);
        }
        return total;
    }
    return if (comptime underscore.is_underscore(CoordT)) 1 else 0;
}

inline fn dice_value(coord: anytype, value: anytype) DiceValueType(@TypeOf(coord), @TypeOf(value)) {
    @setEvalBranchQuota(100_000);
    const CoordT = @TypeOf(coord);
    if (comptime int_tuple.is_tuple(CoordT)) {
        var result: DiceValueType(CoordT, @TypeOf(value)) = undefined;
        comptime var out_i = 0;
        inline for (0..comptime int_tuple.rank(CoordT)) |i| {
            if (comptime dice_rank(child_type(CoordT, i)) > 0) {
                result[out_i] = dice_value(coord[i], value[i]);
                out_i += 1;
            }
        }
        return result;
    } else if (comptime underscore.is_underscore(CoordT)) {
        return .{};
    } else {
        return value;
    }
}

fn DiceValueType(comptime CoordT: type, comptime ValueT: type) type {
    @setEvalBranchQuota(100_000);
    if (comptime int_tuple.is_tuple(CoordT)) {
        const R = dice_rank(CoordT);
        comptime var fields: [R]type = undefined;
        comptime var out_i = 0;
        inline for (0..comptime int_tuple.rank(CoordT)) |i| {
            if (comptime dice_rank(child_type(CoordT, i)) > 0) {
                fields[out_i] = DiceValueType(child_type(CoordT, i), child_type(ValueT, i));
                out_i += 1;
            }
        }
        return std.meta.Tuple(&fields);
    } else if (comptime underscore.is_underscore(CoordT)) {
        return std.meta.Tuple(&.{});
    } else {
        return ValueT;
    }
}

fn dice_rank(comptime CoordT: type) usize {
    @setEvalBranchQuota(10_000);
    if (comptime int_tuple.is_tuple(CoordT)) {
        comptime var total = 0;
        inline for (0..comptime int_tuple.rank(CoordT)) |i| {
            total += @min(dice_rank(child_type(CoordT, i)), 1);
        }
        return total;
    }
    return if (comptime underscore.is_underscore(CoordT)) 0 else 1;
}

fn slice_offset(coord: anytype, shp: anytype, strd: anytype) usize {
    const CoordT = @TypeOf(coord);
    const StrideT = @TypeOf(strd);
    
    if (comptime int_tuple.is_tuple(CoordT)) {
        var result: usize = 0;
        inline for (0..comptime int_tuple.rank(CoordT)) |i| {
            result += slice_offset(coord[i], int_tuple.get(shp, i), int_tuple.get(strd, i));
        }
        return result;
    } else if (comptime underscore.is_underscore(CoordT)) {
        return 0;
    } else {
        // Coordinate is a scalar. 
        if (comptime int_tuple.is_tuple(StrideT)) {
            // Linear index into a nested shape. 
            // We use a temporary layout to perform the mapping.
            const L = Layout(@TypeOf(shp), @TypeOf(strd));
            const temp_l = L{ .shape = shp, .stride = strd };
            return temp_l.map_1d(@as(usize, @intCast(numeric.value(coord))));
        } else {
            return @as(usize, @intCast(numeric.value(coord))) * @as(usize, @intCast(numeric.value(strd)));
        }
    }
}

fn slice_value_type(comptime CoordT: type, comptime LeafT: type) SliceValueType(CoordT, coord_value_type(CoordT, LeafT)) {
    return undefined;
}

fn coord_value_type(comptime CoordT: type, comptime LeafT: type) type {
    if (comptime int_tuple.is_tuple(CoordT)) {
        const R = int_tuple.rank(CoordT);
        comptime var fields: [R]type = undefined;
        inline for (0..R) |i| fields[i] = coord_value_type(child_type(CoordT, i), LeafT);
        return std.meta.Tuple(&fields);
    }
    return LeafT;
}

/// Create a 1D layout (N) -> (1)
pub fn make_layout_1d(n: anytype) @TypeOf(make_layout(n, @as(isize, 1))) {
    return make_layout(n, @as(isize, 1));
}

/// Create a Column-Major layout (M, N) -> (1, M)
pub fn make_layout_col_major(m: anytype, n: anytype) @TypeOf(make_layout(.{ m, n }, .{ numeric._1, m })) {
    return make_layout(.{ m, n }, .{ numeric._1, m });
}

pub fn ComposedLayout(comptime LhsT: type, comptime RhsT: type) type {
    return struct {
        const Self = @This();
        lhs: LhsT,
        rhs: RhsT,
        shape: ShapeType,
        stride: StrideType,

        pub const ShapeType = RhsT.ShapeType;
        pub const StrideType = RhsT.StrideType;

        pub fn init(l: LhsT, r: RhsT) Self {
            return .{ 
                .lhs = l, 
                .rhs = r,
                .shape = r.shape,
                .stride = r.stride,
            };
        }
        pub fn size(self: Self) usize { return self.rhs.size(); }
        pub fn cosize(self: Self) usize {
            if (self.rhs.size() == 0) return 0;
            return self.lhs.map_1d(self.rhs.cosize() - 1) + 1;
        }
        pub fn map(self: Self, coord: anytype) usize {
            return self.lhs.map(self.rhs.map(coord));
        }
        pub fn map_1d(self: Self, idx: usize) usize {
            return self.lhs.map(self.rhs.map_1d(idx));
        }
    };
}

/// Composition of two layouts: (logical_index) -> physical_offset
/// result(i) = lhs.map(rhs.map(i))
pub fn composition(lhs: anytype, rhs: anytype) ComposedLayout(@TypeOf(lhs), @TypeOf(rhs)) {
    return ComposedLayout(@TypeOf(lhs), @TypeOf(rhs)).init(lhs, rhs);
}

/// Print a layout's shape and stride to stderr for debugging.
pub fn print_layout(l: anytype) void {
    std.debug.print("Layout:\n", .{});
    std.debug.print("  Shape:  ", .{});
    print_hierarchical(l.shape);
    std.debug.print("\n", .{});
    std.debug.print("  Stride: ", .{});
    print_hierarchical(l.stride);
    std.debug.print("\n", .{});
}

fn print_hierarchical(val: anytype) void {
    const T = @TypeOf(val);
    if (comptime int_tuple.is_tuple(T)) {
        std.debug.print("(", .{});
        const len = comptime int_tuple.rank(T);
        inline for (0..len) |i| {
            print_hierarchical(int_tuple.get(val, i));
            if (i < len - 1) std.debug.print(",", .{});
        }
        std.debug.print(")", .{});
    } else {
        std.debug.print("{}", .{val});
    }
}

test "row major map_1d inverts compact layout" {
    const l = make_layout(
        .{ @as(usize, 4), @as(usize, 4) },
        .{ @as(isize, 4), @as(isize, 1) },
    );

    try std.testing.expectEqual(@as(usize, 0), l.map_1d(0));
    try std.testing.expectEqual(@as(usize, 1), l.map_1d(1));
    try std.testing.expectEqual(@as(usize, 4), l.map_1d(4)); // (1,0) in logical col-major -> physical 4 in row-major
}

test "logical_divide supports runtime shapes" {
    const n: usize = 13;
    const tile_n: usize = 4;

    const layout = make_layout(n, @as(usize, 1));
    const tile = make_layout(tile_n, @as(usize, 1));
    const divided = logical_divide(layout, tile);

    try std.testing.expectEqual(@as(usize, 4), divided.shape[1]);
}

test "identity layout supports map_1d and get_hier_coord" {
    const n = numeric;

    const id = make_identity_layout(.{ n._2, n._4 });

    try std.testing.expectEqual(@as(usize, 3), id.map(.{ n._0, n._3 }));
    try std.testing.expectEqual(@as(usize, 3), id.map_1d(3));

    const c = id.get_hier_coord(3);
    try std.testing.expectEqual(@as(usize, 0), c[0]);
    try std.testing.expectEqual(@as(usize, 3), c[1]);
}

test "composed layout cosize reflects composed footprint" {
    const lhs = make_layout(@as(usize, 100), @as(usize, 1));
    const rhs = make_layout(@as(usize, 2), @as(usize, 10));
    const c = composition(lhs, rhs);

    try std.testing.expectEqual(@as(usize, 0), c.map(0));
    try std.testing.expectEqual(@as(usize, 10), c.map(1));
    try std.testing.expectEqual(@as(usize, 11), c.cosize());
}

test "make_layout_col_major handles runtime and static values safely" {
    const n = numeric;
    const m: usize = 128;
    const k: usize = 64;

    const l1 = make_layout_col_major(m, k);
    try std.testing.expectEqual(m, l1.shape[0]);
    try std.testing.expectEqual(@as(usize, 1), @as(usize, @intCast(numeric.value(l1.stride[0]))));
    try std.testing.expectEqual(m, @as(usize, @intCast(numeric.value(l1.stride[1]))));

    const l2 = make_layout_col_major(n._32, n._64);
    try std.testing.expectEqual(@as(usize, 32), n.value(l2.shape[0]));
    try std.testing.expectEqual(@as(usize, 32), @as(usize, @intCast(n.value(l2.stride[1]))));
}
