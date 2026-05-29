#include <cute/layout.hpp>
#include <cute/int_tuple.hpp>
#include <cute/swizzle.hpp>
#include <cute/tensor.hpp>
#include <cute/algorithm/copy.hpp>
#include <cute/algorithm/fill.hpp>

#include <iostream>

int main() {
  using namespace cute;

  auto col_major = make_layout(make_shape(4, 4), make_stride(1, 4));
  auto row_major = make_layout(make_shape(4, 4), make_stride(4, 1));
  auto nested = make_layout(make_shape(make_shape(2, 2), 2),
                            make_stride(make_stride(1, 2), 4));
  auto static_shape = make_shape(Int<2>{}, Int<4>{});
  auto static_stride = make_stride(Int<1>{}, Int<2>{});
  auto static_coord = make_coord(Int<1>{}, Int<2>{});
  auto static_sum = Int<3>{} + Int<4>{};
  auto static_product = Int<3>{} * Int<4>{};
  auto tuple_sum = make_arithmetic_tuple(Int<1>{}, Int<2>{}) +
                   make_arithmetic_tuple(Int<3>{}, Int<4>{});
  auto tuple_flat = flatten(make_tuple(Int<2>{}, make_tuple(Int<3>{}, Int<4>{})));
  auto tuple_take = take<1, 3>(make_tuple(Int<1>{}, Int<2>{}, Int<3>{}));
  auto div_shape = shape_div(make_shape(Int<4>{}, Int<5>{}, Int<6>{}), Int<40>{});
  auto ceil_scalar = ceil_div(Int<5>{}, Int<2>{});
  auto round_scalar = round_up(Int<5>{}, Int<4>{});
  auto compat_same = compatible(make_shape(Int<2>{}, Int<3>{}), make_shape(Int<2>{}, Int<3>{}));
  auto weak_same = weakly_congruent(make_shape(Int<2>{}, Int<3>{}), make_shape(Int<4>{}, Int<5>{}));
  auto profile_a = make_shape(Int<2>{}, make_shape(Int<3>{}));
  auto profile_b = make_shape(Int<4>{}, make_shape(Int<5>{}));
  auto profile_c = make_shape(Int<4>{}, Int<5>{});
  auto nested_tuple = make_tuple(Int<2>{}, make_tuple(Int<3>{}, Int<4>{}));
  auto product_each_tuple = product_each(nested_tuple);
  auto evenly_tuple = evenly_divides(make_shape(Int<8>{}, Int<16>{}), make_shape(Int<4>{}, Int<8>{}));
  auto evenly_scalar = evenly_divides(make_shape(Int<8>{}, Int<16>{}), Int<4>{});
  auto hier_coord = nested.get_hier_coord(7);
  auto flat_coord = nested.get_flat_coord(7);
  auto coord_1d = nested.get_1d_coord(7);
  auto row_coshape = coshape(row_major);
  auto nested_coshape = coshape(nested);
  auto row_slice = slice(make_coord(_, 2), row_major);
  auto row_slice_offset = crd2idx(make_coord(0, 2), row_major);
  auto col_slice = slice(make_coord(1, _), col_major);
  auto col_slice_offset = crd2idx(make_coord(1, 0), col_major);
  auto nested_slice = slice(make_coord(make_coord(_, 1), _), nested);
  auto nested_slice_offset = crd2idx(make_coord(make_coord(0, 1), 0), nested);
  auto nested_dice = dice(make_coord(make_coord(_, 1), _), nested);
  auto layout3 = make_layout(make_shape(Int<2>{}, Int<3>{}, Int<4>{}),
                             make_stride(Int<12>{}, Int<4>{}, Int<1>{}));
  auto layout_take = take<1, 3>(layout3);
  auto layout_select = select<2, 0>(layout3);
  auto layout_flatten = flatten(nested);
  auto compact_left = make_layout(make_shape(Int<2>{}, Int<3>{}, Int<4>{}));
  auto compact_right = make_layout(make_shape(Int<2>{}, Int<3>{}, Int<4>{}), LayoutRight{});
  auto ordered_static = make_ordered_layout(make_shape(Int<2>{}, Int<2>{}, Int<2>{}, Int<2>{}),
                                            make_step(Int<0>{}, Int<2>{}, Int<3>{}, Int<1>{}));
  auto ordered_dynamic = make_ordered_layout(make_shape(2, 3, 4, 5),
                                             make_step(Int<2>{}, 67, 42, Int<50>{}));
  auto like_layout = make_layout_like(make_layout(make_shape(2, 3, 4, 5),
                                                  make_stride(Int<0>{}, 42, Int<1>{}, Int<0>{})));
  auto zero_stride_layout = make_layout(make_shape(2, 3, 4, 5),
                                        make_stride(Int<0>{}, 42, Int<1>{}, Int<0>{}));
  auto filtered_zero_layout = filter_zeros(zero_stride_layout);
  auto filtered_layout = filter(zero_stride_layout);
  auto coalesced_col = coalesce(make_layout(make_shape(Int<2>{}, Int<3>{}, Int<4>{}),
                                            make_stride(Int<1>{}, Int<2>{}, Int<6>{})));
  auto coalesced_zero = coalesce(make_layout(make_shape(Int<4>{}, Int<1>{}),
                                             make_stride(Int<1>{}, Int<0>{})));
  auto coalesced_nested = coalesce(nested);
  auto coalesced_static_nested = coalesce(make_layout(make_shape(make_shape(Int<2>{}, Int<2>{}), Int<2>{}),
                                                      make_stride(make_stride(Int<1>{}, Int<2>{}), Int<4>{})));
  auto complement_unit = complement(Layout<Int<1>, Int<0>>{}, Int<5>{});
  auto complement_stride2 = complement(Layout<Int<4>, Int<2>>{}, Int<16>{});
  auto complement_rank2 = complement(Layout<Shape<Int<2>, Int<4>>, Stride<Int<1>, Int<6>>>{});
  auto complement_rank3 = complement(Layout<Shape<Int<2>, Int<4>, Int<8>>,
                                            Stride<Int<8>, Int<1>, Int<64>>>{});
  auto complement_rank3_zero = complement(Layout<Shape<Int<2>, Int<4>, Int<8>>,
                                                 Stride<Int<8>, Int<1>, Int<0>>>{},
                                          Int<460>{});
  auto logical_divide_6_2 = logical_divide(Layout<Int<6>, Int<1>>{}, Layout<Int<2>, Int<1>>{});
  auto logical_divide_stride2 = logical_divide(Layout<Int<6>, Int<2>>{}, Layout<Int<2>, Int<1>>{});
  auto logical_divide_rank2 = logical_divide(Layout<Shape<Int<6>, Int<6>>, Stride<Int<1>, Int<12>>>{},
                                             make_tuple(Layout<Int<6>, Int<1>>{}, Layout<Int<3>, Int<1>>{}));
  auto zipped_divide_rank2 = zipped_divide(Layout<Shape<Int<6>, Int<6>>, Stride<Int<1>, Int<12>>>{},
                                           make_tuple(Layout<Int<6>, Int<1>>{}, Layout<Int<3>, Int<1>>{}));
  auto tiled_divide_rank2 = tiled_divide(Layout<Shape<Int<6>, Int<6>>, Stride<Int<1>, Int<12>>>{},
                                         make_tuple(Layout<Int<6>, Int<1>>{}, Layout<Int<3>, Int<1>>{}));
  auto flat_divide_rank2 = flat_divide(Layout<Shape<Int<6>, Int<6>>, Stride<Int<1>, Int<12>>>{},
                                       make_tuple(Layout<Int<6>, Int<1>>{}, Layout<Int<3>, Int<1>>{}));
  auto logical_divide_rank2_scalar = logical_divide(Layout<Shape<Int<4>, Int<1>>, Stride<Int<1>, Int<1>>>{},
                                                    Layout<Int<2>, Int<1>>{});
  auto zipped_divide_rank2_scalar = zipped_divide(Layout<Shape<Int<4>, Int<1>>, Stride<Int<1>, Int<1>>>{},
                                                  Layout<Int<2>, Int<1>>{});
  auto tiled_divide_rank2_scalar = tiled_divide(Layout<Shape<Int<4>, Int<1>>, Stride<Int<1>, Int<1>>>{},
                                                Layout<Int<2>, Int<1>>{});
  auto flat_divide_rank2_scalar = flat_divide(Layout<Shape<Int<4>, Int<1>>, Stride<Int<1>, Int<1>>>{},
                                              Layout<Int<2>, Int<1>>{});
  auto logical_product_3_4 = logical_product(Layout<Int<3>, Int<2>>{}, Layout<Int<4>, Int<1>>{});
  auto zipped_product_3_4 = zipped_product(Layout<Int<3>, Int<2>>{}, Layout<Int<4>, Int<1>>{});
  auto tiled_product_3_4 = tiled_product(Layout<Int<3>, Int<2>>{}, Layout<Int<4>, Int<1>>{});
  auto flat_product_3_4 = flat_product(Layout<Int<3>, Int<2>>{}, Layout<Int<4>, Int<1>>{});
  auto logical_product_tuple_scalar = logical_product(Layout<Shape<Int<2>, Int<4>>, Stride<Int<1>, Int<2>>>{},
                                                      Layout<Int<3>, Int<1>>{});
  auto zipped_product_tuple_scalar = zipped_product(Layout<Shape<Int<2>, Int<4>>, Stride<Int<1>, Int<2>>>{},
                                                    Layout<Int<3>, Int<1>>{});
  auto tiled_product_tuple_scalar = tiled_product(Layout<Shape<Int<2>, Int<4>>, Stride<Int<1>, Int<2>>>{},
                                                  Layout<Int<3>, Int<1>>{});
  auto flat_product_tuple_scalar = flat_product(Layout<Shape<Int<2>, Int<4>>, Stride<Int<1>, Int<2>>>{},
                                                Layout<Int<3>, Int<1>>{});
  auto blocked_product_tuple_scalar = blocked_product(Layout<Shape<Int<2>, Int<4>>, Stride<Int<1>, Int<2>>>{},
                                                      Layout<Int<3>, Int<1>>{});
  auto raked_product_tuple_scalar = raked_product(Layout<Shape<Int<2>, Int<4>>, Stride<Int<1>, Int<2>>>{},
                                                  Layout<Int<3>, Int<1>>{});
  auto identity_scalar = make_identity_layout(Int<7>{});
  auto identity_rank2 = make_identity_layout(make_shape(Int<2>{}, Int<4>{}));
  auto identity_rank4 = make_identity_layout(make_shape(Int<2>{}, Int<3>{}, Int<4>{}, Int<5>{}));
  auto identity_nested = make_identity_layout(make_shape(make_shape(Int<2>{}, Int<3>{}), Int<4>{}));
  auto swizzle = Swizzle<2,3,3>{};
  auto made_swizzle = make_swizzle<0b11000000, 0b00011000>();
  auto merged_swizzle = composition(Swizzle<1,3,3>{}, Swizzle<1,4,3>{});

  // Algorithm and Tensor Parity
  float src_data[16];
  float dst_data[16];
  for(int i = 0; i < 16; ++i) src_data[i] = (float)i;
  auto tensor_src = make_tensor(static_cast<float*>(src_data), col_major);
  auto tensor_dst = make_tensor(static_cast<float*>(dst_data), col_major);

  // copy
  copy(tensor_src, tensor_dst);
  float copy_val = tensor_dst(1, 2); // 1 + 2*4 = 9

  // fill
  fill(tensor_dst, 42.0f);
  float fill_val = tensor_dst(1, 2);

  // swizzled slice
  auto static_col_major = make_layout(make_shape(Int<4>{}, Int<4>{}), make_stride(Int<1>{}, Int<4>{}));
  auto swizzle_layout = composition(static_col_major, swizzle);
  auto swizzle_tensor = make_tensor(static_cast<float*>(src_data), swizzle_layout);
  auto swizzle_slice = swizzle_tensor(make_coord(_, 2)); // Column 2
  float swizzle_slice_0 = swizzle_slice(0); // logical (0, 2) in original

  std::cout
    << "{"
    << "\"col_1_2\":" << col_major(make_coord(1, 2)) << ","
    << "\"row_1_2\":" << row_major(make_coord(1, 2)) << ","
    << "\"col_size\":" << size(col_major) << ","
    << "\"col_cosize\":" << cosize(col_major) << ","
    << "\"nested_size\":" << size(nested) << ","
    << "\"nested_0\":" << nested(0) << ","
    << "\"nested_3\":" << nested(3) << ","
    << "\"nested_7\":" << nested(7) << ","
    << "\"static_sum\":" << static_sum << ","
    << "\"static_product\":" << static_product << ","
    << "\"static_shape_size\":" << size(static_shape) << ","
    << "\"static_inner_product\":" << inner_product(static_coord, static_stride) << ","
    << "\"tuple_sum_0\":" << get<0>(tuple_sum) << ","
    << "\"tuple_sum_1\":" << get<1>(tuple_sum) << ","
    << "\"tuple_flat_rank\":" << rank(tuple_flat) << ","
    << "\"tuple_flat_2\":" << get<2>(tuple_flat) << ","
    << "\"tuple_take_0\":" << get<0>(tuple_take) << ","
    << "\"tuple_take_1\":" << get<1>(tuple_take) << ","
    << "\"ceil_scalar\":" << ceil_scalar << ","
    << "\"round_scalar\":" << round_scalar << ","
    << "\"shape_div_0\":" << get<0>(div_shape) << ","
    << "\"shape_div_1\":" << get<1>(div_shape) << ","
    << "\"shape_div_2\":" << get<2>(div_shape) << ","
    << "\"compatible_same\":" << compat_same << ","
    << "\"weak_same\":" << weak_same << ","
    << "\"nested_sum\":" << sum(nested_tuple) << ","
    << "\"product_each_0\":" << get<0>(product_each_tuple) << ","
    << "\"product_each_1\":" << get<1>(product_each_tuple) << ","
    << "\"congruent_nested\":" << congruent(profile_a, profile_b) << ","
    << "\"congruent_mismatch\":" << congruent(profile_a, profile_c) << ","
    << "\"evenly_tuple\":" << evenly_tuple << ","
    << "\"evenly_scalar\":" << evenly_scalar << ","
    << "\"nested_hier_0_0\":" << get<0,0>(hier_coord) << ","
    << "\"nested_hier_0_1\":" << get<0,1>(hier_coord) << ","
    << "\"nested_hier_1\":" << get<1>(hier_coord) << ","
    << "\"nested_flat_0\":" << get<0>(flat_coord) << ","
    << "\"nested_flat_1\":" << get<1>(flat_coord) << ","
    << "\"nested_1d_coord\":" << coord_1d << ","
    << "\"row_coshape\":" << row_coshape << ","
    << "\"row_cosize\":" << cosize(row_major) << ","
    << "\"nested_coshape\":" << nested_coshape << ","
    << "\"nested_cosize\":" << cosize(nested) << ","
    << "\"row_slice_shape\":" << shape(row_slice) << ","
    << "\"row_slice_stride\":" << stride(row_slice) << ","
    << "\"row_slice_offset\":" << row_slice_offset << ","
    << "\"col_slice_shape\":" << shape(col_slice) << ","
    << "\"col_slice_stride\":" << stride(col_slice) << ","
    << "\"col_slice_offset\":" << col_slice_offset << ","
    << "\"nested_slice_shape\":" << shape(nested_slice) << ","
    << "\"nested_slice_stride\":" << stride(nested_slice) << ","
    << "\"nested_slice_offset\":" << nested_slice_offset << ","
    << "\"nested_dice_shape\":" << shape(nested_dice) << ","
    << "\"nested_dice_stride\":" << stride(nested_dice) << ","
    << "\"layout_take_shape\":" << shape(layout_take) << ","
    << "\"layout_take_stride\":" << stride(layout_take) << ","
    << "\"layout_select_shape\":" << shape(layout_select) << ","
    << "\"layout_select_stride\":" << stride(layout_select) << ","
    << "\"layout_flatten_shape\":" << shape(layout_flatten) << ","
    << "\"layout_flatten_stride\":" << stride(layout_flatten) << ","
    << "\"compact_left_stride\":" << stride(compact_left) << ","
    << "\"compact_right_stride\":" << stride(compact_right) << ","
    << "\"ordered_static_stride\":" << stride(ordered_static) << ","
    << "\"ordered_dynamic_stride\":" << stride(ordered_dynamic) << ","
    << "\"like_layout_stride\":" << stride(like_layout) << ","
    << "\"filter_zeros_shape\":" << shape(filtered_zero_layout) << ","
    << "\"filter_zeros_stride\":" << stride(filtered_zero_layout) << ","
    << "\"filter_shape\":" << shape(filtered_layout) << ","
    << "\"filter_stride\":" << stride(filtered_layout) << ","
    << "\"coalesced_col_shape\":" << shape(coalesced_col) << ","
    << "\"coalesced_col_stride\":" << stride(coalesced_col) << ","
    << "\"coalesced_zero_shape\":" << shape(coalesced_zero) << ","
    << "\"coalesced_zero_stride\":" << stride(coalesced_zero) << ","
    << "\"coalesced_nested_shape\":" << shape(coalesced_nested) << ","
    << "\"coalesced_nested_stride\":" << stride(coalesced_nested) << ","
    << "\"coalesced_static_nested_shape\":" << shape(coalesced_static_nested) << ","
    << "\"coalesced_static_nested_stride\":" << stride(coalesced_static_nested) << ","
    << "\"complement_unit_shape\":" << shape(complement_unit) << ","
    << "\"complement_unit_stride\":" << stride(complement_unit) << ","
    << "\"complement_stride2_shape\":" << shape(complement_stride2) << ","
    << "\"complement_stride2_stride\":" << stride(complement_stride2) << ","
    << "\"complement_rank2_shape\":" << shape(complement_rank2) << ","
    << "\"complement_rank2_stride\":" << stride(complement_rank2) << ","
    << "\"complement_rank3_shape\":" << shape(complement_rank3) << ","
    << "\"complement_rank3_stride\":" << stride(complement_rank3) << ","
    << "\"complement_rank3_zero_shape\":" << shape(complement_rank3_zero) << ","
    << "\"complement_rank3_zero_stride\":" << stride(complement_rank3_zero) << ","
    << "\"logical_divide_6_2_shape\":" << shape(logical_divide_6_2) << ","
    << "\"logical_divide_6_2_stride\":" << stride(logical_divide_6_2) << ","
    << "\"logical_divide_stride2_shape\":" << shape(logical_divide_stride2) << ","
    << "\"logical_divide_stride2_stride\":" << stride(logical_divide_stride2) << ","
    << "\"logical_divide_rank2_shape\":" << shape(logical_divide_rank2) << ","
    << "\"logical_divide_rank2_stride\":" << stride(logical_divide_rank2) << ","
    << "\"zipped_divide_rank2_shape\":" << shape(zipped_divide_rank2) << ","
    << "\"zipped_divide_rank2_stride\":" << stride(zipped_divide_rank2) << ","
    << "\"tiled_divide_rank2_shape\":" << shape(tiled_divide_rank2) << ","
    << "\"tiled_divide_rank2_stride\":" << stride(tiled_divide_rank2) << ","
    << "\"flat_divide_rank2_shape\":" << shape(flat_divide_rank2) << ","
    << "\"flat_divide_rank2_stride\":" << stride(flat_divide_rank2) << ","
    << "\"logical_divide_rank2_scalar_shape\":" << shape(logical_divide_rank2_scalar) << ","
    << "\"logical_divide_rank2_scalar_stride\":" << stride(logical_divide_rank2_scalar) << ","
    << "\"zipped_divide_rank2_scalar_shape\":" << shape(zipped_divide_rank2_scalar) << ","
    << "\"zipped_divide_rank2_scalar_stride\":" << stride(zipped_divide_rank2_scalar) << ","
    << "\"tiled_divide_rank2_scalar_shape\":" << shape(tiled_divide_rank2_scalar) << ","
    << "\"tiled_divide_rank2_scalar_stride\":" << stride(tiled_divide_rank2_scalar) << ","
    << "\"flat_divide_rank2_scalar_shape\":" << shape(flat_divide_rank2_scalar) << ","
    << "\"flat_divide_rank2_scalar_stride\":" << stride(flat_divide_rank2_scalar) << ","
    << "\"logical_product_3_4_shape\":" << shape(logical_product_3_4) << ","
    << "\"logical_product_3_4_stride\":" << stride(logical_product_3_4) << ","
    << "\"zipped_product_3_4_shape\":" << shape(zipped_product_3_4) << ","
    << "\"zipped_product_3_4_stride\":" << stride(zipped_product_3_4) << ","
    << "\"tiled_product_3_4_shape\":" << shape(tiled_product_3_4) << ","
    << "\"tiled_product_3_4_stride\":" << stride(tiled_product_3_4) << ","
    << "\"flat_product_3_4_shape\":" << shape(flat_product_3_4) << ","
    << "\"flat_product_3_4_stride\":" << stride(flat_product_3_4) << ","
    << "\"logical_product_tuple_scalar_shape\":" << shape(logical_product_tuple_scalar) << ","
    << "\"logical_product_tuple_scalar_stride\":" << stride(logical_product_tuple_scalar) << ","
    << "\"zipped_product_tuple_scalar_shape\":" << shape(zipped_product_tuple_scalar) << ","
    << "\"zipped_product_tuple_scalar_stride\":" << stride(zipped_product_tuple_scalar) << ","
    << "\"tiled_product_tuple_scalar_shape\":" << shape(tiled_product_tuple_scalar) << ","
    << "\"tiled_product_tuple_scalar_stride\":" << stride(tiled_product_tuple_scalar) << ","
    << "\"flat_product_tuple_scalar_shape\":" << shape(flat_product_tuple_scalar) << ","
    << "\"flat_product_tuple_scalar_stride\":" << stride(flat_product_tuple_scalar) << ","
    << "\"blocked_product_tuple_scalar_shape\":" << shape(blocked_product_tuple_scalar) << ","
    << "\"blocked_product_tuple_scalar_stride\":" << stride(blocked_product_tuple_scalar) << ","
    << "\"raked_product_tuple_scalar_shape\":" << shape(raked_product_tuple_scalar) << ","
    << "\"raked_product_tuple_scalar_stride\":" << stride(raked_product_tuple_scalar) << ","
    << "\"identity_scalar_shape\":" << shape(identity_scalar) << ","
    << "\"identity_scalar_stride\":" << stride(identity_scalar) << ","
    << "\"identity_rank2_shape\":" << shape(identity_rank2) << ","
    << "\"identity_rank2_stride\":" << stride(identity_rank2) << ","
    << "\"identity_rank4_shape\":" << shape(identity_rank4) << ","
    << "\"identity_rank4_stride\":" << stride(identity_rank4) << ","
    << "\"identity_nested_shape\":" << shape(identity_nested) << ","
    << "\"identity_nested_stride\":" << stride(identity_nested) << ","
    << "\"swizzle_64\":" << swizzle(64) << ","
    << "\"swizzle_72\":" << swizzle(72) << ","
    << "\"made_swizzle_64\":" << made_swizzle(64) << ","
    << "\"merged_swizzle_64\":" << merged_swizzle(64) << ","
    << "\"copy_val\":" << copy_val << ","
    << "\"fill_val\":" << fill_val << ","
    << "\"swizzle_slice_0\":" << swizzle_slice_0
    << "}\n";

  return 0;
}
