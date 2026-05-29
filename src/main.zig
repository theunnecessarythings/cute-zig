const std = @import("std");
const cute = @import("cute");

pub fn main() !void {
    std.log.info("CuTe-Zig Testing - Phase 3: Algorithms & Swizzling", .{});

    // 1. Allocate backing arrays
    var src_data: [16]i32 = undefined;
    var dst_data: [16]i32 = undefined;
    
    // 2. Create Layouts
    // A simple 4x4 layout
    const shape = .{ @as(usize, 4), @as(usize, 4) };
    const stride = .{ @as(isize, 1), @as(isize, 4) };
    const base_layout = cute.layout.make_layout(shape, stride);
    
    // Create a Swizzle Layout wrapper!
    // B=2, M=0, S=2: Extracts 2 bits from base 0 and XORs them into base 2. Bijective!
    const my_swizzle = cute.swizzle.Swizzle(2, 0, 2){};
    const swizzle_layout = cute.swizzle.make_swizzle_layout(base_layout, my_swizzle);

    // 3. Create Tensors
    var src_tensor = cute.tensor.make_tensor(@as([*]i32, &src_data), base_layout);
    var dst_tensor = cute.tensor.make_tensor(@as([*]i32, &dst_data), swizzle_layout);

    // 4. Test Algorithms
    std.log.info("Testing `fill` algorithm...", .{});
    cute.algorithm.fill(src_tensor, 42); // Fill src with 42
    
    // Modify one specific element
    src_tensor.set(.{ @as(usize, 1), @as(usize, 2) }, 99); 
    
    std.log.info("Testing `copy` algorithm (base -> swizzle)...", .{});
    cute.algorithm.copy(src_tensor, dst_tensor);
    
    // 5. Verify 
    // The logical element at (1, 2) should be 99 in both tensors.
    const val_src = src_tensor.get(.{ @as(usize, 1), @as(usize, 2) });
    const val_dst = dst_tensor.get(.{ @as(usize, 1), @as(usize, 2) });
    
    std.log.info("src(1, 2) = {} (expected 99)", .{val_src});
    std.log.info("dst(1, 2) = {} (expected 99)", .{val_dst});
    
    // But they map to DIFFERENT physical addresses due to swizzling!
    const ptr_src = src_tensor.map(.{ @as(usize, 1), @as(usize, 2) });
    const ptr_dst = dst_tensor.map(.{ @as(usize, 1), @as(usize, 2) });
    
    std.log.info("src mapped offset: {} (1*1 + 2*4 = 9)", .{ptr_src});
    std.log.info("dst mapped offset: {} (swizzled!)", .{ptr_dst});
    std.log.info("Underlying raw dst memory at index 9: {}", .{dst_data[9]}); // Should be 42 (from fill), not 99, because 99 is swizzled!
    std.log.info("Underlying raw dst memory at swizzled index {}: {}", .{ptr_dst, dst_data[ptr_dst]}); // Should be 99

    // Test hierarchical layout
    const h_shape = .{ .{ @as(usize, 2), @as(usize, 2) }, @as(usize, 2) };
    const h_stride = .{ .{ @as(isize, 1), @as(isize, 2) }, @as(isize, 4) };
    const h_layout = cute.layout.make_layout(h_shape, h_stride);
    cute.layout.print_layout(h_layout);
    std.log.info("Hierarchical Layout cosize: {}", .{h_layout.cosize()});
    std.log.info("Hierarchical Layout size: {}", .{h_layout.size()});
    std.log.info("Hierarchical logical 0 -> {}", .{h_layout.map_1d(0)});
    std.log.info("Hierarchical logical 3 -> {}", .{h_layout.map_1d(3)});
    std.log.info("Hierarchical logical 7 -> {}", .{h_layout.map_1d(7)});

    // 6. New Algorithms
    std.log.info("Testing `transform` algorithm (square values)...", .{});
    const Square = struct {
        fn apply(x: i32) i32 { return x * x; }
    };
    cute.algorithm.transform(src_tensor, dst_tensor, Square.apply);
    std.log.info("src(1, 2) = {}, dst(1, 2) = {} (expected {})", .{
        src_tensor.get(.{ @as(usize, 1), @as(usize, 2) }),
        dst_tensor.get(.{ @as(usize, 1), @as(usize, 2) }),
        src_tensor.get(.{ @as(usize, 1), @as(usize, 2) }) * src_tensor.get(.{ @as(usize, 1), @as(usize, 2) }),
    });

    std.log.info("Testing `for_each` algorithm...", .{});
    const Printer = struct {
        fn apply(x: i32) void { _ = x; } // Dummy for demonstration
    };
    cute.algorithm.for_each(dst_tensor, Printer.apply);

    // 7. High-Level Grid Partitioning (TiledMMA)
    std.log.info("--- Phase 8: High-Level Grid Wrappers ---", .{});
    const arch_db = cute.arch.db;
    const atom_db = cute.atom.db;
    
    // Instantiate an SM80 MMA Atom (using automated database)
    const mma_op = arch_db.mma_sm80.SM80_16x8x16_F16F16F16F16_TN;
    const mma_traits = atom_db.mma_traits_sm80.SM80_16x8x16_F16F16F16F16_TN;
    const MyAtom = cute.atom.builders.MmaAtom(mma_op, mma_traits);
    
    // Create a TiledMMA wrapper (1x1 tiled for simple demonstration)
    const MyTiledMMA = cute.atom.builders.TiledMMA(MyAtom, .{ @as(usize, 1), @as(usize, 1), @as(usize, 1) });
    const tiled_mma = MyTiledMMA{};
    
    // Get thread 0's slice
    const thr_mma = tiled_mma.get_thread_slice(0);
    
    // Partition a global tensor for thread 0
    const A = src_tensor;
    const thr_A = thr_mma.partition_A(A);
    
    std.log.info("Thread 0 partition of A:", .{});
    cute.layout.print_layout(thr_A.layout);
    cute.tensor.print_tensor(thr_A);
}
