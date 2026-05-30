const std = @import("std");
const cute = @import("cute");

pub fn panic(msg: []const u8, stack_trace: ?*std.builtin.StackTrace, _: ?usize) noreturn {
    _ = msg;
    _ = stack_trace;
    unreachable;
}

// Device-side library entry point.
// Add actual kernels using the `cute` namespace here.
