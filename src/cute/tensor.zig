const std = @import("std");
const layout_mod = @import("layout.zig");
const int_tuple = @import("int_tuple.zig");
const underscore = @import("underscore.zig");

/// A Tensor is fundamentally a multidimensional array, defined by a 1D pointer and a Layout.
pub fn Tensor(comptime PtrType: type, comptime LayoutType: type) type {
    const ptr_info = @typeInfo(PtrType);
    const T = ptr_info.pointer.child;

    return struct {
        ptr: PtrType,
        layout: LayoutType,

        const Self = @This();

        pub fn init(ptr: PtrType, l: LayoutType) Self {
            return .{ .ptr = ptr, .layout = l };
        }

        /// Map a coordinate to a linear index using the underlying layout.
        pub fn map(self: Self, coord: anytype) usize {
            return self.layout.map(coord);
        }

        /// Get a pointer to the element at the given coordinate.
        pub fn ptr_at(self: Self, coord: anytype) PtrType {
            return self.ptr + self.map(coord);
        }

        /// Read the value at the given coordinate.
        pub fn get(self: Self, coord: anytype) T {
            return self.ptr[self.map(coord)];
        }

        pub fn get_1d(self: Self, logical_idx: usize) T {
            return self.ptr[self.layout.map_1d(logical_idx)];
        }

        /// Write a value to the given coordinate.
        pub fn set(self: Self, coord: anytype, val: T) void {
            self.ptr[self.map(coord)] = val;
        }

        pub fn set_1d(self: Self, logical_idx: usize, val: T) void {
            self.ptr[self.layout.map_1d(logical_idx)] = val;
        }

        /// Return the size of the tensor (number of logical elements).
        pub fn size(self: Self) usize {
            return self.layout.size();
        }

        // Slicing and viewing will be built on top of layout slicing,
        // which processes `underscore._` placeholders.
        pub fn slice(self: Self, coord: anytype) @TypeOf(blk: {
            const result = self.layout.slice_and_offset(coord);
            break :blk make_tensor(self.ptr + result.offset, result.layout);
        }) {
            const result = self.layout.slice_and_offset(coord);
            return make_tensor(self.ptr + result.offset, result.layout);
        }

        /// Reshape the tensor by composing its current layout with a new domain layout.
        /// This preserves the logical element order.
        pub fn reshape(self: Self, new_shape: anytype) @TypeOf(
            make_tensor(
                self.ptr,
                layout_mod.composition(self.layout, layout_mod.make_layout_left(new_shape)),
            ),
        ) {
            const new_domain = layout_mod.make_layout_left(new_shape);
            if (self.size() != new_domain.size()) @panic("tensor reshape changes logical element count");
            return make_tensor(self.ptr, layout_mod.composition(self.layout, new_domain));
        }

        /// Flatten the tensor's layout into 1D.
        pub fn flatten(self: Self) @TypeOf(make_tensor(self.ptr, layout_mod.flatten_layout(self.layout))) {
            return make_tensor(self.ptr, layout_mod.flatten_layout(self.layout));
        }
    };
}

test "tensor reshape basics" {
    const layout = @import("layout.zig");
    var data = [_]i32{ 1, 2, 3, 4, 5, 6 };
    const l = layout.make_layout(.{ @as(usize, 2), @as(usize, 3) }, .{ @as(usize, 1), @as(usize, 2) });
    const t = make_tensor(@as([*]i32, &data), l);

    const reshaped = t.reshape(@as(usize, 6));
    try std.testing.expectEqual(@as(usize, 6), reshaped.size());
    try std.testing.expectEqual(@as(i32, 2), reshaped.get_1d(1));

    // Verify logical order preservation for row-major input
    var data2 = [_]i32{ 10, 20, 30, 40 };
    const row = layout.make_layout_right(.{ @as(usize, 2), @as(usize, 2) });
    const t2 = make_tensor(@as([*]i32, &data2), row);

    try std.testing.expectEqual(@as(i32, 10), t2.get_1d(0));
    try std.testing.expectEqual(@as(i32, 30), t2.get_1d(1));
    try std.testing.expectEqual(@as(i32, 20), t2.get_1d(2));
    try std.testing.expectEqual(@as(i32, 40), t2.get_1d(3));

    const reshaped2 = t2.reshape(@as(usize, 4));

    try std.testing.expectEqual(t2.get_1d(0), reshaped2.get_1d(0));
    try std.testing.expectEqual(t2.get_1d(1), reshaped2.get_1d(1));
    try std.testing.expectEqual(t2.get_1d(2), reshaped2.get_1d(2));
    try std.testing.expectEqual(t2.get_1d(3), reshaped2.get_1d(3));
}

/// Helper to create a Tensor from a pointer and a layout.
pub fn make_tensor(ptr: anytype, l: anytype) Tensor(@TypeOf(ptr), @TypeOf(l)) {
    return Tensor(@TypeOf(ptr), @TypeOf(l)).init(ptr, l);
}

/// Print a tensor's logical data to stderr.
pub fn print_tensor(tensor: anytype) void {
    const sz = tensor.size();
    std.debug.print("Tensor[{}]:\n  ", .{sz});
    for (0..sz) |i| {
        std.debug.print("{} ", .{tensor.get_1d(i)});
        if ((i + 1) % 8 == 0 and i + 1 < sz) std.debug.print("\n  ", .{});
    }
    std.debug.print("\n", .{});
}
