const std = @import("std");

/// Fill a tensor with a specific value using layout-aware logical 1D iteration.
pub fn fill(tensor: anytype, value: anytype) void {
    const sz = tensor.size();
    for (0..sz) |i| {
        tensor.set_1d(i, value);
    }
}

/// Copy elements from a source tensor to a destination tensor.
/// Both tensors must have the same logical size.
pub fn copy(src: anytype, dst: anytype) void {
    if (src.size() != dst.size()) {
        @panic("Tensor size mismatch in copy algorithm.");
    }
    const sz = src.size();
    for (0..sz) |i| {
        dst.set_1d(i, src.get_1d(i));
    }
}

/// Apply a function to each logical element of a tensor.
/// The function `func` is called as `func(element)`.
pub fn for_each(tensor: anytype, func: anytype) void {
    const sz = tensor.size();
    for (0..sz) |i| {
        func(tensor.get_1d(i));
    }
}

/// Transform elements from a source tensor to a destination tensor using a function.
/// Both tensors must have the same logical size.
/// The function `func` is called as `dst_element = func(src_element)`.
pub fn transform(src: anytype, dst: anytype, func: anytype) void {
    if (src.size() != dst.size()) {
        @panic("Tensor size mismatch in transform algorithm.");
    }
    const sz = src.size();
    for (0..sz) |i| {
        dst.set_1d(i, func(src.get_1d(i)));
    }
}
