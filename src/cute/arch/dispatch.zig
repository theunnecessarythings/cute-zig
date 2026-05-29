const std = @import("std");

// AUTO-GENERATED PTX Dispatcher

// --- MMA ---
pub inline fn mma_f324_u322_u321_f324(comptime ptx: []const u8, d: *[4]f32, a: [2]u32, b: [1]u32, c: [4]f32) void {
    var l_v0: f32 = undefined;
    var l_v1: f32 = undefined;
    var l_v2: f32 = undefined;
    var l_v3: f32 = undefined;
    asm volatile (ptx
        : [v0] "=f" (l_v0),
          [v1] "=f" (l_v1),
          [v2] "=f" (l_v2),
          [v3] "=f" (l_v3),
        : [v4] "r" (a[0]),
          [v5] "r" (a[1]),
          [v6] "r" (b[0]),
          [v7] "f" (c[0]),
          [v8] "f" (c[1]),
          [v9] "f" (c[2]),
          [v10] "f" (c[3]),
    );
    d[0] = l_v0;
    d[1] = l_v1;
    d[2] = l_v2;
    d[3] = l_v3;
}

pub inline fn mma_f324_u324_u322_f324(comptime ptx: []const u8, d: *[4]f32, a: [4]u32, b: [2]u32, c: [4]f32) void {
    var l_v0: f32 = undefined;
    var l_v1: f32 = undefined;
    var l_v2: f32 = undefined;
    var l_v3: f32 = undefined;
    asm volatile (ptx
        : [v0] "=f" (l_v0),
          [v1] "=f" (l_v1),
          [v2] "=f" (l_v2),
          [v3] "=f" (l_v3),
        : [v4] "r" (a[0]),
          [v5] "r" (a[1]),
          [v6] "r" (a[2]),
          [v7] "r" (a[3]),
          [v8] "r" (b[0]),
          [v9] "r" (b[1]),
          [v10] "f" (c[0]),
          [v11] "f" (c[1]),
          [v12] "f" (c[2]),
          [v13] "f" (c[3]),
    );
    d[0] = l_v0;
    d[1] = l_v1;
    d[2] = l_v2;
    d[3] = l_v3;
}

pub inline fn mma_f328_u322_u322_f328(comptime ptx: []const u8, d: *[8]f32, a: [2]u32, b: [2]u32, c: [8]f32) void {
    var l_v0: f32 = undefined;
    var l_v1: f32 = undefined;
    var l_v2: f32 = undefined;
    var l_v3: f32 = undefined;
    var l_v4: f32 = undefined;
    var l_v5: f32 = undefined;
    var l_v6: f32 = undefined;
    var l_v7: f32 = undefined;
    asm volatile (ptx
        : [v0] "=f" (l_v0),
          [v1] "=f" (l_v1),
          [v2] "=f" (l_v2),
          [v3] "=f" (l_v3),
          [v4] "=f" (l_v4),
          [v5] "=f" (l_v5),
          [v6] "=f" (l_v6),
          [v7] "=f" (l_v7),
        : [v8] "r" (a[0]),
          [v9] "r" (a[1]),
          [v10] "r" (b[0]),
          [v11] "r" (b[1]),
          [v12] "f" (c[0]),
          [v13] "f" (c[1]),
          [v14] "f" (c[2]),
          [v15] "f" (c[3]),
          [v16] "f" (c[4]),
          [v17] "f" (c[5]),
          [v18] "f" (c[6]),
          [v19] "f" (c[7]),
    );
    d[0] = l_v0;
    d[1] = l_v1;
    d[2] = l_v2;
    d[3] = l_v3;
    d[4] = l_v4;
    d[5] = l_v5;
    d[6] = l_v6;
    d[7] = l_v7;
}

pub inline fn mma_f642_f641_f641_f642(comptime ptx: []const u8, d: *[2]f64, a: [1]f64, b: [1]f64, c: [2]f64) void {
    var l_v0: f64 = undefined;
    var l_v1: f64 = undefined;
    asm volatile (ptx
        : [v0] "=d" (l_v0),
          [v1] "=d" (l_v1),
        : [v2] "d" (a[0]),
          [v3] "d" (b[0]),
          [v4] "d" (c[0]),
          [v5] "d" (c[1]),
    );
    d[0] = l_v0;
    d[1] = l_v1;
}

pub inline fn mma_f644_f642_f641_f644(comptime ptx: []const u8, d: *[4]f64, a: [2]f64, b: [1]f64, c: [4]f64) void {
    var l_v0: f64 = undefined;
    var l_v1: f64 = undefined;
    var l_v2: f64 = undefined;
    var l_v3: f64 = undefined;
    asm volatile (ptx
        : [v0] "=d" (l_v0),
          [v1] "=d" (l_v1),
          [v2] "=d" (l_v2),
          [v3] "=d" (l_v3),
        : [v4] "d" (a[0]),
          [v5] "d" (a[1]),
          [v6] "d" (b[0]),
          [v7] "d" (c[0]),
          [v8] "d" (c[1]),
          [v9] "d" (c[2]),
          [v10] "d" (c[3]),
    );
    d[0] = l_v0;
    d[1] = l_v1;
    d[2] = l_v2;
    d[3] = l_v3;
}

pub inline fn mma_f644_f644_f642_f644(comptime ptx: []const u8, d: *[4]f64, a: [4]f64, b: [2]f64, c: [4]f64) void {
    var l_v0: f64 = undefined;
    var l_v1: f64 = undefined;
    var l_v2: f64 = undefined;
    var l_v3: f64 = undefined;
    asm volatile (ptx
        : [v0] "=d" (l_v0),
          [v1] "=d" (l_v1),
          [v2] "=d" (l_v2),
          [v3] "=d" (l_v3),
        : [v4] "d" (a[0]),
          [v5] "d" (a[1]),
          [v6] "d" (a[2]),
          [v7] "d" (a[3]),
          [v8] "d" (b[0]),
          [v9] "d" (b[1]),
          [v10] "d" (c[0]),
          [v11] "d" (c[1]),
          [v12] "d" (c[2]),
          [v13] "d" (c[3]),
    );
    d[0] = l_v0;
    d[1] = l_v1;
    d[2] = l_v2;
    d[3] = l_v3;
}

pub inline fn mma_f644_f648_f644_f644(comptime ptx: []const u8, d: *[4]f64, a: [8]f64, b: [4]f64, c: [4]f64) void {
    var l_v0: f64 = undefined;
    var l_v1: f64 = undefined;
    var l_v2: f64 = undefined;
    var l_v3: f64 = undefined;
    asm volatile (ptx
        : [v0] "=d" (l_v0),
          [v1] "=d" (l_v1),
          [v2] "=d" (l_v2),
          [v3] "=d" (l_v3),
        : [v4] "d" (a[0]),
          [v5] "d" (a[1]),
          [v6] "d" (a[2]),
          [v7] "d" (a[3]),
          [v8] "d" (a[4]),
          [v9] "d" (a[5]),
          [v10] "d" (a[6]),
          [v11] "d" (a[7]),
          [v12] "d" (b[0]),
          [v13] "d" (b[1]),
          [v14] "d" (b[2]),
          [v15] "d" (b[3]),
          [v16] "d" (c[0]),
          [v17] "d" (c[1]),
          [v18] "d" (c[2]),
          [v19] "d" (c[3]),
    );
    d[0] = l_v0;
    d[1] = l_v1;
    d[2] = l_v2;
    d[3] = l_v3;
}

pub inline fn mma_i321_u321_u321_i321(comptime ptx: []const u8, d: *[1]i32, a: [1]u32, b: [1]u32, c: [1]i32) void {
    var l_v0: i32 = undefined;
    asm volatile (ptx
        : [v0] "=r" (l_v0),
        : [v1] "r" (a[0]),
          [v2] "r" (b[0]),
          [v3] "r" (c[0]),
    );
    d[0] = l_v0;
}

pub inline fn mma_u322_u321_u321_u322(comptime ptx: []const u8, d: *[2]u32, a: [1]u32, b: [1]u32, c: [2]u32) void {
    var l_v0: u32 = undefined;
    var l_v1: u32 = undefined;
    asm volatile (ptx
        : [v0] "=r" (l_v0),
          [v1] "=r" (l_v1),
        : [v2] "r" (a[0]),
          [v3] "r" (b[0]),
          [v4] "r" (c[0]),
          [v5] "r" (c[1]),
    );
    d[0] = l_v0;
    d[1] = l_v1;
}

pub inline fn mma_u322_u322_u321_u322(comptime ptx: []const u8, d: *[2]u32, a: [2]u32, b: [1]u32, c: [2]u32) void {
    var l_v0: u32 = undefined;
    var l_v1: u32 = undefined;
    asm volatile (ptx
        : [v0] "=r" (l_v0),
          [v1] "=r" (l_v1),
        : [v2] "r" (a[0]),
          [v3] "r" (a[1]),
          [v4] "r" (b[0]),
          [v5] "r" (c[0]),
          [v6] "r" (c[1]),
    );
    d[0] = l_v0;
    d[1] = l_v1;
}

pub inline fn mma_u322_u324_u322_u322(comptime ptx: []const u8, d: *[2]u32, a: [4]u32, b: [2]u32, c: [2]u32) void {
    var l_v0: u32 = undefined;
    var l_v1: u32 = undefined;
    asm volatile (ptx
        : [v0] "=r" (l_v0),
          [v1] "=r" (l_v1),
        : [v2] "r" (a[0]),
          [v3] "r" (a[1]),
          [v4] "r" (a[2]),
          [v5] "r" (a[3]),
          [v6] "r" (b[0]),
          [v7] "r" (b[1]),
          [v8] "r" (c[0]),
          [v9] "r" (c[1]),
    );
    d[0] = l_v0;
    d[1] = l_v1;
}

pub inline fn mma_u324_u322_u321_u324(comptime ptx: []const u8, d: *[4]u32, a: [2]u32, b: [1]u32, c: [4]u32) void {
    var l_v0: u32 = undefined;
    var l_v1: u32 = undefined;
    var l_v2: u32 = undefined;
    var l_v3: u32 = undefined;
    asm volatile (ptx
        : [v0] "=r" (l_v0),
          [v1] "=r" (l_v1),
          [v2] "=r" (l_v2),
          [v3] "=r" (l_v3),
        : [v4] "r" (a[0]),
          [v5] "r" (a[1]),
          [v6] "r" (b[0]),
          [v7] "r" (c[0]),
          [v8] "r" (c[1]),
          [v9] "r" (c[2]),
          [v10] "r" (c[3]),
    );
    d[0] = l_v0;
    d[1] = l_v1;
    d[2] = l_v2;
    d[3] = l_v3;
}

pub inline fn mma_u324_u322_u322_u324(comptime ptx: []const u8, d: *[4]u32, a: [2]u32, b: [2]u32, c: [4]u32) void {
    var l_v0: u32 = undefined;
    var l_v1: u32 = undefined;
    var l_v2: u32 = undefined;
    var l_v3: u32 = undefined;
    asm volatile (ptx
        : [v0] "=r" (l_v0),
          [v1] "=r" (l_v1),
          [v2] "=r" (l_v2),
          [v3] "=r" (l_v3),
        : [v4] "r" (a[0]),
          [v5] "r" (a[1]),
          [v6] "r" (b[0]),
          [v7] "r" (b[1]),
          [v8] "r" (c[0]),
          [v9] "r" (c[1]),
          [v10] "r" (c[2]),
          [v11] "r" (c[3]),
    );
    d[0] = l_v0;
    d[1] = l_v1;
    d[2] = l_v2;
    d[3] = l_v3;
}

pub inline fn mma_u324_u324_u322_u324(comptime ptx: []const u8, d: *[4]u32, a: [4]u32, b: [2]u32, c: [4]u32) void {
    var l_v0: u32 = undefined;
    var l_v1: u32 = undefined;
    var l_v2: u32 = undefined;
    var l_v3: u32 = undefined;
    asm volatile (ptx
        : [v0] "=r" (l_v0),
          [v1] "=r" (l_v1),
          [v2] "=r" (l_v2),
          [v3] "=r" (l_v3),
        : [v4] "r" (a[0]),
          [v5] "r" (a[1]),
          [v6] "r" (a[2]),
          [v7] "r" (a[3]),
          [v8] "r" (b[0]),
          [v9] "r" (b[1]),
          [v10] "r" (c[0]),
          [v11] "r" (c[1]),
          [v12] "r" (c[2]),
          [v13] "r" (c[3]),
    );
    d[0] = l_v0;
    d[1] = l_v1;
    d[2] = l_v2;
    d[3] = l_v3;
}

pub inline fn mma_void1_u321_u641_u321(comptime ptx: []const u8, d: anytype, a: [1]u32, b: [1]u64, c: [1]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (b[0]),
          [v2] "r" (c[0]),
    );
}

pub inline fn mma_void1_u324_u641_f324(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [4]f32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (a[1]),
          [v2] "r" (a[2]),
          [v3] "r" (a[3]),
          [v4] "r" (b[0]),
          [v5] "f" (c[0]),
          [v6] "f" (c[1]),
          [v7] "f" (c[2]),
          [v8] "f" (c[3]),
    );
}

pub inline fn mma_void1_u324_u641_f328(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [8]f32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (a[1]),
          [v2] "r" (a[2]),
          [v3] "r" (a[3]),
          [v4] "r" (b[0]),
          [v5] "f" (c[0]),
          [v6] "f" (c[1]),
          [v7] "f" (c[2]),
          [v8] "f" (c[3]),
          [v9] "f" (c[4]),
          [v10] "f" (c[5]),
          [v11] "f" (c[6]),
          [v12] "f" (c[7]),
    );
}

pub inline fn mma_void1_u324_u641_f3212(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [12]f32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (a[1]),
          [v2] "r" (a[2]),
          [v3] "r" (a[3]),
          [v4] "r" (b[0]),
          [v5] "f" (c[0]),
          [v6] "f" (c[1]),
          [v7] "f" (c[2]),
          [v8] "f" (c[3]),
          [v9] "f" (c[4]),
          [v10] "f" (c[5]),
          [v11] "f" (c[6]),
          [v12] "f" (c[7]),
          [v13] "f" (c[8]),
          [v14] "f" (c[9]),
          [v15] "f" (c[10]),
          [v16] "f" (c[11]),
    );
}

pub inline fn mma_void1_u324_u641_f3216(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [16]f32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (a[1]),
          [v2] "r" (a[2]),
          [v3] "r" (a[3]),
          [v4] "r" (b[0]),
          [v5] "f" (c[0]),
          [v6] "f" (c[1]),
          [v7] "f" (c[2]),
          [v8] "f" (c[3]),
          [v9] "f" (c[4]),
          [v10] "f" (c[5]),
          [v11] "f" (c[6]),
          [v12] "f" (c[7]),
          [v13] "f" (c[8]),
          [v14] "f" (c[9]),
          [v15] "f" (c[10]),
          [v16] "f" (c[11]),
          [v17] "f" (c[12]),
          [v18] "f" (c[13]),
          [v19] "f" (c[14]),
          [v20] "f" (c[15]),
    );
}

pub inline fn mma_void1_u324_u641_f3220(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [20]f32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (a[1]),
          [v2] "r" (a[2]),
          [v3] "r" (a[3]),
          [v4] "r" (b[0]),
          [v5] "f" (c[0]),
          [v6] "f" (c[1]),
          [v7] "f" (c[2]),
          [v8] "f" (c[3]),
          [v9] "f" (c[4]),
          [v10] "f" (c[5]),
          [v11] "f" (c[6]),
          [v12] "f" (c[7]),
          [v13] "f" (c[8]),
          [v14] "f" (c[9]),
          [v15] "f" (c[10]),
          [v16] "f" (c[11]),
          [v17] "f" (c[12]),
          [v18] "f" (c[13]),
          [v19] "f" (c[14]),
          [v20] "f" (c[15]),
          [v21] "f" (c[16]),
          [v22] "f" (c[17]),
          [v23] "f" (c[18]),
          [v24] "f" (c[19]),
    );
}

pub inline fn mma_void1_u324_u641_f3224(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [24]f32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (a[1]),
          [v2] "r" (a[2]),
          [v3] "r" (a[3]),
          [v4] "r" (b[0]),
          [v5] "f" (c[0]),
          [v6] "f" (c[1]),
          [v7] "f" (c[2]),
          [v8] "f" (c[3]),
          [v9] "f" (c[4]),
          [v10] "f" (c[5]),
          [v11] "f" (c[6]),
          [v12] "f" (c[7]),
          [v13] "f" (c[8]),
          [v14] "f" (c[9]),
          [v15] "f" (c[10]),
          [v16] "f" (c[11]),
          [v17] "f" (c[12]),
          [v18] "f" (c[13]),
          [v19] "f" (c[14]),
          [v20] "f" (c[15]),
          [v21] "f" (c[16]),
          [v22] "f" (c[17]),
          [v23] "f" (c[18]),
          [v24] "f" (c[19]),
          [v25] "f" (c[20]),
          [v26] "f" (c[21]),
          [v27] "f" (c[22]),
          [v28] "f" (c[23]),
    );
}

pub inline fn mma_void1_u324_u641_u322(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [2]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (a[1]),
          [v2] "r" (a[2]),
          [v3] "r" (a[3]),
          [v4] "r" (b[0]),
          [v5] "r" (c[0]),
          [v6] "r" (c[1]),
    );
}

pub inline fn mma_void1_u324_u641_u324(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [4]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (a[1]),
          [v2] "r" (a[2]),
          [v3] "r" (a[3]),
          [v4] "r" (b[0]),
          [v5] "r" (c[0]),
          [v6] "r" (c[1]),
          [v7] "r" (c[2]),
          [v8] "r" (c[3]),
    );
}

pub inline fn mma_void1_u324_u641_u326(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [6]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (a[1]),
          [v2] "r" (a[2]),
          [v3] "r" (a[3]),
          [v4] "r" (b[0]),
          [v5] "r" (c[0]),
          [v6] "r" (c[1]),
          [v7] "r" (c[2]),
          [v8] "r" (c[3]),
          [v9] "r" (c[4]),
          [v10] "r" (c[5]),
    );
}

pub inline fn mma_void1_u324_u641_u328(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [8]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (a[1]),
          [v2] "r" (a[2]),
          [v3] "r" (a[3]),
          [v4] "r" (b[0]),
          [v5] "r" (c[0]),
          [v6] "r" (c[1]),
          [v7] "r" (c[2]),
          [v8] "r" (c[3]),
          [v9] "r" (c[4]),
          [v10] "r" (c[5]),
          [v11] "r" (c[6]),
          [v12] "r" (c[7]),
    );
}

pub inline fn mma_void1_u324_u641_u3210(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [10]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (a[1]),
          [v2] "r" (a[2]),
          [v3] "r" (a[3]),
          [v4] "r" (b[0]),
          [v5] "r" (c[0]),
          [v6] "r" (c[1]),
          [v7] "r" (c[2]),
          [v8] "r" (c[3]),
          [v9] "r" (c[4]),
          [v10] "r" (c[5]),
          [v11] "r" (c[6]),
          [v12] "r" (c[7]),
          [v13] "r" (c[8]),
          [v14] "r" (c[9]),
    );
}

pub inline fn mma_void1_u324_u641_u3212(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [12]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (a[1]),
          [v2] "r" (a[2]),
          [v3] "r" (a[3]),
          [v4] "r" (b[0]),
          [v5] "r" (c[0]),
          [v6] "r" (c[1]),
          [v7] "r" (c[2]),
          [v8] "r" (c[3]),
          [v9] "r" (c[4]),
          [v10] "r" (c[5]),
          [v11] "r" (c[6]),
          [v12] "r" (c[7]),
          [v13] "r" (c[8]),
          [v14] "r" (c[9]),
          [v15] "r" (c[10]),
          [v16] "r" (c[11]),
    );
}

pub inline fn mma_void1_u324_u641_u3214(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [14]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (a[1]),
          [v2] "r" (a[2]),
          [v3] "r" (a[3]),
          [v4] "r" (b[0]),
          [v5] "r" (c[0]),
          [v6] "r" (c[1]),
          [v7] "r" (c[2]),
          [v8] "r" (c[3]),
          [v9] "r" (c[4]),
          [v10] "r" (c[5]),
          [v11] "r" (c[6]),
          [v12] "r" (c[7]),
          [v13] "r" (c[8]),
          [v14] "r" (c[9]),
          [v15] "r" (c[10]),
          [v16] "r" (c[11]),
          [v17] "r" (c[12]),
          [v18] "r" (c[13]),
    );
}

pub inline fn mma_void1_u324_u641_u3216(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [16]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (a[1]),
          [v2] "r" (a[2]),
          [v3] "r" (a[3]),
          [v4] "r" (b[0]),
          [v5] "r" (c[0]),
          [v6] "r" (c[1]),
          [v7] "r" (c[2]),
          [v8] "r" (c[3]),
          [v9] "r" (c[4]),
          [v10] "r" (c[5]),
          [v11] "r" (c[6]),
          [v12] "r" (c[7]),
          [v13] "r" (c[8]),
          [v14] "r" (c[9]),
          [v15] "r" (c[10]),
          [v16] "r" (c[11]),
          [v17] "r" (c[12]),
          [v18] "r" (c[13]),
          [v19] "r" (c[14]),
          [v20] "r" (c[15]),
    );
}

pub inline fn mma_void1_u324_u641_u3218(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [18]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (a[1]),
          [v2] "r" (a[2]),
          [v3] "r" (a[3]),
          [v4] "r" (b[0]),
          [v5] "r" (c[0]),
          [v6] "r" (c[1]),
          [v7] "r" (c[2]),
          [v8] "r" (c[3]),
          [v9] "r" (c[4]),
          [v10] "r" (c[5]),
          [v11] "r" (c[6]),
          [v12] "r" (c[7]),
          [v13] "r" (c[8]),
          [v14] "r" (c[9]),
          [v15] "r" (c[10]),
          [v16] "r" (c[11]),
          [v17] "r" (c[12]),
          [v18] "r" (c[13]),
          [v19] "r" (c[14]),
          [v20] "r" (c[15]),
          [v21] "r" (c[16]),
          [v22] "r" (c[17]),
    );
}

pub inline fn mma_void1_u324_u641_u3220(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [20]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (a[1]),
          [v2] "r" (a[2]),
          [v3] "r" (a[3]),
          [v4] "r" (b[0]),
          [v5] "r" (c[0]),
          [v6] "r" (c[1]),
          [v7] "r" (c[2]),
          [v8] "r" (c[3]),
          [v9] "r" (c[4]),
          [v10] "r" (c[5]),
          [v11] "r" (c[6]),
          [v12] "r" (c[7]),
          [v13] "r" (c[8]),
          [v14] "r" (c[9]),
          [v15] "r" (c[10]),
          [v16] "r" (c[11]),
          [v17] "r" (c[12]),
          [v18] "r" (c[13]),
          [v19] "r" (c[14]),
          [v20] "r" (c[15]),
          [v21] "r" (c[16]),
          [v22] "r" (c[17]),
          [v23] "r" (c[18]),
          [v24] "r" (c[19]),
    );
}

pub inline fn mma_void1_u324_u641_u3222(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [22]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (a[1]),
          [v2] "r" (a[2]),
          [v3] "r" (a[3]),
          [v4] "r" (b[0]),
          [v5] "r" (c[0]),
          [v6] "r" (c[1]),
          [v7] "r" (c[2]),
          [v8] "r" (c[3]),
          [v9] "r" (c[4]),
          [v10] "r" (c[5]),
          [v11] "r" (c[6]),
          [v12] "r" (c[7]),
          [v13] "r" (c[8]),
          [v14] "r" (c[9]),
          [v15] "r" (c[10]),
          [v16] "r" (c[11]),
          [v17] "r" (c[12]),
          [v18] "r" (c[13]),
          [v19] "r" (c[14]),
          [v20] "r" (c[15]),
          [v21] "r" (c[16]),
          [v22] "r" (c[17]),
          [v23] "r" (c[18]),
          [v24] "r" (c[19]),
          [v25] "r" (c[20]),
          [v26] "r" (c[21]),
    );
}

pub inline fn mma_void1_u324_u641_u3224(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [24]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (a[1]),
          [v2] "r" (a[2]),
          [v3] "r" (a[3]),
          [v4] "r" (b[0]),
          [v5] "r" (c[0]),
          [v6] "r" (c[1]),
          [v7] "r" (c[2]),
          [v8] "r" (c[3]),
          [v9] "r" (c[4]),
          [v10] "r" (c[5]),
          [v11] "r" (c[6]),
          [v12] "r" (c[7]),
          [v13] "r" (c[8]),
          [v14] "r" (c[9]),
          [v15] "r" (c[10]),
          [v16] "r" (c[11]),
          [v17] "r" (c[12]),
          [v18] "r" (c[13]),
          [v19] "r" (c[14]),
          [v20] "r" (c[15]),
          [v21] "r" (c[16]),
          [v22] "r" (c[17]),
          [v23] "r" (c[18]),
          [v24] "r" (c[19]),
          [v25] "r" (c[20]),
          [v26] "r" (c[21]),
          [v27] "r" (c[22]),
          [v28] "r" (c[23]),
    );
}

pub inline fn mma_void1_u324_u641_u3226(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [26]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (a[1]),
          [v2] "r" (a[2]),
          [v3] "r" (a[3]),
          [v4] "r" (b[0]),
          [v5] "r" (c[0]),
          [v6] "r" (c[1]),
          [v7] "r" (c[2]),
          [v8] "r" (c[3]),
          [v9] "r" (c[4]),
          [v10] "r" (c[5]),
          [v11] "r" (c[6]),
          [v12] "r" (c[7]),
          [v13] "r" (c[8]),
          [v14] "r" (c[9]),
          [v15] "r" (c[10]),
          [v16] "r" (c[11]),
          [v17] "r" (c[12]),
          [v18] "r" (c[13]),
          [v19] "r" (c[14]),
          [v20] "r" (c[15]),
          [v21] "r" (c[16]),
          [v22] "r" (c[17]),
          [v23] "r" (c[18]),
          [v24] "r" (c[19]),
          [v25] "r" (c[20]),
          [v26] "r" (c[21]),
          [v27] "r" (c[22]),
          [v28] "r" (c[23]),
          [v29] "r" (c[24]),
          [v30] "r" (c[25]),
    );
}

pub inline fn mma_void1_u641_u641_f324(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [4]f32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (b[0]),
          [v2] "f" (c[0]),
          [v3] "f" (c[1]),
          [v4] "f" (c[2]),
          [v5] "f" (c[3]),
    );
}

pub inline fn mma_void1_u641_u641_f328(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [8]f32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (b[0]),
          [v2] "f" (c[0]),
          [v3] "f" (c[1]),
          [v4] "f" (c[2]),
          [v5] "f" (c[3]),
          [v6] "f" (c[4]),
          [v7] "f" (c[5]),
          [v8] "f" (c[6]),
          [v9] "f" (c[7]),
    );
}

pub inline fn mma_void1_u641_u641_f3212(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [12]f32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (b[0]),
          [v2] "f" (c[0]),
          [v3] "f" (c[1]),
          [v4] "f" (c[2]),
          [v5] "f" (c[3]),
          [v6] "f" (c[4]),
          [v7] "f" (c[5]),
          [v8] "f" (c[6]),
          [v9] "f" (c[7]),
          [v10] "f" (c[8]),
          [v11] "f" (c[9]),
          [v12] "f" (c[10]),
          [v13] "f" (c[11]),
    );
}

pub inline fn mma_void1_u641_u641_f3216(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [16]f32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (b[0]),
          [v2] "f" (c[0]),
          [v3] "f" (c[1]),
          [v4] "f" (c[2]),
          [v5] "f" (c[3]),
          [v6] "f" (c[4]),
          [v7] "f" (c[5]),
          [v8] "f" (c[6]),
          [v9] "f" (c[7]),
          [v10] "f" (c[8]),
          [v11] "f" (c[9]),
          [v12] "f" (c[10]),
          [v13] "f" (c[11]),
          [v14] "f" (c[12]),
          [v15] "f" (c[13]),
          [v16] "f" (c[14]),
          [v17] "f" (c[15]),
    );
}

pub inline fn mma_void1_u641_u641_f3220(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [20]f32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (b[0]),
          [v2] "f" (c[0]),
          [v3] "f" (c[1]),
          [v4] "f" (c[2]),
          [v5] "f" (c[3]),
          [v6] "f" (c[4]),
          [v7] "f" (c[5]),
          [v8] "f" (c[6]),
          [v9] "f" (c[7]),
          [v10] "f" (c[8]),
          [v11] "f" (c[9]),
          [v12] "f" (c[10]),
          [v13] "f" (c[11]),
          [v14] "f" (c[12]),
          [v15] "f" (c[13]),
          [v16] "f" (c[14]),
          [v17] "f" (c[15]),
          [v18] "f" (c[16]),
          [v19] "f" (c[17]),
          [v20] "f" (c[18]),
          [v21] "f" (c[19]),
    );
}

pub inline fn mma_void1_u641_u641_f3224(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [24]f32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (b[0]),
          [v2] "f" (c[0]),
          [v3] "f" (c[1]),
          [v4] "f" (c[2]),
          [v5] "f" (c[3]),
          [v6] "f" (c[4]),
          [v7] "f" (c[5]),
          [v8] "f" (c[6]),
          [v9] "f" (c[7]),
          [v10] "f" (c[8]),
          [v11] "f" (c[9]),
          [v12] "f" (c[10]),
          [v13] "f" (c[11]),
          [v14] "f" (c[12]),
          [v15] "f" (c[13]),
          [v16] "f" (c[14]),
          [v17] "f" (c[15]),
          [v18] "f" (c[16]),
          [v19] "f" (c[17]),
          [v20] "f" (c[18]),
          [v21] "f" (c[19]),
          [v22] "f" (c[20]),
          [v23] "f" (c[21]),
          [v24] "f" (c[22]),
          [v25] "f" (c[23]),
    );
}

pub inline fn mma_void1_u641_u641_f3228(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [28]f32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (b[0]),
          [v2] "f" (c[0]),
          [v3] "f" (c[1]),
          [v4] "f" (c[2]),
          [v5] "f" (c[3]),
          [v6] "f" (c[4]),
          [v7] "f" (c[5]),
          [v8] "f" (c[6]),
          [v9] "f" (c[7]),
          [v10] "f" (c[8]),
          [v11] "f" (c[9]),
          [v12] "f" (c[10]),
          [v13] "f" (c[11]),
          [v14] "f" (c[12]),
          [v15] "f" (c[13]),
          [v16] "f" (c[14]),
          [v17] "f" (c[15]),
          [v18] "f" (c[16]),
          [v19] "f" (c[17]),
          [v20] "f" (c[18]),
          [v21] "f" (c[19]),
          [v22] "f" (c[20]),
          [v23] "f" (c[21]),
          [v24] "f" (c[22]),
          [v25] "f" (c[23]),
          [v26] "f" (c[24]),
          [v27] "f" (c[25]),
          [v28] "f" (c[26]),
          [v29] "f" (c[27]),
    );
}

pub inline fn mma_void1_u641_u641_u321(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [1]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (b[0]),
          [v2] "r" (c[0]),
    );
}

pub inline fn mma_void1_u641_u641_u322(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [2]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (b[0]),
          [v2] "r" (c[0]),
          [v3] "r" (c[1]),
    );
}

pub inline fn mma_void1_u641_u641_u324(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [4]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (b[0]),
          [v2] "r" (c[0]),
          [v3] "r" (c[1]),
          [v4] "r" (c[2]),
          [v5] "r" (c[3]),
    );
}

pub inline fn mma_void1_u641_u641_u326(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [6]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (b[0]),
          [v2] "r" (c[0]),
          [v3] "r" (c[1]),
          [v4] "r" (c[2]),
          [v5] "r" (c[3]),
          [v6] "r" (c[4]),
          [v7] "r" (c[5]),
    );
}

pub inline fn mma_void1_u641_u641_u328(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [8]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (b[0]),
          [v2] "r" (c[0]),
          [v3] "r" (c[1]),
          [v4] "r" (c[2]),
          [v5] "r" (c[3]),
          [v6] "r" (c[4]),
          [v7] "r" (c[5]),
          [v8] "r" (c[6]),
          [v9] "r" (c[7]),
    );
}

pub inline fn mma_void1_u641_u641_u3210(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [10]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (b[0]),
          [v2] "r" (c[0]),
          [v3] "r" (c[1]),
          [v4] "r" (c[2]),
          [v5] "r" (c[3]),
          [v6] "r" (c[4]),
          [v7] "r" (c[5]),
          [v8] "r" (c[6]),
          [v9] "r" (c[7]),
          [v10] "r" (c[8]),
          [v11] "r" (c[9]),
    );
}

pub inline fn mma_void1_u641_u641_u3212(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [12]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (b[0]),
          [v2] "r" (c[0]),
          [v3] "r" (c[1]),
          [v4] "r" (c[2]),
          [v5] "r" (c[3]),
          [v6] "r" (c[4]),
          [v7] "r" (c[5]),
          [v8] "r" (c[6]),
          [v9] "r" (c[7]),
          [v10] "r" (c[8]),
          [v11] "r" (c[9]),
          [v12] "r" (c[10]),
          [v13] "r" (c[11]),
    );
}

pub inline fn mma_void1_u641_u641_u3214(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [14]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (b[0]),
          [v2] "r" (c[0]),
          [v3] "r" (c[1]),
          [v4] "r" (c[2]),
          [v5] "r" (c[3]),
          [v6] "r" (c[4]),
          [v7] "r" (c[5]),
          [v8] "r" (c[6]),
          [v9] "r" (c[7]),
          [v10] "r" (c[8]),
          [v11] "r" (c[9]),
          [v12] "r" (c[10]),
          [v13] "r" (c[11]),
          [v14] "r" (c[12]),
          [v15] "r" (c[13]),
    );
}

pub inline fn mma_void1_u641_u641_u3216(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [16]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (b[0]),
          [v2] "r" (c[0]),
          [v3] "r" (c[1]),
          [v4] "r" (c[2]),
          [v5] "r" (c[3]),
          [v6] "r" (c[4]),
          [v7] "r" (c[5]),
          [v8] "r" (c[6]),
          [v9] "r" (c[7]),
          [v10] "r" (c[8]),
          [v11] "r" (c[9]),
          [v12] "r" (c[10]),
          [v13] "r" (c[11]),
          [v14] "r" (c[12]),
          [v15] "r" (c[13]),
          [v16] "r" (c[14]),
          [v17] "r" (c[15]),
    );
}

pub inline fn mma_void1_u641_u641_u3218(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [18]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (b[0]),
          [v2] "r" (c[0]),
          [v3] "r" (c[1]),
          [v4] "r" (c[2]),
          [v5] "r" (c[3]),
          [v6] "r" (c[4]),
          [v7] "r" (c[5]),
          [v8] "r" (c[6]),
          [v9] "r" (c[7]),
          [v10] "r" (c[8]),
          [v11] "r" (c[9]),
          [v12] "r" (c[10]),
          [v13] "r" (c[11]),
          [v14] "r" (c[12]),
          [v15] "r" (c[13]),
          [v16] "r" (c[14]),
          [v17] "r" (c[15]),
          [v18] "r" (c[16]),
          [v19] "r" (c[17]),
    );
}

pub inline fn mma_void1_u641_u641_u3220(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [20]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (b[0]),
          [v2] "r" (c[0]),
          [v3] "r" (c[1]),
          [v4] "r" (c[2]),
          [v5] "r" (c[3]),
          [v6] "r" (c[4]),
          [v7] "r" (c[5]),
          [v8] "r" (c[6]),
          [v9] "r" (c[7]),
          [v10] "r" (c[8]),
          [v11] "r" (c[9]),
          [v12] "r" (c[10]),
          [v13] "r" (c[11]),
          [v14] "r" (c[12]),
          [v15] "r" (c[13]),
          [v16] "r" (c[14]),
          [v17] "r" (c[15]),
          [v18] "r" (c[16]),
          [v19] "r" (c[17]),
          [v20] "r" (c[18]),
          [v21] "r" (c[19]),
    );
}

pub inline fn mma_void1_u641_u641_u3222(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [22]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (b[0]),
          [v2] "r" (c[0]),
          [v3] "r" (c[1]),
          [v4] "r" (c[2]),
          [v5] "r" (c[3]),
          [v6] "r" (c[4]),
          [v7] "r" (c[5]),
          [v8] "r" (c[6]),
          [v9] "r" (c[7]),
          [v10] "r" (c[8]),
          [v11] "r" (c[9]),
          [v12] "r" (c[10]),
          [v13] "r" (c[11]),
          [v14] "r" (c[12]),
          [v15] "r" (c[13]),
          [v16] "r" (c[14]),
          [v17] "r" (c[15]),
          [v18] "r" (c[16]),
          [v19] "r" (c[17]),
          [v20] "r" (c[18]),
          [v21] "r" (c[19]),
          [v22] "r" (c[20]),
          [v23] "r" (c[21]),
    );
}

pub inline fn mma_void1_u641_u641_u3224(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [24]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (b[0]),
          [v2] "r" (c[0]),
          [v3] "r" (c[1]),
          [v4] "r" (c[2]),
          [v5] "r" (c[3]),
          [v6] "r" (c[4]),
          [v7] "r" (c[5]),
          [v8] "r" (c[6]),
          [v9] "r" (c[7]),
          [v10] "r" (c[8]),
          [v11] "r" (c[9]),
          [v12] "r" (c[10]),
          [v13] "r" (c[11]),
          [v14] "r" (c[12]),
          [v15] "r" (c[13]),
          [v16] "r" (c[14]),
          [v17] "r" (c[15]),
          [v18] "r" (c[16]),
          [v19] "r" (c[17]),
          [v20] "r" (c[18]),
          [v21] "r" (c[19]),
          [v22] "r" (c[20]),
          [v23] "r" (c[21]),
          [v24] "r" (c[22]),
          [v25] "r" (c[23]),
    );
}

pub inline fn mma_void1_u641_u641_u3226(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [26]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (b[0]),
          [v2] "r" (c[0]),
          [v3] "r" (c[1]),
          [v4] "r" (c[2]),
          [v5] "r" (c[3]),
          [v6] "r" (c[4]),
          [v7] "r" (c[5]),
          [v8] "r" (c[6]),
          [v9] "r" (c[7]),
          [v10] "r" (c[8]),
          [v11] "r" (c[9]),
          [v12] "r" (c[10]),
          [v13] "r" (c[11]),
          [v14] "r" (c[12]),
          [v15] "r" (c[13]),
          [v16] "r" (c[14]),
          [v17] "r" (c[15]),
          [v18] "r" (c[16]),
          [v19] "r" (c[17]),
          [v20] "r" (c[18]),
          [v21] "r" (c[19]),
          [v22] "r" (c[20]),
          [v23] "r" (c[21]),
          [v24] "r" (c[22]),
          [v25] "r" (c[23]),
          [v26] "r" (c[24]),
          [v27] "r" (c[25]),
    );
}

pub inline fn mma_void1_u641_u641_u3228(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [28]u32) void {
    _ = d;
    asm volatile (ptx
        :
        : [v0] "r" (a[0]),
          [v1] "r" (b[0]),
          [v2] "r" (c[0]),
          [v3] "r" (c[1]),
          [v4] "r" (c[2]),
          [v5] "r" (c[3]),
          [v6] "r" (c[4]),
          [v7] "r" (c[5]),
          [v8] "r" (c[6]),
          [v9] "r" (c[7]),
          [v10] "r" (c[8]),
          [v11] "r" (c[9]),
          [v12] "r" (c[10]),
          [v13] "r" (c[11]),
          [v14] "r" (c[12]),
          [v15] "r" (c[13]),
          [v16] "r" (c[14]),
          [v17] "r" (c[15]),
          [v18] "r" (c[16]),
          [v19] "r" (c[17]),
          [v20] "r" (c[18]),
          [v21] "r" (c[19]),
          [v22] "r" (c[20]),
          [v23] "r" (c[21]),
          [v24] "r" (c[22]),
          [v25] "r" (c[23]),
          [v26] "r" (c[24]),
          [v27] "r" (c[25]),
          [v28] "r" (c[26]),
          [v29] "r" (c[27]),
    );
}

// --- Copy (Predicated) ---
pub inline fn copy_u1281_u321(comptime ptx: []const u8, src: [1]u128, dst: *[1]u32, pred: bool) void {
    const Out = struct { d0: u32 };
    const res = asm volatile ("@%[p] " ++ ptx
        : [ret] "=r" (-> Out),
        : [s0] "r" (src[0]),
          [p] "b" (pred),
        : .{ .memory = true }
    );
    dst[0] = res.d0;
}

pub inline fn copy_u1281_u322(comptime ptx: []const u8, src: [1]u128, dst: *[2]u32, pred: bool) void {
    const Out = struct { d0: u32, d1: u32 };
    const res = asm volatile ("@%[p] " ++ ptx
        : [ret] "=r" (-> Out),
        : [s0] "r" (src[0]),
          [p] "b" (pred),
        : .{ .memory = true }
    );
    dst[0] = res.d0;
    dst[1] = res.d1;
}

pub inline fn copy_u1281_u324(comptime ptx: []const u8, src: [1]u128, dst: *[4]u32, pred: bool) void {
    const Out = struct { d0: u32, d1: u32, d2: u32, d3: u32 };
    const res = asm volatile ("@%[p] " ++ ptx
        : [ret] "=r" (-> Out),
        : [s0] "r" (src[0]),
          [p] "b" (pred),
        : .{ .memory = true }
    );
    dst[0] = res.d0;
    dst[1] = res.d1;
    dst[2] = res.d2;
    dst[3] = res.d3;
}

pub inline fn copy_u321_u1281(comptime ptx: []const u8, src: [1]u32, dst: *[1]u128, pred: bool) void {
    const Out = struct { d0: u128 };
    const res = asm volatile ("@%[p] " ++ ptx
        : [ret] "=r" (-> Out),
        : [s0] "r" (src[0]),
          [p] "b" (pred),
        : .{ .memory = true }
    );
    dst[0] = res.d0;
}

pub inline fn copy_u321_u321(comptime ptx: []const u8, src: [1]u32, dst: *[1]u32, pred: bool) void {
    const Out = struct { d0: u32 };
    const res = asm volatile ("@%[p] " ++ ptx
        : [ret] "=r" (-> Out),
        : [s0] "r" (src[0]),
          [p] "b" (pred),
        : .{ .memory = true }
    );
    dst[0] = res.d0;
}

pub inline fn copy_u321_u322(comptime ptx: []const u8, src: [1]u32, dst: *[2]u32, pred: bool) void {
    const Out = struct { d0: u32, d1: u32 };
    const res = asm volatile ("@%[p] " ++ ptx
        : [ret] "=r" (-> Out),
        : [s0] "r" (src[0]),
          [p] "b" (pred),
        : .{ .memory = true }
    );
    dst[0] = res.d0;
    dst[1] = res.d1;
}

pub inline fn copy_u321_u324(comptime ptx: []const u8, src: [1]u32, dst: *[4]u32, pred: bool) void {
    const Out = struct { d0: u32, d1: u32, d2: u32, d3: u32 };
    const res = asm volatile ("@%[p] " ++ ptx
        : [ret] "=r" (-> Out),
        : [s0] "r" (src[0]),
          [p] "b" (pred),
        : .{ .memory = true }
    );
    dst[0] = res.d0;
    dst[1] = res.d1;
    dst[2] = res.d2;
    dst[3] = res.d3;
}

pub inline fn copy_u321_u328(comptime ptx: []const u8, src: [1]u32, dst: *[8]u32, pred: bool) void {
    const Out = struct { d0: u32, d1: u32, d2: u32, d3: u32, d4: u32, d5: u32, d6: u32, d7: u32 };
    const res = asm volatile ("@%[p] " ++ ptx
        : [ret] "=r" (-> Out),
        : [s0] "r" (src[0]),
          [p] "b" (pred),
        : .{ .memory = true }
    );
    dst[0] = res.d0;
    dst[1] = res.d1;
    dst[2] = res.d2;
    dst[3] = res.d3;
    dst[4] = res.d4;
    dst[5] = res.d5;
    dst[6] = res.d6;
    dst[7] = res.d7;
}

pub inline fn copy_u321_u3216(comptime ptx: []const u8, src: [1]u32, dst: *[16]u32, pred: bool) void {
    const Out = struct { d0: u32, d1: u32, d2: u32, d3: u32, d4: u32, d5: u32, d6: u32, d7: u32, d8: u32, d9: u32, d10: u32, d11: u32, d12: u32, d13: u32, d14: u32, d15: u32 };
    const res = asm volatile ("@%[p] " ++ ptx
        : [ret] "=r" (-> Out),
        : [s0] "r" (src[0]),
          [p] "b" (pred),
        : .{ .memory = true }
    );
    dst[0] = res.d0;
    dst[1] = res.d1;
    dst[2] = res.d2;
    dst[3] = res.d3;
    dst[4] = res.d4;
    dst[5] = res.d5;
    dst[6] = res.d6;
    dst[7] = res.d7;
    dst[8] = res.d8;
    dst[9] = res.d9;
    dst[10] = res.d10;
    dst[11] = res.d11;
    dst[12] = res.d12;
    dst[13] = res.d13;
    dst[14] = res.d14;
    dst[15] = res.d15;
}

pub inline fn copy_u322_u1281(comptime ptx: []const u8, src: [2]u32, dst: *[1]u128, pred: bool) void {
    const Out = struct { d0: u128 };
    const res = asm volatile ("@%[p] " ++ ptx
        : [ret] "=r" (-> Out),
        : [s0] "r" (src[0]),
          [s1] "r" (src[1]),
          [p] "b" (pred),
        : .{ .memory = true }
    );
    dst[0] = res.d0;
}

pub inline fn copy_u322_u321(comptime ptx: []const u8, src: [2]u32, dst: *[1]u32, pred: bool) void {
    const Out = struct { d0: u32 };
    const res = asm volatile ("@%[p] " ++ ptx
        : [ret] "=r" (-> Out),
        : [s0] "r" (src[0]),
          [s1] "r" (src[1]),
          [p] "b" (pred),
        : .{ .memory = true }
    );
    dst[0] = res.d0;
}

pub inline fn copy_u324_u1281(comptime ptx: []const u8, src: [4]u32, dst: *[1]u128, pred: bool) void {
    const Out = struct { d0: u128 };
    const res = asm volatile ("@%[p] " ++ ptx
        : [ret] "=r" (-> Out),
        : [s0] "r" (src[0]),
          [s1] "r" (src[1]),
          [s2] "r" (src[2]),
          [s3] "r" (src[3]),
          [p] "b" (pred),
        : .{ .memory = true }
    );
    dst[0] = res.d0;
}

pub inline fn copy_u324_u321(comptime ptx: []const u8, src: [4]u32, dst: *[1]u32, pred: bool) void {
    const Out = struct { d0: u32 };
    const res = asm volatile ("@%[p] " ++ ptx
        : [ret] "=r" (-> Out),
        : [s0] "r" (src[0]),
          [s1] "r" (src[1]),
          [s2] "r" (src[2]),
          [s3] "r" (src[3]),
          [p] "b" (pred),
        : .{ .memory = true }
    );
    dst[0] = res.d0;
}

pub inline fn copy_u328_u321(comptime ptx: []const u8, src: [8]u32, dst: *[1]u32, pred: bool) void {
    const Out = struct { d0: u32 };
    const res = asm volatile ("@%[p] " ++ ptx
        : [ret] "=r" (-> Out),
        : [s0] "r" (src[0]),
          [s1] "r" (src[1]),
          [s2] "r" (src[2]),
          [s3] "r" (src[3]),
          [s4] "r" (src[4]),
          [s5] "r" (src[5]),
          [s6] "r" (src[6]),
          [s7] "r" (src[7]),
          [p] "b" (pred),
        : .{ .memory = true }
    );
    dst[0] = res.d0;
}

pub inline fn copy_u3216_u321(comptime ptx: []const u8, src: [16]u32, dst: *[1]u32, pred: bool) void {
    const Out = struct { d0: u32 };
    const res = asm volatile ("@%[p] " ++ ptx
        : [ret] "=r" (-> Out),
        : [s0] "r" (src[0]),
          [s1] "r" (src[1]),
          [s2] "r" (src[2]),
          [s3] "r" (src[3]),
          [s4] "r" (src[4]),
          [s5] "r" (src[5]),
          [s6] "r" (src[6]),
          [s7] "r" (src[7]),
          [s8] "r" (src[8]),
          [s9] "r" (src[9]),
          [s10] "r" (src[10]),
          [s11] "r" (src[11]),
          [s12] "r" (src[12]),
          [s13] "r" (src[13]),
          [s14] "r" (src[14]),
          [s15] "r" (src[15]),
          [p] "b" (pred),
        : .{ .memory = true }
    );
    dst[0] = res.d0;
}
