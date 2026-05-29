const std = @import("std");
const layout_mod = @import("../layout.zig");
const tensor_mod = @import("../tensor.zig");
const underscore = @import("../underscore.zig");

/// Core partitioning logic for Atoms.
/// Applies a TV-Layout (tid, vid) -> (coord) to a global Tensor.

pub inline fn partition(tensor: anytype, tv_layout: anytype, thread_id: usize) tensor_mod.Tensor(@TypeOf(tensor.ptr), @TypeOf(layout_mod.composition(tensor.layout, tv_layout.slice(.{ thread_id, underscore._ })))) {
    // 1. Slice the TV-layout for the specific thread_id
    // This gives a layout: (vid) -> (coord)
    const u = underscore._;
    const v_layout = tv_layout.slice(.{ thread_id, u });
    
    // 2. Compose the tensor's layout with the thread's value layout
    // This is the core 'partition' transformation in CuTe.
    // logical_index -> thread_local_index
    const local_layout = layout_mod.composition(tensor.layout, v_layout);
    
    return tensor_mod.make_tensor(tensor.ptr, local_layout);
}
