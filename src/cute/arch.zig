const std = @import("std");

/// Architecture-specific PTX bindings for CuTe.
/// Note: These functions must be compiled for the `nvptx64` target.
pub const types = @import("arch/types.zig");
pub const builders = @import("arch/builders.zig");
pub const db = @import("arch/db/mod.zig");
pub const check = @import("arch/check.zig");
// Disabled until descriptor encoding is validated against CuTe/CUTLASS.
// pub const tma = @import("arch/tma.zig");
// pub const wgmma = @import("arch/wgmma.zig");

/// Hand-written utility bindings for special registers.
pub const util = struct {
    pub inline fn thread_idx_x() u32 {
        return asm ("mov.u32 %[ret], %tid.x;"
            : [ret] "=r" (-> u32),
        );
    }
    pub inline fn thread_idx_y() u32 {
        return asm ("mov.u32 %[ret], %tid.y;"
            : [ret] "=r" (-> u32),
        );
    }
    pub inline fn thread_idx_z() u32 {
        return asm ("mov.u32 %[ret], %tid.z;"
            : [ret] "=r" (-> u32),
        );
    }
    pub inline fn block_idx_x() u32 {
        return asm ("mov.u32 %[ret], %ctaid.x;"
            : [ret] "=r" (-> u32),
        );
    }
    pub inline fn block_idx_y() u32 {
        return asm ("mov.u32 %[ret], %ctaid.y;"
            : [ret] "=r" (-> u32),
        );
    }
    pub inline fn block_idx_z() u32 {
        return asm ("mov.u32 %[ret], %ctaid.z;"
            : [ret] "=r" (-> u32),
        );
    }
    pub inline fn block_dim_x() u32 {
        return asm ("mov.u32 %[ret], %ntid.x;"
            : [ret] "=r" (-> u32),
        );
    }
    pub inline fn block_dim_y() u32 {
        return asm ("mov.u32 %[ret], %ntid.y;"
            : [ret] "=r" (-> u32),
        );
    }
    pub inline fn block_dim_z() u32 {
        return asm ("mov.u32 %[ret], %ntid.z;"
            : [ret] "=r" (-> u32),
        );
    }
    pub inline fn grid_dim_x() u32 {
        return asm ("mov.u32 %[ret], %nctaid.x;"
            : [ret] "=r" (-> u32),
        );
    }
    pub inline fn grid_dim_y() u32 {
        return asm ("mov.u32 %[ret], %nctaid.y;"
            : [ret] "=r" (-> u32),
        );
    }
    pub inline fn grid_dim_z() u32 {
        return asm ("mov.u32 %[ret], %nctaid.z;"
            : [ret] "=r" (-> u32),
        );
    }
    pub inline fn lane_id() u32 {
        return asm ("mov.u32 %[ret], %laneid;"
            : [ret] "=r" (-> u32),
        );
    }
    pub inline fn warp_id() u32 {
        return asm ("mov.u32 %[ret], %warpid;"
            : [ret] "=r" (-> u32),
        );
    }
    pub inline fn lane_mask() u32 {
        return asm ("mov.u32 %[ret], %lanemask_eq;"
            : [ret] "=r" (-> u32),
        );
    }
    pub inline fn cp_async_fence() void {
        asm volatile ("cp.async.fence;" ::: .{ .memory = true });
    }
    pub inline fn cp_async_wait_all() void {
        asm volatile ("cp.async.wait_all;" ::: .{ .memory = true });
    }
    pub inline fn cp_async_wait_group(comptime n: u32) void {
        asm volatile (std.fmt.comptimePrint("cp.async.wait_group {d};", .{n}) ::: .{ .memory = true });
    }
};

/// Hand-written atomic operations.
pub const atomic = struct {
    pub inline fn atomic_add_f32(ptr: *f32, val: f32) void {
        asm volatile ("red.add.f32 [%[p]], %[v];"
            :
            : [p] "l" (@intFromPtr(ptr)),
              [v] "f" (val),
            : .{ .memory = true });
    }
    pub inline fn atomic_add_f16x2(ptr: *[2]f16, val: [2]f16) void {
        const v = @as(u32, @bitCast(val));
        asm volatile ("red.add.noftz.f16x2 [%[p]], %[v];"
            :
            : [p] "l" (@intFromPtr(ptr)),
              [v] "r" (v),
            : .{ .memory = true });
    }
    pub inline fn atomic_max_i32(ptr: *i32, val: i32) void {
        asm volatile ("red.max.s32 [%[p]], %[v];"
            :
            : [p] "l" (@intFromPtr(ptr)),
              [v] "r" (val),
            : .{ .memory = true });
    }
    pub inline fn atomic_exch_u32(ptr: *u32, val: u32) u32 {
        var ret: u32 = undefined;
        asm volatile ("atom.exch.b32 %[ret], [%[p]], %[v];"
            : [ret] "=r" (ret),
            : [p] "l" (@intFromPtr(ptr)),
              [v] "r" (val),
            : .{ .memory = true });
        return ret;
    }
};

/// Hand-written shuffle operations.
pub const shfl = struct {
    pub inline fn shfl_sync_idx(mask: u32, val: u32, lane_mask: u32, width: u32) u32 {
        var ret: u32 = undefined;
        asm volatile ("shfl.sync.idx.b32 %[ret], %[val], %[lane_mask], %[width], %[mask];"
            : [ret] "=r" (ret),
            : [val] "r" (val),
              [lane_mask] "r" (lane_mask),
              [width] "r" (width),
              [mask] "r" (mask),
        );
        return ret;
    }
};
