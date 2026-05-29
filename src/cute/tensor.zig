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

        /// Reshape the tensor to a new shape.
        pub fn reshape(self: Self, new_shape: anytype) @TypeOf(make_tensor(self.ptr, layout_mod.make_layout(new_shape, self.layout.stride))) {
            return make_tensor(self.ptr, layout_mod.make_layout(new_shape, self.layout.stride));
        }

        /// Flatten the tensor's layout into 1D.
        pub fn flatten(self: Self) @TypeOf(make_tensor(self.ptr, layout_mod.flatten_layout(self.layout))) {
            return make_tensor(self.ptr, layout_mod.flatten_layout(self.layout));
        }
    };
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
