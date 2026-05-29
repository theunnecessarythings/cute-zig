const std = @import("std");
const kernels = @import("sgemm_sm80.zig");

pub fn panic(msg: []const u8, stack_trace: ?*std.builtin.StackTrace, _: ?usize) noreturn {
    _ = msg;
    _ = stack_trace;
    unreachable;
}

fn exportKernels(comptime namespace: type) void {
    inline for (@typeInfo(namespace).@"struct".decls) |decl| {
        const value = @field(namespace, decl.name);
        const Value = @TypeOf(value);

        switch (@typeInfo(Value)) {
            .@"fn" => |func| {
                if (std.meta.activeTag(func.calling_convention) == std.meta.activeTag(std.builtin.CallingConvention.kernel)) {
                    @export(&value, .{ .name = decl.name, .linkage = .strong });
                }
            },
            .type => {
                if (@typeInfo(value) == .@"struct") {
                    exportKernels(value);
                }
            },
            else => {},
        }
    }
}

comptime {
    exportKernels(kernels);
}
