const std = @import("std");
const cute = @import("cute");

test "layout parity baseline with CuTe fixture" {
    const col_major = cute.layout.make_layout(
        .{ @as(usize, 4), @as(usize, 4) },
        .{ @as(isize, 1), @as(isize, 4) },
    );
    const row_major = cute.layout.make_layout(
        .{ @as(usize, 4), @as(usize, 4) },
        .{ @as(isize, 4), @as(isize, 1) },
    );
    const nested = cute.layout.make_layout(
        .{ .{ @as(usize, 2), @as(usize, 2) }, @as(usize, 2) },
        .{ .{ @as(isize, 1), @as(isize, 2) }, @as(isize, 4) },
    );

    try std.testing.expectEqual(@as(usize, 9), col_major.map(.{ @as(usize, 1), @as(usize, 2) }));
    try std.testing.expectEqual(@as(usize, 6), row_major.map(.{ @as(usize, 1), @as(usize, 2) }));
    try std.testing.expectEqual(@as(usize, 16), col_major.size());
    try std.testing.expectEqual(@as(usize, 16), col_major.cosize());
    try std.testing.expectEqual(@as(usize, 8), nested.size());
    try std.testing.expectEqual(@as(usize, 0), nested.map_1d(0));
    try std.testing.expectEqual(@as(usize, 3), nested.map_1d(3));
    try std.testing.expectEqual(@as(usize, 7), nested.map_1d(7));
}

test "root exports atom module" {
    try std.testing.expect(@hasDecl(cute, "atom"));
}

test "static integer parity baseline with CuTe fixture" {
    const n = cute.numeric;
    const shape = .{ n._2, n._4 };
    const stride = .{ n._1, n._2 };
    const coord = .{ n._1, n._2 };

    try std.testing.expect(comptime n.is_static_int(@TypeOf(n._4)));
    try std.testing.expect(comptime n.is_constant(4, @TypeOf(n._4)));
    try std.testing.expectEqual(@as(comptime_int, 7), n.value(n.add(n._3, n._4)));
    try std.testing.expectEqual(@as(comptime_int, 12), n.value(n.mul(n._3, n._4)));
    try std.testing.expectEqual(@as(usize, 8), cute.int_tuple.size(shape));
    try std.testing.expectEqual(@as(usize, 5), cute.int_tuple.inner_product(coord, stride));
}

test "tuple algorithm parity baseline with CuTe fixture" {
    const n = cute.numeric;
    const it = cute.int_tuple;

    const tuple_sum = it.add(.{ n._1, n._2 }, .{ n._3, n._4 });
    try std.testing.expectEqual(@as(comptime_int, 4), n.value(tuple_sum[0]));
    try std.testing.expectEqual(@as(comptime_int, 6), n.value(tuple_sum[1]));

    const tuple_flat = it.flatten(.{ n._2, .{ n._3, n._4 } });
    try std.testing.expectEqual(@as(usize, 3), it.rank(@TypeOf(tuple_flat)));
    try std.testing.expectEqual(@as(comptime_int, 4), n.value(tuple_flat[2]));

    const tuple_take = it.take(1, 3, .{ n._1, n._2, n._3 });
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(tuple_take[0]));
    try std.testing.expectEqual(@as(comptime_int, 3), n.value(tuple_take[1]));
}

test "integer tuple division and compatibility parity baseline" {
    const n = cute.numeric;
    const it = cute.int_tuple;

    try std.testing.expectEqual(@as(comptime_int, 3), n.value(it.ceil_div(n._5, n._2)));
    try std.testing.expectEqual(@as(comptime_int, 8), n.value(it.round_up(n._5, n._4)));

    const div_shape = it.shape_div(.{ n._4, n._5, n._6 }, n.C(40){});
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(div_shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(div_shape[1]));
    try std.testing.expectEqual(@as(comptime_int, 3), n.value(div_shape[2]));

    try std.testing.expect(it.compatible(.{ n._2, n._3 }, .{ n._2, n._3 }));
    try std.testing.expect(it.weakly_congruent(.{ n._2, n._3 }, .{ n._4, n._5 }));
}

test "shape profile and divisibility parity baseline" {
    const n = cute.numeric;
    const it = cute.int_tuple;
    const nested = .{ n._2, .{ n._3, n._4 } };

    try std.testing.expectEqual(@as(usize, 9), it.sum(nested));

    const product_each_tuple = it.product_each(nested);
    try std.testing.expectEqual(@as(usize, 2), product_each_tuple[0]);
    try std.testing.expectEqual(@as(usize, 12), product_each_tuple[1]);

    try std.testing.expect(it.congruent(.{ n._2, .{n._3} }, .{ n._4, .{n._5} }));
    try std.testing.expect(!it.congruent(.{ n._2, .{n._3} }, .{ n._4, n._5 }));
    try std.testing.expect(it.evenly_divides(.{ n._8, n._16 }, .{ n._4, n._8 }));
    try std.testing.expect(it.evenly_divides(.{ n._8, n._16 }, n._4));
}

test "layout coordinate conversion parity baseline" {
    const nested = cute.layout.make_layout(
        .{ .{ @as(usize, 2), @as(usize, 2) }, @as(usize, 2) },
        .{ .{ @as(isize, 1), @as(isize, 2) }, @as(isize, 4) },
    );

    const hier_coord = nested.get_hier_coord(7);
    try std.testing.expectEqual(@as(usize, 1), hier_coord[0][0]);
    try std.testing.expectEqual(@as(usize, 1), hier_coord[0][1]);
    try std.testing.expectEqual(@as(usize, 1), hier_coord[1]);

    const flat_coord = nested.get_flat_coord(7);
    try std.testing.expectEqual(@as(usize, 3), flat_coord[0]);
    try std.testing.expectEqual(@as(usize, 1), flat_coord[1]);
    try std.testing.expectEqual(@as(usize, 7), nested.get_1d_coord(7));
    try std.testing.expectEqual(@as(usize, 7), cute.layout.crd2idx(hier_coord, nested.shape, nested.stride));
}

test "layout coshape and cosize parity baseline" {
    const row_major = cute.layout.make_layout(
        .{ @as(usize, 4), @as(usize, 4) },
        .{ @as(isize, 4), @as(isize, 1) },
    );
    const nested = cute.layout.make_layout(
        .{ .{ @as(usize, 2), @as(usize, 2) }, @as(usize, 2) },
        .{ .{ @as(isize, 1), @as(isize, 2) }, @as(isize, 4) },
    );

    try std.testing.expectEqual(@as(usize, 16), cute.layout.coshape(row_major));
    try std.testing.expectEqual(@as(usize, 16), cute.layout.cosize(row_major));
    try std.testing.expectEqual(@as(usize, 8), cute.layout.coshape(nested));
    try std.testing.expectEqual(@as(usize, 8), cute.layout.cosize(nested));
}

test "layout top-level underscore slicing parity baseline" {
    const u = cute.underscore._;
    const row_major = cute.layout.make_layout(
        .{ @as(usize, 4), @as(usize, 4) },
        .{ @as(isize, 4), @as(isize, 1) },
    );
    const col_major = cute.layout.make_layout(
        .{ @as(usize, 4), @as(usize, 4) },
        .{ @as(isize, 1), @as(isize, 4) },
    );

    const row_slice_result = row_major.slice_and_offset(.{ u, @as(usize, 2) });
    try std.testing.expectEqual(@as(usize, 4), row_slice_result.layout.shape[0]);
    try std.testing.expectEqual(@as(isize, 4), row_slice_result.layout.stride[0]);
    try std.testing.expectEqual(@as(usize, 2), row_slice_result.offset);

    const col_slice_result = cute.layout.slice_and_offset(.{ @as(usize, 1), u }, col_major);
    try std.testing.expectEqual(@as(usize, 4), col_slice_result.layout.shape[0]);
    try std.testing.expectEqual(@as(isize, 4), col_slice_result.layout.stride[0]);
    try std.testing.expectEqual(@as(usize, 1), col_slice_result.offset);
}

test "layout nested slicing and dice parity baseline" {
    const u = cute.underscore._;
    const nested = cute.layout.make_layout(
        .{ .{ @as(usize, 2), @as(usize, 2) }, @as(usize, 2) },
        .{ .{ @as(isize, 1), @as(isize, 2) }, @as(isize, 4) },
    );

    const result = nested.slice_and_offset(.{ .{ u, @as(usize, 1) }, u });
    try std.testing.expectEqual(@as(usize, 2), result.layout.shape[0][0]);
    try std.testing.expectEqual(@as(usize, 2), result.layout.shape[1]);
    try std.testing.expectEqual(@as(isize, 1), result.layout.stride[0][0]);
    try std.testing.expectEqual(@as(isize, 4), result.layout.stride[1]);
    try std.testing.expectEqual(@as(usize, 2), result.offset);

    const diced = nested.dice(.{ .{ u, @as(usize, 1) }, u });
    try std.testing.expectEqual(@as(usize, 2), diced.shape[0][0]);
    try std.testing.expectEqual(@as(isize, 2), diced.stride[0][0]);
}

test "layout take select and flatten parity baseline" {
    const n = cute.numeric;
    const layout3 = cute.layout.make_layout(
        .{ n._2, n._3, n._4 },
        .{ n.C(12){}, n._4, n._1 },
    );
    const nested = cute.layout.make_layout(
        .{ .{ n._2, n._2 }, n._2 },
        .{ .{ n._1, n._2 }, n._4 },
    );

    const taken = cute.layout.take(1, 3, layout3);
    try std.testing.expectEqual(@as(comptime_int, 3), n.value(taken.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 4), n.value(taken.shape[1]));
    try std.testing.expectEqual(@as(comptime_int, 4), n.value(taken.stride[0]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(taken.stride[1]));

    const selected = cute.layout.select2(2, 0, layout3);
    try std.testing.expectEqual(@as(comptime_int, 4), n.value(selected.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(selected.shape[1]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(selected.stride[0]));
    try std.testing.expectEqual(@as(comptime_int, 12), n.value(selected.stride[1]));

    const flat = cute.layout.flatten_layout(nested);
    try std.testing.expectEqual(@as(usize, 3), cute.int_tuple.rank(@TypeOf(flat.shape)));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(flat.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(flat.shape[1]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(flat.shape[2]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(flat.stride[0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(flat.stride[1]));
    try std.testing.expectEqual(@as(comptime_int, 4), n.value(flat.stride[2]));
}

test "compact layout constructor parity baseline" {
    const n = cute.numeric;
    const shp = .{ n._2, n._3, n._4 };

    const left = cute.layout.make_layout_left(shp);
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(left.stride[0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(left.stride[1]));
    try std.testing.expectEqual(@as(comptime_int, 6), n.value(left.stride[2]));

    const right = cute.layout.make_layout_right(shp);
    try std.testing.expectEqual(@as(comptime_int, 12), n.value(right.stride[0]));
    try std.testing.expectEqual(@as(comptime_int, 4), n.value(right.stride[1]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(right.stride[2]));
}

test "ordered compact layout parity baseline" {
    const n = cute.numeric;
    const ordered_static = cute.layout.make_ordered_layout(
        .{ n._2, n._2, n._2, n._2 },
        .{ n._0, n._2, n._3, n._1 },
    );
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(ordered_static.stride[0]));
    try std.testing.expectEqual(@as(comptime_int, 4), n.value(ordered_static.stride[1]));
    try std.testing.expectEqual(@as(comptime_int, 8), n.value(ordered_static.stride[2]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(ordered_static.stride[3]));

    const ordered_dynamic = cute.layout.make_ordered_layout(
        .{ @as(usize, 2), @as(usize, 3), @as(usize, 4), @as(usize, 5) },
        .{ n._2, @as(usize, 67), @as(usize, 42), n.C(50){} },
    );
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(ordered_dynamic.stride[0]));
    try std.testing.expectEqual(@as(usize, 10), ordered_dynamic.stride[1]);
    try std.testing.expectEqual(@as(usize, 30), ordered_dynamic.stride[2]);
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(ordered_dynamic.stride[3]));
}

test "make layout like preserves static zero strides parity baseline" {
    const n = cute.numeric;
    const input = cute.layout.make_layout(
        .{ @as(usize, 2), @as(usize, 3), @as(usize, 4), @as(usize, 5) },
        .{ n._0, @as(usize, 42), n._1, n._0 },
    );
    const like = cute.layout.make_layout_like(input);

    try std.testing.expectEqual(@as(comptime_int, 0), n.value(like.stride[0]));
    try std.testing.expectEqual(@as(usize, 4), like.stride[1]);
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(like.stride[2]));
    try std.testing.expectEqual(@as(comptime_int, 0), n.value(like.stride[3]));
}

test "layout coalesce parity baseline" {
    const n = cute.numeric;
    const col = cute.layout.make_layout(
        .{ n._2, n._3, n._4 },
        .{ n._1, n._2, n._6 },
    );
    const zero = cute.layout.make_layout(
        .{ n._4, n._1 },
        .{ n._1, n._0 },
    );
    const nested = cute.layout.make_layout(
        .{ .{ n._2, n._2 }, n._2 },
        .{ .{ n._1, n._2 }, n._4 },
    );
    const dynamic_nested = cute.layout.make_layout(
        .{ .{ @as(usize, 2), @as(usize, 2) }, @as(usize, 2) },
        .{ .{ @as(isize, 1), @as(isize, 2) }, @as(isize, 4) },
    );

    const coalesced_col = cute.layout.coalesce(col);
    try std.testing.expectEqual(@as(usize, 1), cute.int_tuple.rank(@TypeOf(coalesced_col.shape)));
    try std.testing.expectEqual(@as(comptime_int, 24), n.value(coalesced_col.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(coalesced_col.stride[0]));

    const coalesced_zero = cute.layout.coalesce(zero);
    try std.testing.expectEqual(@as(usize, 1), cute.int_tuple.rank(@TypeOf(coalesced_zero.shape)));
    try std.testing.expectEqual(@as(comptime_int, 4), n.value(coalesced_zero.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(coalesced_zero.stride[0]));

    const coalesced_nested = cute.layout.coalesce(nested);
    try std.testing.expectEqual(@as(usize, 1), cute.int_tuple.rank(@TypeOf(coalesced_nested.shape)));
    try std.testing.expectEqual(@as(comptime_int, 8), n.value(coalesced_nested.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(coalesced_nested.stride[0]));

    const coalesced_dynamic_nested = cute.layout.coalesce(dynamic_nested);
    try std.testing.expectEqual(@as(usize, 3), cute.int_tuple.rank(@TypeOf(coalesced_dynamic_nested.shape)));
    try std.testing.expectEqual(@as(usize, 2), coalesced_dynamic_nested.shape[0]);
    try std.testing.expectEqual(@as(usize, 2), coalesced_dynamic_nested.shape[1]);
    try std.testing.expectEqual(@as(usize, 2), coalesced_dynamic_nested.shape[2]);
    try std.testing.expectEqual(@as(isize, 1), coalesced_dynamic_nested.stride[0]);
    try std.testing.expectEqual(@as(isize, 2), coalesced_dynamic_nested.stride[1]);
    try std.testing.expectEqual(@as(isize, 4), coalesced_dynamic_nested.stride[2]);
}

test "layout filter zero strides parity baseline" {
    const n = cute.numeric;
    const input = cute.layout.make_layout(
        .{ @as(usize, 2), @as(usize, 3), @as(usize, 4), @as(usize, 5) },
        .{ n._0, @as(usize, 42), n._1, n._0 },
    );

    const filtered_zeros = cute.layout.filter_zeros(input);
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(filtered_zeros.shape[0]));
    try std.testing.expectEqual(@as(usize, 3), filtered_zeros.shape[1]);
    try std.testing.expectEqual(@as(usize, 4), filtered_zeros.shape[2]);
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(filtered_zeros.shape[3]));
    try std.testing.expectEqual(@as(comptime_int, 0), n.value(filtered_zeros.stride[0]));
    try std.testing.expectEqual(@as(usize, 42), filtered_zeros.stride[1]);
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(filtered_zeros.stride[2]));
    try std.testing.expectEqual(@as(comptime_int, 0), n.value(filtered_zeros.stride[3]));

    const filtered = cute.layout.filter(input);
    try std.testing.expectEqual(@as(usize, 2), cute.int_tuple.rank(@TypeOf(filtered.shape)));
    try std.testing.expectEqual(@as(usize, 3), filtered.shape[0]);
    try std.testing.expectEqual(@as(usize, 4), filtered.shape[1]);
    try std.testing.expectEqual(@as(usize, 42), filtered.stride[0]);
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(filtered.stride[1]));
}

test "layout complement static parity baseline" {
    const n = cute.numeric;

    const unit = cute.layout.make_layout(n._1, n._0);
    const complement_unit = cute.layout.complement(unit, n._5);
    try std.testing.expectEqual(@as(comptime_int, 5), n.value(complement_unit.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(complement_unit.stride[0]));

    const stride2 = cute.layout.make_layout(n._4, n._2);
    const complement_stride2 = cute.layout.complement(stride2, n._16);
    try std.testing.expectEqual(@as(usize, 2), cute.int_tuple.rank(@TypeOf(complement_stride2.shape)));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(complement_stride2.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(complement_stride2.shape[1]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(complement_stride2.stride[0]));
    try std.testing.expectEqual(@as(comptime_int, 8), n.value(complement_stride2.stride[1]));

    const rank2 = cute.layout.make_layout(.{ n._2, n._4 }, .{ n._1, n._6 });
    const complement_rank2 = cute.layout.complement_auto(rank2);
    try std.testing.expectEqual(@as(usize, 1), cute.int_tuple.rank(@TypeOf(complement_rank2.shape)));
    try std.testing.expectEqual(@as(comptime_int, 3), n.value(complement_rank2.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(complement_rank2.stride[0]));

    const rank3 = cute.layout.make_layout(.{ n._2, n._4, n._8 }, .{ n._8, n._1, n._64 });
    const complement_rank3 = cute.layout.complement_auto(rank3);
    try std.testing.expectEqual(@as(usize, 2), cute.int_tuple.rank(@TypeOf(complement_rank3.shape)));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(complement_rank3.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 4), n.value(complement_rank3.shape[1]));
    try std.testing.expectEqual(@as(comptime_int, 4), n.value(complement_rank3.stride[0]));
    try std.testing.expectEqual(@as(comptime_int, 16), n.value(complement_rank3.stride[1]));

    const rank3_zero = cute.layout.make_layout(.{ n._2, n._4, n._8 }, .{ n._8, n._1, n._0 });
    const complement_rank3_zero = cute.layout.complement(rank3_zero, n.C(460){});
    try std.testing.expectEqual(@as(usize, 2), cute.int_tuple.rank(@TypeOf(complement_rank3_zero.shape)));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(complement_rank3_zero.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 29), n.value(complement_rank3_zero.shape[1]));
    try std.testing.expectEqual(@as(comptime_int, 4), n.value(complement_rank3_zero.stride[0]));
    try std.testing.expectEqual(@as(comptime_int, 16), n.value(complement_rank3_zero.stride[1]));
}

test "layout logical divide scalar parity baseline" {
    const n = cute.numeric;

    const layout = cute.layout.make_layout(n._6, n._1);
    const tile = cute.layout.make_layout(n._2, n._1);
    const divided = cute.layout.logical_divide(layout, tile);
    try std.testing.expectEqual(@as(usize, 2), cute.int_tuple.rank(@TypeOf(divided.shape)));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(divided.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 3), n.value(divided.shape[1]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(divided.stride[0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(divided.stride[1]));

    const stride2 = cute.layout.make_layout(n._6, n._2);
    const divided_stride2 = cute.layout.logical_divide(stride2, tile);
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(divided_stride2.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 3), n.value(divided_stride2.shape[1]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(divided_stride2.stride[0]));
    try std.testing.expectEqual(@as(comptime_int, 4), n.value(divided_stride2.stride[1]));
}

test "layout logical divide tuple tiler parity baseline" {
    const n = cute.numeric;
    const layout = cute.layout.make_layout(.{ n._6, n._6 }, .{ n._1, n.C(12){} });
    const tile0 = cute.layout.make_layout(n._6, n._1);
    const tile1 = cute.layout.make_layout(n._3, n._1);
    const divided = cute.layout.logical_divide(layout, .{ tile0, tile1 });

    try std.testing.expectEqual(@as(comptime_int, 6), n.value(divided.shape[0][0]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(divided.shape[0][1]));
    try std.testing.expectEqual(@as(comptime_int, 3), n.value(divided.shape[1][0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(divided.shape[1][1]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(divided.stride[0][0]));
    try std.testing.expectEqual(@as(comptime_int, 0), n.value(divided.stride[0][1]));
    try std.testing.expectEqual(@as(comptime_int, 12), n.value(divided.stride[1][0]));
    try std.testing.expectEqual(@as(comptime_int, 36), n.value(divided.stride[1][1]));
}

test "layout zipped divide tuple tiler parity baseline" {
    const n = cute.numeric;
    const layout = cute.layout.make_layout(.{ n._6, n._6 }, .{ n._1, n.C(12){} });
    const tile0 = cute.layout.make_layout(n._6, n._1);
    const tile1 = cute.layout.make_layout(n._3, n._1);
    const divided = cute.layout.zipped_divide(layout, .{ tile0, tile1 });

    try std.testing.expectEqual(@as(comptime_int, 6), n.value(divided.shape[0][0]));
    try std.testing.expectEqual(@as(comptime_int, 3), n.value(divided.shape[0][1]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(divided.shape[1][0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(divided.shape[1][1]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(divided.stride[0][0]));
    try std.testing.expectEqual(@as(comptime_int, 12), n.value(divided.stride[0][1]));
    try std.testing.expectEqual(@as(comptime_int, 0), n.value(divided.stride[1][0]));
    try std.testing.expectEqual(@as(comptime_int, 36), n.value(divided.stride[1][1]));
}

test "layout tiled divide tuple tiler parity baseline" {
    const n = cute.numeric;
    const layout = cute.layout.make_layout(.{ n._6, n._6 }, .{ n._1, n.C(12){} });
    const tile0 = cute.layout.make_layout(n._6, n._1);
    const tile1 = cute.layout.make_layout(n._3, n._1);
    const divided = cute.layout.tiled_divide(layout, .{ tile0, tile1 });

    try std.testing.expectEqual(@as(usize, 3), cute.int_tuple.rank(@TypeOf(divided.shape)));
    try std.testing.expectEqual(@as(comptime_int, 6), n.value(divided.shape[0][0]));
    try std.testing.expectEqual(@as(comptime_int, 3), n.value(divided.shape[0][1]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(divided.shape[1]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(divided.shape[2]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(divided.stride[0][0]));
    try std.testing.expectEqual(@as(comptime_int, 12), n.value(divided.stride[0][1]));
    try std.testing.expectEqual(@as(comptime_int, 0), n.value(divided.stride[1]));
    try std.testing.expectEqual(@as(comptime_int, 36), n.value(divided.stride[2]));
}

test "layout flat divide tuple tiler parity baseline" {
    const n = cute.numeric;
    const layout = cute.layout.make_layout(.{ n._6, n._6 }, .{ n._1, n.C(12){} });
    const tile0 = cute.layout.make_layout(n._6, n._1);
    const tile1 = cute.layout.make_layout(n._3, n._1);
    const divided = cute.layout.flat_divide(layout, .{ tile0, tile1 });

    try std.testing.expectEqual(@as(usize, 4), cute.int_tuple.rank(@TypeOf(divided.shape)));
    try std.testing.expectEqual(@as(comptime_int, 6), n.value(divided.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 3), n.value(divided.shape[1]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(divided.shape[2]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(divided.shape[3]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(divided.stride[0]));
    try std.testing.expectEqual(@as(comptime_int, 12), n.value(divided.stride[1]));
    try std.testing.expectEqual(@as(comptime_int, 0), n.value(divided.stride[2]));
    try std.testing.expectEqual(@as(comptime_int, 36), n.value(divided.stride[3]));
}

test "layout logical and zipped divide scalar tiler over tuple layout parity baseline" {
    const n = cute.numeric;
    const layout = cute.layout.make_layout(.{ n._4, n._1 }, .{ n._1, n._1 });
    const tile = cute.layout.make_layout(n._2, n._1);

    const logical = cute.layout.logical_divide(layout, tile);
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(logical.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(logical.shape[1]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(logical.stride[0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(logical.stride[1]));

    const zipped = cute.layout.zipped_divide(layout, tile);
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(zipped.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(zipped.shape[1]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(zipped.stride[0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(zipped.stride[1]));

    const tiled = cute.layout.tiled_divide(layout, tile);
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(tiled.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(tiled.shape[1]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(tiled.stride[0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(tiled.stride[1]));

    const flat = cute.layout.flat_divide(layout, tile);
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(flat.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(flat.shape[1]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(flat.stride[0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(flat.stride[1]));
}

test "layout logical zipped tiled flat product scalar parity baseline" {
    const n = cute.numeric;
    const block = cute.layout.make_layout(n._3, n._2);
    const tiler = cute.layout.make_layout(n._4, n._1);

    const logical = cute.layout.logical_product(block, tiler);
    try std.testing.expectEqual(@as(comptime_int, 3), n.value(logical.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(logical.shape[1][0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(logical.shape[1][1]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(logical.stride[0]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(logical.stride[1][0]));
    try std.testing.expectEqual(@as(comptime_int, 6), n.value(logical.stride[1][1]));

    const zipped = cute.layout.zipped_product(block, tiler);
    try std.testing.expectEqual(@as(comptime_int, 3), n.value(zipped.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(zipped.shape[1][0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(zipped.shape[1][1]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(zipped.stride[0]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(zipped.stride[1][0]));
    try std.testing.expectEqual(@as(comptime_int, 6), n.value(zipped.stride[1][1]));

    const tiled = cute.layout.tiled_product(block, tiler);
    try std.testing.expectEqual(@as(comptime_int, 3), n.value(tiled.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(tiled.shape[1]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(tiled.shape[2]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(tiled.stride[0]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(tiled.stride[1]));
    try std.testing.expectEqual(@as(comptime_int, 6), n.value(tiled.stride[2]));

    const flat = cute.layout.flat_product(block, tiler);
    try std.testing.expectEqual(@as(comptime_int, 3), n.value(flat.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(flat.shape[1]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(flat.shape[2]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(flat.stride[0]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(flat.stride[1]));
    try std.testing.expectEqual(@as(comptime_int, 6), n.value(flat.stride[2]));
}

test "layout product tuple block scalar tiler parity baseline" {
    const n = cute.numeric;
    const block = cute.layout.make_layout(.{ n._2, n._4 }, .{ n._1, n._2 });
    const tiler = cute.layout.make_layout(n._3, n._1);

    const logical = cute.layout.logical_product(block, tiler);
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(logical.shape[0][0]));
    try std.testing.expectEqual(@as(comptime_int, 4), n.value(logical.shape[0][1]));
    try std.testing.expectEqual(@as(comptime_int, 3), n.value(logical.shape[1]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(logical.stride[0][0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(logical.stride[0][1]));
    try std.testing.expectEqual(@as(comptime_int, 8), n.value(logical.stride[1]));

    const zipped = cute.layout.zipped_product(block, tiler);
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(zipped.shape[0][0]));
    try std.testing.expectEqual(@as(comptime_int, 4), n.value(zipped.shape[0][1]));
    try std.testing.expectEqual(@as(comptime_int, 3), n.value(zipped.shape[1]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(zipped.stride[0][0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(zipped.stride[0][1]));
    try std.testing.expectEqual(@as(comptime_int, 8), n.value(zipped.stride[1]));

    const flat = cute.layout.flat_product(block, tiler);
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(flat.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 4), n.value(flat.shape[1]));
    try std.testing.expectEqual(@as(comptime_int, 3), n.value(flat.shape[2]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(flat.stride[0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(flat.stride[1]));
    try std.testing.expectEqual(@as(comptime_int, 8), n.value(flat.stride[2]));
}

test "layout blocked and raked product tuple block scalar tiler parity baseline" {
    const n = cute.numeric;
    const block = cute.layout.make_layout(.{ n._2, n._4 }, .{ n._1, n._2 });
    const tiler = cute.layout.make_layout(n._3, n._1);

    const blocked = cute.layout.blocked_product(block, tiler);
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(blocked.shape[0][0]));
    try std.testing.expectEqual(@as(comptime_int, 3), n.value(blocked.shape[0][1]));
    try std.testing.expectEqual(@as(comptime_int, 4), n.value(blocked.shape[1][0]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(blocked.shape[1][1]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(blocked.stride[0][0]));
    try std.testing.expectEqual(@as(comptime_int, 8), n.value(blocked.stride[0][1]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(blocked.stride[1][0]));
    try std.testing.expectEqual(@as(comptime_int, 0), n.value(blocked.stride[1][1]));

    const raked = cute.layout.raked_product(block, tiler);
    try std.testing.expectEqual(@as(comptime_int, 3), n.value(raked.shape[0][0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(raked.shape[0][1]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(raked.shape[1][0]));
    try std.testing.expectEqual(@as(comptime_int, 4), n.value(raked.shape[1][1]));
    try std.testing.expectEqual(@as(comptime_int, 8), n.value(raked.stride[0][0]));
    try std.testing.expectEqual(@as(comptime_int, 1), n.value(raked.stride[0][1]));
    try std.testing.expectEqual(@as(comptime_int, 0), n.value(raked.stride[1][0]));
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(raked.stride[1][1]));
}

test "identity layout parity baseline" {
    const n = cute.numeric;

    const scalar = cute.layout.make_identity_layout(n._7);
    try std.testing.expectEqual(@as(comptime_int, 7), n.value(scalar.shape));
    try std.testing.expectEqual(@as(usize, 3), scalar.map(n._3));

    const rank2 = cute.layout.make_identity_layout(.{ n._2, n._4 });
    try std.testing.expectEqual(@as(comptime_int, 2), n.value(rank2.shape[0]));
    try std.testing.expectEqual(@as(comptime_int, 4), n.value(rank2.shape[1]));
    try std.testing.expectEqual(@as(usize, 1), rank2.map(.{ n._1, n._0 }));
    try std.testing.expectEqual(@as(usize, 3), rank2.map(.{ n._0, n._3 }));
    try std.testing.expectEqual(@as(usize, 5), cute.layout.coshape(rank2));
    try std.testing.expectEqual(@as(usize, 5), rank2.cosize());

    const rank4 = cute.layout.make_identity_layout(.{ n._2, n._3, n._4, n._5 });
    try std.testing.expectEqual(@as(comptime_int, 5), n.value(rank4.shape[3]));
    try std.testing.expectEqual(@as(usize, 3), rank4.map(.{ n._0, n._0, n._3, n._0 }));
    try std.testing.expectEqual(@as(usize, 4), rank4.map(.{ n._0, n._0, n._0, n._4 }));

    const nested = cute.layout.make_identity_layout(.{ .{ n._2, n._3 }, n._4 });
    try std.testing.expectEqual(@as(comptime_int, 3), n.value(nested.shape[0][1]));
    try std.testing.expectEqual(@as(usize, 2), nested.map(.{ .{ n._0, n._2 }, n._0 }));
    try std.testing.expectEqual(@as(usize, 3), nested.map(.{ .{ n._0, n._0 }, n._3 }));
}

test "swizzle parity baseline" {
    const sw = cute.swizzle.Swizzle(2, 3, 3){};
    try std.testing.expectEqual(@as(usize, 72), sw.apply(64));
    try std.testing.expectEqual(@as(usize, 64), sw.apply(72));

    const made = cute.swizzle.make_swizzle(0b11000000, 0b00011000);
    try std.testing.expectEqual(@as(usize, 72), made.apply(64));

    const merged = cute.swizzle.composition(cute.swizzle.Swizzle(1, 3, 3){}, cute.swizzle.Swizzle(1, 4, 3){});
    try std.testing.expectEqual(@as(usize, 72), merged.apply(64));
}

test "tensor and algorithm parity baseline" {
    const col_major = cute.layout.make_layout(
        .{ @as(usize, 4), @as(usize, 4) },
        .{ @as(isize, 1), @as(isize, 4) },
    );

    var src_data: [16]f32 = undefined;
    var dst_data: [16]f32 = undefined;
    for (0..16) |i| src_data[i] = @as(f32, @floatFromInt(i));

    const tensor_src = cute.tensor.make_tensor(@as([*]f32, &src_data), col_major);
    const tensor_dst = cute.tensor.make_tensor(@as([*]f32, &dst_data), col_major);

    // copy parity
    cute.algorithm.copy(tensor_src, tensor_dst);
    try std.testing.expectEqual(@as(f32, 9.0), tensor_dst.get(.{ @as(usize, 1), @as(usize, 2) }));

    // fill parity
    cute.algorithm.fill(tensor_dst, @as(f32, 42.0));
    try std.testing.expectEqual(@as(f32, 42.0), tensor_dst.get(.{ @as(usize, 1), @as(usize, 2) }));

    // swizzled slice parity
    const sw = cute.swizzle.Swizzle(2, 3, 3){};
    const swizzle_layout = cute.swizzle.composition(sw, col_major);
    const swizzle_tensor = cute.tensor.make_tensor(@as([*]f32, &src_data), swizzle_layout);
    
    const u = cute.underscore._;
    const swizzle_slice = swizzle_tensor.slice(.{ u, @as(usize, 2) });
    
    // In C++, swizzle_slice(0) is logical index 0 of column 2.
    // In original tensor, that's logical coord (0, 2) -> physical offset 0 + 2*4 = 8.
    // Swizzle(2, 3, 3) applied to 8:
    // B=2, M=3, S=3
    // yyy_mask = (3 << (3 + 3)) = 3 << 6 = 0b11000000 = 192
    // zzz_mask = (3 << (3 - 3)) = 3 << 0 = 3
    // swizzle_code = 195
    // 8 & 192 = 0. 0 >> 3 = 0. 8 ^ 0 = 8.
    // So swizzle_slice(0) should be src_data[8] = 8.0.
    try std.testing.expectEqual(@as(f32, 8.0), swizzle_slice.get_1d(0));
}
