const std = @import("std");

/// TMA (Tensor Memory Accelerator) Descriptor for SM90+.
/// This is a 128-byte (1024-bit) descriptor that encodes the tensor properties.
/// In CUDA, this corresponds to `CUtensorMap`.
pub const TmaDescriptor = struct {
    bytes: [128]u8 align(64),

    pub fn init() TmaDescriptor {
        return .{ .bytes = [_]u8{0} ** 128 };
    }

    /// Update the global memory address in the descriptor.
    /// Used for dynamic tiling where the descriptor is reused for different blocks.
    pub inline fn replace_addr(self: *TmaDescriptor, new_addr: anytype) void {
        const addr_val = @intFromPtr(new_addr);
        // The address is typically stored in the first 8 bytes
        std.mem.writeInt(u64, self.bytes[0..8], addr_val, .little);
    }
};

pub const tma_sm90 = struct {
    /// Prefetch TMA descriptor into L2 cache.
    pub inline fn prefetch_tma_descriptor(desc_ptr: *const TmaDescriptor) void {
        const ptr = @intFromPtr(desc_ptr);
        asm volatile ("cp.async.bulk.prefetch.L2.global [%[p]], 128;" : : [p] "l" (ptr) : "memory");
    }

    pub inline fn fence_view_async() void {
        asm volatile ("fence.view.async.shared::cluster;" ::: "memory");
    }
};
