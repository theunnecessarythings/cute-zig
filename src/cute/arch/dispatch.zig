const std = @import("std");

// AUTO-GENERATED PTX Dispatcher

// --- MMA ---
pub inline fn mma_f324_u322_u321_f324(comptime ptx: []const u8, d: *[4]f32, a: [2]u32, b: [1]u32, c: [4]f32) void {
    const Out = struct { d0: f32, d1: f32, d2: f32, d3: f32 };
    const res = asm volatile (ptx : [ret] "=f" (-> Out) :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [b0] "r" (b[0]), [c0] "f" (c[0]), [c1] "f" (c[1]), [c2] "f" (c[2]), [c3] "f" (c[3]));
    d[0] = res.d0;
    d[1] = res.d1;
    d[2] = res.d2;
    d[3] = res.d3;
}

pub inline fn mma_f324_u324_u322_f324(comptime ptx: []const u8, d: *[4]f32, a: [4]u32, b: [2]u32, c: [4]f32) void {
    const Out = struct { d0: f32, d1: f32, d2: f32, d3: f32 };
    const res = asm volatile (ptx : [ret] "=f" (-> Out) :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [a2] "r" (a[2]), [a3] "r" (a[3]), [b0] "r" (b[0]), [b1] "r" (b[1]), [c0] "f" (c[0]), [c1] "f" (c[1]), [c2] "f" (c[2]), [c3] "f" (c[3]));
    d[0] = res.d0;
    d[1] = res.d1;
    d[2] = res.d2;
    d[3] = res.d3;
}

pub inline fn mma_f328_u322_u322_f328(comptime ptx: []const u8, d: *[8]f32, a: [2]u32, b: [2]u32, c: [8]f32) void {
    const Out = struct { d0: f32, d1: f32, d2: f32, d3: f32, d4: f32, d5: f32, d6: f32, d7: f32 };
    const res = asm volatile (ptx : [ret] "=f" (-> Out) :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [b0] "r" (b[0]), [b1] "r" (b[1]), [c0] "f" (c[0]), [c1] "f" (c[1]), [c2] "f" (c[2]), [c3] "f" (c[3]), [c4] "f" (c[4]), [c5] "f" (c[5]), [c6] "f" (c[6]), [c7] "f" (c[7]));
    d[0] = res.d0;
    d[1] = res.d1;
    d[2] = res.d2;
    d[3] = res.d3;
    d[4] = res.d4;
    d[5] = res.d5;
    d[6] = res.d6;
    d[7] = res.d7;
}

pub inline fn mma_f642_f641_f641_f642(comptime ptx: []const u8, d: *[2]f64, a: [1]f64, b: [1]f64, c: [2]f64) void {
    const Out = struct { d0: f64, d1: f64 };
    const res = asm volatile (ptx : [ret] "=d" (-> Out) :
        [a0] "d" (a[0]), [b0] "d" (b[0]), [c0] "d" (c[0]), [c1] "d" (c[1]));
    d[0] = res.d0;
    d[1] = res.d1;
}

pub inline fn mma_f644_f642_f641_f644(comptime ptx: []const u8, d: *[4]f64, a: [2]f64, b: [1]f64, c: [4]f64) void {
    const Out = struct { d0: f64, d1: f64, d2: f64, d3: f64 };
    const res = asm volatile (ptx : [ret] "=d" (-> Out) :
        [a0] "d" (a[0]), [a1] "d" (a[1]), [b0] "d" (b[0]), [c0] "d" (c[0]), [c1] "d" (c[1]), [c2] "d" (c[2]), [c3] "d" (c[3]));
    d[0] = res.d0;
    d[1] = res.d1;
    d[2] = res.d2;
    d[3] = res.d3;
}

pub inline fn mma_f644_f644_f642_f644(comptime ptx: []const u8, d: *[4]f64, a: [4]f64, b: [2]f64, c: [4]f64) void {
    const Out = struct { d0: f64, d1: f64, d2: f64, d3: f64 };
    const res = asm volatile (ptx : [ret] "=d" (-> Out) :
        [a0] "d" (a[0]), [a1] "d" (a[1]), [a2] "d" (a[2]), [a3] "d" (a[3]), [b0] "d" (b[0]), [b1] "d" (b[1]), [c0] "d" (c[0]), [c1] "d" (c[1]), [c2] "d" (c[2]), [c3] "d" (c[3]));
    d[0] = res.d0;
    d[1] = res.d1;
    d[2] = res.d2;
    d[3] = res.d3;
}

pub inline fn mma_f644_f648_f644_f644(comptime ptx: []const u8, d: *[4]f64, a: [8]f64, b: [4]f64, c: [4]f64) void {
    const Out = struct { d0: f64, d1: f64, d2: f64, d3: f64 };
    const res = asm volatile (ptx : [ret] "=d" (-> Out) :
        [a0] "d" (a[0]), [a1] "d" (a[1]), [a2] "d" (a[2]), [a3] "d" (a[3]), [a4] "d" (a[4]), [a5] "d" (a[5]), [a6] "d" (a[6]), [a7] "d" (a[7]), [b0] "d" (b[0]), [b1] "d" (b[1]), [b2] "d" (b[2]), [b3] "d" (b[3]), [c0] "d" (c[0]), [c1] "d" (c[1]), [c2] "d" (c[2]), [c3] "d" (c[3]));
    d[0] = res.d0;
    d[1] = res.d1;
    d[2] = res.d2;
    d[3] = res.d3;
}

pub inline fn mma_i321_u321_u321_i321(comptime ptx: []const u8, d: *[1]i32, a: [1]u32, b: [1]u32, c: [1]i32) void {
    const Out = struct { d0: i32 };
    const res = asm volatile (ptx : [ret] "=r" (-> Out) :
        [a0] "r" (a[0]), [b0] "r" (b[0]), [c0] "r" (c[0]));
    d[0] = res.d0;
}

pub inline fn mma_u322_u321_u321_u322(comptime ptx: []const u8, d: *[2]u32, a: [1]u32, b: [1]u32, c: [2]u32) void {
    const Out = struct { d0: u32, d1: u32 };
    const res = asm volatile (ptx : [ret] "=r" (-> Out) :
        [a0] "r" (a[0]), [b0] "r" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]));
    d[0] = res.d0;
    d[1] = res.d1;
}

pub inline fn mma_u322_u322_u321_u322(comptime ptx: []const u8, d: *[2]u32, a: [2]u32, b: [1]u32, c: [2]u32) void {
    const Out = struct { d0: u32, d1: u32 };
    const res = asm volatile (ptx : [ret] "=r" (-> Out) :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [b0] "r" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]));
    d[0] = res.d0;
    d[1] = res.d1;
}

pub inline fn mma_u322_u324_u322_u322(comptime ptx: []const u8, d: *[2]u32, a: [4]u32, b: [2]u32, c: [2]u32) void {
    const Out = struct { d0: u32, d1: u32 };
    const res = asm volatile (ptx : [ret] "=r" (-> Out) :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [a2] "r" (a[2]), [a3] "r" (a[3]), [b0] "r" (b[0]), [b1] "r" (b[1]), [c0] "r" (c[0]), [c1] "r" (c[1]));
    d[0] = res.d0;
    d[1] = res.d1;
}

pub inline fn mma_u324_u322_u321_u324(comptime ptx: []const u8, d: *[4]u32, a: [2]u32, b: [1]u32, c: [4]u32) void {
    const Out = struct { d0: u32, d1: u32, d2: u32, d3: u32 };
    const res = asm volatile (ptx : [ret] "=r" (-> Out) :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [b0] "r" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]));
    d[0] = res.d0;
    d[1] = res.d1;
    d[2] = res.d2;
    d[3] = res.d3;
}

pub inline fn mma_u324_u322_u322_u324(comptime ptx: []const u8, d: *[4]u32, a: [2]u32, b: [2]u32, c: [4]u32) void {
    const Out = struct { d0: u32, d1: u32, d2: u32, d3: u32 };
    const res = asm volatile (ptx : [ret] "=r" (-> Out) :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [b0] "r" (b[0]), [b1] "r" (b[1]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]));
    d[0] = res.d0;
    d[1] = res.d1;
    d[2] = res.d2;
    d[3] = res.d3;
}

pub inline fn mma_u324_u324_u322_u324(comptime ptx: []const u8, d: *[4]u32, a: [4]u32, b: [2]u32, c: [4]u32) void {
    const Out = struct { d0: u32, d1: u32, d2: u32, d3: u32 };
    const res = asm volatile (ptx : [ret] "=r" (-> Out) :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [a2] "r" (a[2]), [a3] "r" (a[3]), [b0] "r" (b[0]), [b1] "r" (b[1]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]));
    d[0] = res.d0;
    d[1] = res.d1;
    d[2] = res.d2;
    d[3] = res.d3;
}

pub inline fn mma_void1_u321_u641_u321(comptime ptx: []const u8, d: anytype, a: [1]u32, b: [1]u64, c: [1]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "r" (a[0]), [b0] "l" (b[0]), [c0] "r" (c[0]));
}

pub inline fn mma_void1_u324_u641_f324(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [4]f32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [a2] "r" (a[2]), [a3] "r" (a[3]), [b0] "l" (b[0]), [c0] "f" (c[0]), [c1] "f" (c[1]), [c2] "f" (c[2]), [c3] "f" (c[3]));
}

pub inline fn mma_void1_u324_u641_f328(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [8]f32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [a2] "r" (a[2]), [a3] "r" (a[3]), [b0] "l" (b[0]), [c0] "f" (c[0]), [c1] "f" (c[1]), [c2] "f" (c[2]), [c3] "f" (c[3]), [c4] "f" (c[4]), [c5] "f" (c[5]), [c6] "f" (c[6]), [c7] "f" (c[7]));
}

pub inline fn mma_void1_u324_u641_f3212(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [12]f32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [a2] "r" (a[2]), [a3] "r" (a[3]), [b0] "l" (b[0]), [c0] "f" (c[0]), [c1] "f" (c[1]), [c2] "f" (c[2]), [c3] "f" (c[3]), [c4] "f" (c[4]), [c5] "f" (c[5]), [c6] "f" (c[6]), [c7] "f" (c[7]), [c8] "f" (c[8]), [c9] "f" (c[9]), [c10] "f" (c[10]), [c11] "f" (c[11]));
}

pub inline fn mma_void1_u324_u641_f3216(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [16]f32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [a2] "r" (a[2]), [a3] "r" (a[3]), [b0] "l" (b[0]), [c0] "f" (c[0]), [c1] "f" (c[1]), [c2] "f" (c[2]), [c3] "f" (c[3]), [c4] "f" (c[4]), [c5] "f" (c[5]), [c6] "f" (c[6]), [c7] "f" (c[7]), [c8] "f" (c[8]), [c9] "f" (c[9]), [c10] "f" (c[10]), [c11] "f" (c[11]), [c12] "f" (c[12]), [c13] "f" (c[13]), [c14] "f" (c[14]), [c15] "f" (c[15]));
}

pub inline fn mma_void1_u324_u641_f3220(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [20]f32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [a2] "r" (a[2]), [a3] "r" (a[3]), [b0] "l" (b[0]), [c0] "f" (c[0]), [c1] "f" (c[1]), [c2] "f" (c[2]), [c3] "f" (c[3]), [c4] "f" (c[4]), [c5] "f" (c[5]), [c6] "f" (c[6]), [c7] "f" (c[7]), [c8] "f" (c[8]), [c9] "f" (c[9]), [c10] "f" (c[10]), [c11] "f" (c[11]), [c12] "f" (c[12]), [c13] "f" (c[13]), [c14] "f" (c[14]), [c15] "f" (c[15]), [c16] "f" (c[16]), [c17] "f" (c[17]), [c18] "f" (c[18]), [c19] "f" (c[19]));
}

pub inline fn mma_void1_u324_u641_f3224(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [24]f32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [a2] "r" (a[2]), [a3] "r" (a[3]), [b0] "l" (b[0]), [c0] "f" (c[0]), [c1] "f" (c[1]), [c2] "f" (c[2]), [c3] "f" (c[3]), [c4] "f" (c[4]), [c5] "f" (c[5]), [c6] "f" (c[6]), [c7] "f" (c[7]), [c8] "f" (c[8]), [c9] "f" (c[9]), [c10] "f" (c[10]), [c11] "f" (c[11]), [c12] "f" (c[12]), [c13] "f" (c[13]), [c14] "f" (c[14]), [c15] "f" (c[15]), [c16] "f" (c[16]), [c17] "f" (c[17]), [c18] "f" (c[18]), [c19] "f" (c[19]), [c20] "f" (c[20]), [c21] "f" (c[21]), [c22] "f" (c[22]), [c23] "f" (c[23]));
}

pub inline fn mma_void1_u324_u641_u322(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [2]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [a2] "r" (a[2]), [a3] "r" (a[3]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]));
}

pub inline fn mma_void1_u324_u641_u324(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [4]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [a2] "r" (a[2]), [a3] "r" (a[3]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]));
}

pub inline fn mma_void1_u324_u641_u326(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [6]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [a2] "r" (a[2]), [a3] "r" (a[3]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]), [c4] "r" (c[4]), [c5] "r" (c[5]));
}

pub inline fn mma_void1_u324_u641_u328(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [8]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [a2] "r" (a[2]), [a3] "r" (a[3]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]), [c4] "r" (c[4]), [c5] "r" (c[5]), [c6] "r" (c[6]), [c7] "r" (c[7]));
}

pub inline fn mma_void1_u324_u641_u3210(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [10]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [a2] "r" (a[2]), [a3] "r" (a[3]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]), [c4] "r" (c[4]), [c5] "r" (c[5]), [c6] "r" (c[6]), [c7] "r" (c[7]), [c8] "r" (c[8]), [c9] "r" (c[9]));
}

pub inline fn mma_void1_u324_u641_u3212(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [12]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [a2] "r" (a[2]), [a3] "r" (a[3]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]), [c4] "r" (c[4]), [c5] "r" (c[5]), [c6] "r" (c[6]), [c7] "r" (c[7]), [c8] "r" (c[8]), [c9] "r" (c[9]), [c10] "r" (c[10]), [c11] "r" (c[11]));
}

pub inline fn mma_void1_u324_u641_u3214(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [14]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [a2] "r" (a[2]), [a3] "r" (a[3]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]), [c4] "r" (c[4]), [c5] "r" (c[5]), [c6] "r" (c[6]), [c7] "r" (c[7]), [c8] "r" (c[8]), [c9] "r" (c[9]), [c10] "r" (c[10]), [c11] "r" (c[11]), [c12] "r" (c[12]), [c13] "r" (c[13]));
}

pub inline fn mma_void1_u324_u641_u3216(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [16]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [a2] "r" (a[2]), [a3] "r" (a[3]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]), [c4] "r" (c[4]), [c5] "r" (c[5]), [c6] "r" (c[6]), [c7] "r" (c[7]), [c8] "r" (c[8]), [c9] "r" (c[9]), [c10] "r" (c[10]), [c11] "r" (c[11]), [c12] "r" (c[12]), [c13] "r" (c[13]), [c14] "r" (c[14]), [c15] "r" (c[15]));
}

pub inline fn mma_void1_u324_u641_u3218(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [18]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [a2] "r" (a[2]), [a3] "r" (a[3]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]), [c4] "r" (c[4]), [c5] "r" (c[5]), [c6] "r" (c[6]), [c7] "r" (c[7]), [c8] "r" (c[8]), [c9] "r" (c[9]), [c10] "r" (c[10]), [c11] "r" (c[11]), [c12] "r" (c[12]), [c13] "r" (c[13]), [c14] "r" (c[14]), [c15] "r" (c[15]), [c16] "r" (c[16]), [c17] "r" (c[17]));
}

pub inline fn mma_void1_u324_u641_u3220(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [20]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [a2] "r" (a[2]), [a3] "r" (a[3]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]), [c4] "r" (c[4]), [c5] "r" (c[5]), [c6] "r" (c[6]), [c7] "r" (c[7]), [c8] "r" (c[8]), [c9] "r" (c[9]), [c10] "r" (c[10]), [c11] "r" (c[11]), [c12] "r" (c[12]), [c13] "r" (c[13]), [c14] "r" (c[14]), [c15] "r" (c[15]), [c16] "r" (c[16]), [c17] "r" (c[17]), [c18] "r" (c[18]), [c19] "r" (c[19]));
}

pub inline fn mma_void1_u324_u641_u3222(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [22]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [a2] "r" (a[2]), [a3] "r" (a[3]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]), [c4] "r" (c[4]), [c5] "r" (c[5]), [c6] "r" (c[6]), [c7] "r" (c[7]), [c8] "r" (c[8]), [c9] "r" (c[9]), [c10] "r" (c[10]), [c11] "r" (c[11]), [c12] "r" (c[12]), [c13] "r" (c[13]), [c14] "r" (c[14]), [c15] "r" (c[15]), [c16] "r" (c[16]), [c17] "r" (c[17]), [c18] "r" (c[18]), [c19] "r" (c[19]), [c20] "r" (c[20]), [c21] "r" (c[21]));
}

pub inline fn mma_void1_u324_u641_u3224(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [24]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [a2] "r" (a[2]), [a3] "r" (a[3]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]), [c4] "r" (c[4]), [c5] "r" (c[5]), [c6] "r" (c[6]), [c7] "r" (c[7]), [c8] "r" (c[8]), [c9] "r" (c[9]), [c10] "r" (c[10]), [c11] "r" (c[11]), [c12] "r" (c[12]), [c13] "r" (c[13]), [c14] "r" (c[14]), [c15] "r" (c[15]), [c16] "r" (c[16]), [c17] "r" (c[17]), [c18] "r" (c[18]), [c19] "r" (c[19]), [c20] "r" (c[20]), [c21] "r" (c[21]), [c22] "r" (c[22]), [c23] "r" (c[23]));
}

pub inline fn mma_void1_u324_u641_u3226(comptime ptx: []const u8, d: anytype, a: [4]u32, b: [1]u64, c: [26]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "r" (a[0]), [a1] "r" (a[1]), [a2] "r" (a[2]), [a3] "r" (a[3]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]), [c4] "r" (c[4]), [c5] "r" (c[5]), [c6] "r" (c[6]), [c7] "r" (c[7]), [c8] "r" (c[8]), [c9] "r" (c[9]), [c10] "r" (c[10]), [c11] "r" (c[11]), [c12] "r" (c[12]), [c13] "r" (c[13]), [c14] "r" (c[14]), [c15] "r" (c[15]), [c16] "r" (c[16]), [c17] "r" (c[17]), [c18] "r" (c[18]), [c19] "r" (c[19]), [c20] "r" (c[20]), [c21] "r" (c[21]), [c22] "r" (c[22]), [c23] "r" (c[23]), [c24] "r" (c[24]), [c25] "r" (c[25]));
}

pub inline fn mma_void1_u641_u641_f324(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [4]f32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "l" (a[0]), [b0] "l" (b[0]), [c0] "f" (c[0]), [c1] "f" (c[1]), [c2] "f" (c[2]), [c3] "f" (c[3]));
}

pub inline fn mma_void1_u641_u641_f328(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [8]f32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "l" (a[0]), [b0] "l" (b[0]), [c0] "f" (c[0]), [c1] "f" (c[1]), [c2] "f" (c[2]), [c3] "f" (c[3]), [c4] "f" (c[4]), [c5] "f" (c[5]), [c6] "f" (c[6]), [c7] "f" (c[7]));
}

pub inline fn mma_void1_u641_u641_f3212(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [12]f32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "l" (a[0]), [b0] "l" (b[0]), [c0] "f" (c[0]), [c1] "f" (c[1]), [c2] "f" (c[2]), [c3] "f" (c[3]), [c4] "f" (c[4]), [c5] "f" (c[5]), [c6] "f" (c[6]), [c7] "f" (c[7]), [c8] "f" (c[8]), [c9] "f" (c[9]), [c10] "f" (c[10]), [c11] "f" (c[11]));
}

pub inline fn mma_void1_u641_u641_f3216(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [16]f32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "l" (a[0]), [b0] "l" (b[0]), [c0] "f" (c[0]), [c1] "f" (c[1]), [c2] "f" (c[2]), [c3] "f" (c[3]), [c4] "f" (c[4]), [c5] "f" (c[5]), [c6] "f" (c[6]), [c7] "f" (c[7]), [c8] "f" (c[8]), [c9] "f" (c[9]), [c10] "f" (c[10]), [c11] "f" (c[11]), [c12] "f" (c[12]), [c13] "f" (c[13]), [c14] "f" (c[14]), [c15] "f" (c[15]));
}

pub inline fn mma_void1_u641_u641_f3220(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [20]f32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "l" (a[0]), [b0] "l" (b[0]), [c0] "f" (c[0]), [c1] "f" (c[1]), [c2] "f" (c[2]), [c3] "f" (c[3]), [c4] "f" (c[4]), [c5] "f" (c[5]), [c6] "f" (c[6]), [c7] "f" (c[7]), [c8] "f" (c[8]), [c9] "f" (c[9]), [c10] "f" (c[10]), [c11] "f" (c[11]), [c12] "f" (c[12]), [c13] "f" (c[13]), [c14] "f" (c[14]), [c15] "f" (c[15]), [c16] "f" (c[16]), [c17] "f" (c[17]), [c18] "f" (c[18]), [c19] "f" (c[19]));
}

pub inline fn mma_void1_u641_u641_f3224(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [24]f32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "l" (a[0]), [b0] "l" (b[0]), [c0] "f" (c[0]), [c1] "f" (c[1]), [c2] "f" (c[2]), [c3] "f" (c[3]), [c4] "f" (c[4]), [c5] "f" (c[5]), [c6] "f" (c[6]), [c7] "f" (c[7]), [c8] "f" (c[8]), [c9] "f" (c[9]), [c10] "f" (c[10]), [c11] "f" (c[11]), [c12] "f" (c[12]), [c13] "f" (c[13]), [c14] "f" (c[14]), [c15] "f" (c[15]), [c16] "f" (c[16]), [c17] "f" (c[17]), [c18] "f" (c[18]), [c19] "f" (c[19]), [c20] "f" (c[20]), [c21] "f" (c[21]), [c22] "f" (c[22]), [c23] "f" (c[23]));
}

pub inline fn mma_void1_u641_u641_f3228(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [28]f32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "l" (a[0]), [b0] "l" (b[0]), [c0] "f" (c[0]), [c1] "f" (c[1]), [c2] "f" (c[2]), [c3] "f" (c[3]), [c4] "f" (c[4]), [c5] "f" (c[5]), [c6] "f" (c[6]), [c7] "f" (c[7]), [c8] "f" (c[8]), [c9] "f" (c[9]), [c10] "f" (c[10]), [c11] "f" (c[11]), [c12] "f" (c[12]), [c13] "f" (c[13]), [c14] "f" (c[14]), [c15] "f" (c[15]), [c16] "f" (c[16]), [c17] "f" (c[17]), [c18] "f" (c[18]), [c19] "f" (c[19]), [c20] "f" (c[20]), [c21] "f" (c[21]), [c22] "f" (c[22]), [c23] "f" (c[23]), [c24] "f" (c[24]), [c25] "f" (c[25]), [c26] "f" (c[26]), [c27] "f" (c[27]));
}

pub inline fn mma_void1_u641_u641_u321(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [1]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "l" (a[0]), [b0] "l" (b[0]), [c0] "r" (c[0]));
}

pub inline fn mma_void1_u641_u641_u322(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [2]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "l" (a[0]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]));
}

pub inline fn mma_void1_u641_u641_u324(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [4]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "l" (a[0]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]));
}

pub inline fn mma_void1_u641_u641_u326(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [6]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "l" (a[0]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]), [c4] "r" (c[4]), [c5] "r" (c[5]));
}

pub inline fn mma_void1_u641_u641_u328(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [8]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "l" (a[0]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]), [c4] "r" (c[4]), [c5] "r" (c[5]), [c6] "r" (c[6]), [c7] "r" (c[7]));
}

pub inline fn mma_void1_u641_u641_u3210(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [10]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "l" (a[0]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]), [c4] "r" (c[4]), [c5] "r" (c[5]), [c6] "r" (c[6]), [c7] "r" (c[7]), [c8] "r" (c[8]), [c9] "r" (c[9]));
}

pub inline fn mma_void1_u641_u641_u3212(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [12]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "l" (a[0]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]), [c4] "r" (c[4]), [c5] "r" (c[5]), [c6] "r" (c[6]), [c7] "r" (c[7]), [c8] "r" (c[8]), [c9] "r" (c[9]), [c10] "r" (c[10]), [c11] "r" (c[11]));
}

pub inline fn mma_void1_u641_u641_u3214(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [14]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "l" (a[0]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]), [c4] "r" (c[4]), [c5] "r" (c[5]), [c6] "r" (c[6]), [c7] "r" (c[7]), [c8] "r" (c[8]), [c9] "r" (c[9]), [c10] "r" (c[10]), [c11] "r" (c[11]), [c12] "r" (c[12]), [c13] "r" (c[13]));
}

pub inline fn mma_void1_u641_u641_u3216(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [16]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "l" (a[0]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]), [c4] "r" (c[4]), [c5] "r" (c[5]), [c6] "r" (c[6]), [c7] "r" (c[7]), [c8] "r" (c[8]), [c9] "r" (c[9]), [c10] "r" (c[10]), [c11] "r" (c[11]), [c12] "r" (c[12]), [c13] "r" (c[13]), [c14] "r" (c[14]), [c15] "r" (c[15]));
}

pub inline fn mma_void1_u641_u641_u3218(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [18]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "l" (a[0]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]), [c4] "r" (c[4]), [c5] "r" (c[5]), [c6] "r" (c[6]), [c7] "r" (c[7]), [c8] "r" (c[8]), [c9] "r" (c[9]), [c10] "r" (c[10]), [c11] "r" (c[11]), [c12] "r" (c[12]), [c13] "r" (c[13]), [c14] "r" (c[14]), [c15] "r" (c[15]), [c16] "r" (c[16]), [c17] "r" (c[17]));
}

pub inline fn mma_void1_u641_u641_u3220(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [20]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "l" (a[0]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]), [c4] "r" (c[4]), [c5] "r" (c[5]), [c6] "r" (c[6]), [c7] "r" (c[7]), [c8] "r" (c[8]), [c9] "r" (c[9]), [c10] "r" (c[10]), [c11] "r" (c[11]), [c12] "r" (c[12]), [c13] "r" (c[13]), [c14] "r" (c[14]), [c15] "r" (c[15]), [c16] "r" (c[16]), [c17] "r" (c[17]), [c18] "r" (c[18]), [c19] "r" (c[19]));
}

pub inline fn mma_void1_u641_u641_u3222(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [22]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "l" (a[0]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]), [c4] "r" (c[4]), [c5] "r" (c[5]), [c6] "r" (c[6]), [c7] "r" (c[7]), [c8] "r" (c[8]), [c9] "r" (c[9]), [c10] "r" (c[10]), [c11] "r" (c[11]), [c12] "r" (c[12]), [c13] "r" (c[13]), [c14] "r" (c[14]), [c15] "r" (c[15]), [c16] "r" (c[16]), [c17] "r" (c[17]), [c18] "r" (c[18]), [c19] "r" (c[19]), [c20] "r" (c[20]), [c21] "r" (c[21]));
}

pub inline fn mma_void1_u641_u641_u3224(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [24]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "l" (a[0]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]), [c4] "r" (c[4]), [c5] "r" (c[5]), [c6] "r" (c[6]), [c7] "r" (c[7]), [c8] "r" (c[8]), [c9] "r" (c[9]), [c10] "r" (c[10]), [c11] "r" (c[11]), [c12] "r" (c[12]), [c13] "r" (c[13]), [c14] "r" (c[14]), [c15] "r" (c[15]), [c16] "r" (c[16]), [c17] "r" (c[17]), [c18] "r" (c[18]), [c19] "r" (c[19]), [c20] "r" (c[20]), [c21] "r" (c[21]), [c22] "r" (c[22]), [c23] "r" (c[23]));
}

pub inline fn mma_void1_u641_u641_u3226(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [26]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "l" (a[0]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]), [c4] "r" (c[4]), [c5] "r" (c[5]), [c6] "r" (c[6]), [c7] "r" (c[7]), [c8] "r" (c[8]), [c9] "r" (c[9]), [c10] "r" (c[10]), [c11] "r" (c[11]), [c12] "r" (c[12]), [c13] "r" (c[13]), [c14] "r" (c[14]), [c15] "r" (c[15]), [c16] "r" (c[16]), [c17] "r" (c[17]), [c18] "r" (c[18]), [c19] "r" (c[19]), [c20] "r" (c[20]), [c21] "r" (c[21]), [c22] "r" (c[22]), [c23] "r" (c[23]), [c24] "r" (c[24]), [c25] "r" (c[25]));
}

pub inline fn mma_void1_u641_u641_u3228(comptime ptx: []const u8, d: anytype, a: [1]u64, b: [1]u64, c: [28]u32) void {
    _ = d;
    asm volatile (ptx : :
        [a0] "l" (a[0]), [b0] "l" (b[0]), [c0] "r" (c[0]), [c1] "r" (c[1]), [c2] "r" (c[2]), [c3] "r" (c[3]), [c4] "r" (c[4]), [c5] "r" (c[5]), [c6] "r" (c[6]), [c7] "r" (c[7]), [c8] "r" (c[8]), [c9] "r" (c[9]), [c10] "r" (c[10]), [c11] "r" (c[11]), [c12] "r" (c[12]), [c13] "r" (c[13]), [c14] "r" (c[14]), [c15] "r" (c[15]), [c16] "r" (c[16]), [c17] "r" (c[17]), [c18] "r" (c[18]), [c19] "r" (c[19]), [c20] "r" (c[20]), [c21] "r" (c[21]), [c22] "r" (c[22]), [c23] "r" (c[23]), [c24] "r" (c[24]), [c25] "r" (c[25]), [c26] "r" (c[26]), [c27] "r" (c[27]));
}

// --- Copy (Predicated) ---
pub inline fn copy_u1281_u321(comptime ptx: []const u8, src: [1]u128, dst: *[1]u32, pred: bool) void {
    const Out = struct { d0: u32 };
    const res = asm volatile ("@%[p] " ++ ptx : [ret] "=r" (-> Out) :
        [s0] "r" (src[0]), [p] "b" (pred) : "memory");
    dst[0] = res.d0;
}

pub inline fn copy_u1281_u322(comptime ptx: []const u8, src: [1]u128, dst: *[2]u32, pred: bool) void {
    const Out = struct { d0: u32, d1: u32 };
    const res = asm volatile ("@%[p] " ++ ptx : [ret] "=r" (-> Out) :
        [s0] "r" (src[0]), [p] "b" (pred) : "memory");
    dst[0] = res.d0;
    dst[1] = res.d1;
}

pub inline fn copy_u1281_u324(comptime ptx: []const u8, src: [1]u128, dst: *[4]u32, pred: bool) void {
    const Out = struct { d0: u32, d1: u32, d2: u32, d3: u32 };
    const res = asm volatile ("@%[p] " ++ ptx : [ret] "=r" (-> Out) :
        [s0] "r" (src[0]), [p] "b" (pred) : "memory");
    dst[0] = res.d0;
    dst[1] = res.d1;
    dst[2] = res.d2;
    dst[3] = res.d3;
}

pub inline fn copy_u321_u1281(comptime ptx: []const u8, src: [1]u32, dst: *[1]u128, pred: bool) void {
    const Out = struct { d0: u128 };
    const res = asm volatile ("@%[p] " ++ ptx : [ret] "=r" (-> Out) :
        [s0] "r" (src[0]), [p] "b" (pred) : "memory");
    dst[0] = res.d0;
}

pub inline fn copy_u321_u321(comptime ptx: []const u8, src: [1]u32, dst: *[1]u32, pred: bool) void {
    const Out = struct { d0: u32 };
    const res = asm volatile ("@%[p] " ++ ptx : [ret] "=r" (-> Out) :
        [s0] "r" (src[0]), [p] "b" (pred) : "memory");
    dst[0] = res.d0;
}

pub inline fn copy_u321_u322(comptime ptx: []const u8, src: [1]u32, dst: *[2]u32, pred: bool) void {
    const Out = struct { d0: u32, d1: u32 };
    const res = asm volatile ("@%[p] " ++ ptx : [ret] "=r" (-> Out) :
        [s0] "r" (src[0]), [p] "b" (pred) : "memory");
    dst[0] = res.d0;
    dst[1] = res.d1;
}

pub inline fn copy_u321_u324(comptime ptx: []const u8, src: [1]u32, dst: *[4]u32, pred: bool) void {
    const Out = struct { d0: u32, d1: u32, d2: u32, d3: u32 };
    const res = asm volatile ("@%[p] " ++ ptx : [ret] "=r" (-> Out) :
        [s0] "r" (src[0]), [p] "b" (pred) : "memory");
    dst[0] = res.d0;
    dst[1] = res.d1;
    dst[2] = res.d2;
    dst[3] = res.d3;
}

pub inline fn copy_u321_u328(comptime ptx: []const u8, src: [1]u32, dst: *[8]u32, pred: bool) void {
    const Out = struct { d0: u32, d1: u32, d2: u32, d3: u32, d4: u32, d5: u32, d6: u32, d7: u32 };
    const res = asm volatile ("@%[p] " ++ ptx : [ret] "=r" (-> Out) :
        [s0] "r" (src[0]), [p] "b" (pred) : "memory");
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
    const res = asm volatile ("@%[p] " ++ ptx : [ret] "=r" (-> Out) :
        [s0] "r" (src[0]), [p] "b" (pred) : "memory");
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
    const res = asm volatile ("@%[p] " ++ ptx : [ret] "=r" (-> Out) :
        [s0] "r" (src[0]), [s1] "r" (src[1]), [p] "b" (pred) : "memory");
    dst[0] = res.d0;
}

pub inline fn copy_u322_u321(comptime ptx: []const u8, src: [2]u32, dst: *[1]u32, pred: bool) void {
    const Out = struct { d0: u32 };
    const res = asm volatile ("@%[p] " ++ ptx : [ret] "=r" (-> Out) :
        [s0] "r" (src[0]), [s1] "r" (src[1]), [p] "b" (pred) : "memory");
    dst[0] = res.d0;
}

pub inline fn copy_u324_u1281(comptime ptx: []const u8, src: [4]u32, dst: *[1]u128, pred: bool) void {
    const Out = struct { d0: u128 };
    const res = asm volatile ("@%[p] " ++ ptx : [ret] "=r" (-> Out) :
        [s0] "r" (src[0]), [s1] "r" (src[1]), [s2] "r" (src[2]), [s3] "r" (src[3]), [p] "b" (pred) : "memory");
    dst[0] = res.d0;
}

pub inline fn copy_u324_u321(comptime ptx: []const u8, src: [4]u32, dst: *[1]u32, pred: bool) void {
    const Out = struct { d0: u32 };
    const res = asm volatile ("@%[p] " ++ ptx : [ret] "=r" (-> Out) :
        [s0] "r" (src[0]), [s1] "r" (src[1]), [s2] "r" (src[2]), [s3] "r" (src[3]), [p] "b" (pred) : "memory");
    dst[0] = res.d0;
}

pub inline fn copy_u328_u321(comptime ptx: []const u8, src: [8]u32, dst: *[1]u32, pred: bool) void {
    const Out = struct { d0: u32 };
    const res = asm volatile ("@%[p] " ++ ptx : [ret] "=r" (-> Out) :
        [s0] "r" (src[0]), [s1] "r" (src[1]), [s2] "r" (src[2]), [s3] "r" (src[3]), [s4] "r" (src[4]), [s5] "r" (src[5]), [s6] "r" (src[6]), [s7] "r" (src[7]), [p] "b" (pred) : "memory");
    dst[0] = res.d0;
}

pub inline fn copy_u3216_u321(comptime ptx: []const u8, src: [16]u32, dst: *[1]u32, pred: bool) void {
    const Out = struct { d0: u32 };
    const res = asm volatile ("@%[p] " ++ ptx : [ret] "=r" (-> Out) :
        [s0] "r" (src[0]), [s1] "r" (src[1]), [s2] "r" (src[2]), [s3] "r" (src[3]), [s4] "r" (src[4]), [s5] "r" (src[5]), [s6] "r" (src[6]), [s7] "r" (src[7]), [s8] "r" (src[8]), [s9] "r" (src[9]), [s10] "r" (src[10]), [s11] "r" (src[11]), [s12] "r" (src[12]), [s13] "r" (src[13]), [s14] "r" (src[14]), [s15] "r" (src[15]), [p] "b" (pred) : "memory");
    dst[0] = res.d0;
}
