const std = @import("std");
const layout_mod = @import("../layout.zig");
const tensor_mod = @import("../tensor.zig");
const underscore = @import("../underscore.zig");

/// Core partitioning logic for Atoms.
/// Applies a TV-Layout (tid, vid) -> (coord) to a global Tensor.
pub inline fn partition(tensor: anytype, tv_layout: anytype, thread_id: usize) tensor_mod.Tensor(@TypeOf(tensor.ptr), @TypeOf(layout_mod.composition(tensor.layout, tv_layout.slice_and_offset(.{ thread_id, underscore._ }).layout))) {
    // 1. Slice the TV-layout for the specific thread_id
    const u = underscore._;
    const sliced = tv_layout.slice_and_offset(.{ thread_id, u });

    // 2. Compose the tensor's layout with the thread's value layout
    const local_layout = layout_mod.composition(tensor.layout, sliced.layout);
    const base_offset = tensor.layout.map_1d(sliced.offset);

    return tensor_mod.make_tensor(tensor.ptr + base_offset, local_layout);
}
