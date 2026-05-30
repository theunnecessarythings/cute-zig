const std = @import("std");
const numeric = @import("numeric.zig");

pub fn is_int(comptime T: type) bool {
    return numeric.is_integral(T);
}

pub fn is_tuple(comptime T: type) bool {
    return switch (@typeInfo(T)) {
        .@"struct" => |s| s.is_tuple or (s.fields.len > 0 and s.fields[0].name[0] == '0'),
        .array => true,
        else => false,
    };
}

/// Returns the rank of an IntTuple.
/// rank(Int) = 1
/// rank(Tuple) = tuple_size
pub fn rank(comptime T: type) usize {
    if (comptime is_tuple(T)) {
        return switch (@typeInfo(T)) {
            .@"struct" => |s| s.fields.len,
            .array => |a| a.len,
            else => unreachable,
        };
    } else {
        return 1;
    }
}

/// Returns the depth of an IntTuple.
/// depth(Int) = 0
/// depth(Tuple(Int, Int)) = 1
/// depth(Tuple(Int, Tuple(Int))) = 2
pub fn depth(comptime T: type) usize {
    if (comptime is_tuple(T)) {
        var max_d: usize = 0;
        switch (@typeInfo(T)) {
            .@"struct" => |s| {
                inline for (s.fields) |field| {
                    const d = comptime depth(field.type);
                    if (d > max_d) max_d = d;
                }
            },
            .array => |a| {
                const d = comptime depth(a.child);
                if (d > max_d) max_d = d;
            },
            else => unreachable,
        }
        return 1 + max_d;
    } else {
        return 0;
    }
}

fn GetType(comptime T: type, comptime Is: anytype, comptime start: usize) type {
    const indices = if (comptime is_tuple(@TypeOf(Is))) Is else .{Is};
    if (start >= indices.len) return T;
    
    if (comptime is_tuple(T)) {
        const I = indices[start];
        const ChildT = switch (@typeInfo(T)) {
            .@"struct" => |s| s.fields[I].type,
            .array => |a| a.child,
            else => unreachable,
        };
        return GetType(ChildT, Is, start + 1);
    } else {
        @compileError("Index out of range for non-tuple");
    }
}

/// Recursive get for IntTuples.
pub fn get(t: anytype, comptime Is: anytype) GetType(@TypeOf(t), Is, 0) {
    return get_recursive(t, Is, 0);
}

fn get_recursive(t: anytype, comptime Is: anytype, comptime start: usize) GetType(@TypeOf(t), Is, start) {
    const T = @TypeOf(t);
    const indices = if (comptime is_tuple(@TypeOf(Is))) Is else .{Is};
    
    if (start >= indices.len) return t;

    const I = indices[start];

    if (comptime is_tuple(T)) {
        return get_recursive(t[I], Is, start + 1);
    } else {
        @compileError("Index out of range for non-tuple");
    }
}

/// Product of all elements in the IntTuple.
pub fn product(t: anytype) usize {
    const T = @TypeOf(t);
    if (comptime is_tuple(T)) {
        if (comptime rank(T) == 0) return 1;
        var res: usize = product(t[0]);
        inline for (1..comptime rank(T)) |i| {
            res *= product(t[i]);
        }
        return res;
    } else {
        return @as(usize, @intCast(numeric.value(t)));
    }
}

/// Size is equivalent to product(t) in CuTe.
pub fn size(t: anytype) usize {
    return product(t);
}

pub fn static_product(t: anytype) StaticProductType(@TypeOf(t)) {
    const T = @TypeOf(t);
    if (comptime is_tuple(T)) {
        return static_product_recursive(t, 0);
    } else {
        return t;
    }
}

pub fn StaticProductType(comptime T: type) type {
    if (comptime is_tuple(T)) {
        const R = rank(T);
        if (R == 0) return @TypeOf(numeric._1);
        return StaticProductRecursiveType(T, 0);
    }
    return T;
}

fn StaticProductRecursiveType(comptime T: type, comptime i: usize) type {
    const R = rank(T);
    if (i == R - 1) return StaticProductType(child_type(T, i));
    return ArithmeticType(StaticProductType(child_type(T, i)), StaticProductRecursiveType(T, i + 1), .mul);
}

fn static_product_recursive(t: anytype, comptime i: usize) StaticProductRecursiveType(@TypeOf(t), i) {
    const R = comptime rank(@TypeOf(t));
    if (i == R - 1) return static_product(t[i]);
    return mul(static_product(t[i]), static_product_recursive(t, i + 1));
}

pub fn product_each(t: anytype) ProductEachType(@TypeOf(t)) {
    if (comptime is_tuple(@TypeOf(t))) {
        var result: ProductEachType(@TypeOf(t)) = undefined;
        inline for (0..comptime rank(@TypeOf(t))) |i| result[i] = product(t[i]);
        return result;
    }
    return .{product(t)};
}

fn ProductEachType(comptime T: type) type {
    const R = if (comptime is_tuple(T)) rank(T) else 1;
    comptime var fields: [R]type = undefined;
    inline for (0..R) |i| fields[i] = usize;
    return TupleType(&fields);
}

pub fn shape(t: anytype) ShapeType(@TypeOf(t)) {
    if (comptime is_tuple(@TypeOf(t))) {
        var result: ShapeType(@TypeOf(t)) = undefined;
        inline for (0..comptime rank(@TypeOf(t))) |i| result[i] = shape(t[i]);
        return result;
    }
    return t;
}

fn ShapeType(comptime T: type) type {
    if (comptime is_tuple(T)) {
        const R = comptime rank(T);
        comptime var fields: [R]type = undefined;
        inline for (0..R) |i| fields[i] = ShapeType(child_type(T, i));
        return TupleType(&fields);
    }
    return T;
}

pub fn sum(t: anytype) usize {
    if (comptime is_tuple(@TypeOf(t))) {
        var result: usize = 0;
        inline for (0..comptime rank(@TypeOf(t))) |i| result += sum(t[i]);
        return result;
    }
    return @as(usize, @intCast(numeric.value(t)));
}

pub fn inner_product(a: anytype, b: anytype) usize {
    const TA = @TypeOf(a);
    const TB = @TypeOf(b);
    if (comptime is_tuple(TA) and is_tuple(TB)) {
        comptime if (rank(TA) != rank(TB)) @compileError("Mismatched ranks in inner_product");
        if (comptime rank(TA) == 0) return 0;
        var res: usize = inner_product(a[0], b[0]);
        inline for (1..comptime rank(TA)) |i| {
            res += inner_product(a[i], b[i]);
        }
        return res;
    } else {
        const a_val = if (comptime is_tuple(TA)) @compileError("Tuple * Int not implemented") else numeric.value(a);
        const b_val = if (comptime is_tuple(TB)) @compileError("Int * Tuple not implemented") else numeric.value(b);
        return @as(usize, @intCast(a_val)) * @as(usize, @intCast(b_val));
    }
}

pub fn elem_value(x: anytype) comptime_int {
    return numeric.value(x);
}

pub fn TupleType(comptime types: []const type) type {
    return std.meta.Tuple(types);
}

pub fn append(t: anytype, x: anytype) AppendType(@TypeOf(t), @TypeOf(x)) {
    if (comptime is_tuple(@TypeOf(t))) {
        const R = comptime rank(@TypeOf(t));
        var result: AppendType(@TypeOf(t), @TypeOf(x)) = undefined;
        inline for (0..R) |i| result[i] = t[i];
        result[R] = x;
        return result;
    } else {
        return .{ t, x };
    }
}

fn AppendType(comptime T: type, comptime X: type) type {
    if (comptime is_tuple(T)) {
        const R = comptime rank(T);
        comptime var fields: [R + 1]type = undefined;
        inline for (0..R) |i| fields[i] = switch (@typeInfo(T)) {
            .@"struct" => |s| s.fields[i].type,
            .array => |a| a.child,
            else => unreachable,
        };
        fields[R] = X;
        return TupleType(&fields);
    }
    return TupleType(&.{ T, X });
}

pub fn append_to_rank(comptime R: usize, t: anytype, pad: anytype) AppendToRankType(R, @TypeOf(t), @TypeOf(pad)) {
    const T = @TypeOf(t);
    const current = if (comptime is_tuple(T)) comptime rank(T) else 1;
    if (comptime current >= R) return t;

    var result: AppendToRankType(R, T, @TypeOf(pad)) = undefined;
    if (comptime is_tuple(T)) {
        inline for (0..current) |i| result[i] = t[i];
    } else {
        result[0] = t;
    }
    inline for (current..R) |i| result[i] = pad;
    return result;
}

fn AppendToRankType(comptime R: usize, comptime T: type, comptime PadT: type) type {
    const current = if (comptime is_tuple(T)) comptime rank(T) else 1;
    if (comptime current >= R) return T;
    comptime var fields: [R]type = undefined;
    if (comptime is_tuple(T)) {
        inline for (0..current) |i| fields[i] = switch (@typeInfo(T)) {
            .@"struct" => |s| s.fields[i].type,
            .array => |a| a.child,
            else => unreachable,
        };
    } else {
        fields[0] = T;
    }
    inline for (current..R) |i| fields[i] = PadT;
    return TupleType(&fields);
}

pub fn take(comptime begin: usize, comptime end: usize, t: anytype) TakeType(begin, end, @TypeOf(t)) {
    comptime if (end < begin) @compileError("take end must be >= begin");
    comptime if (!is_tuple(@TypeOf(t))) @compileError("take expects a tuple");
    const N = end - begin;
    var result: TakeType(begin, end, @TypeOf(t)) = undefined;
    inline for (0..N) |i| result[i] = t[begin + i];
    return result;
}

pub fn TakeType(comptime begin: usize, comptime end: usize, comptime T: type) type {
    comptime if (end < begin) @compileError("take end must be >= begin");
    const N = end - begin;
    comptime var fields: [N]type = undefined;
    inline for (0..N) |i| fields[i] = switch (@typeInfo(T)) {
        .@"struct" => |s| s.fields[begin + i].type,
        .array => |a| a.child,
        else => @compileError("take expects a tuple"),
    };
    return TupleType(&fields);
}

pub fn flatten(t: anytype) FlattenType(@TypeOf(t)) {
    var result: FlattenType(@TypeOf(t)) = undefined;
    fill_flatten(&result, 0, t);
    return result;
}

fn fill_flatten(result: anytype, comptime offset: usize, t: anytype) void {
    const T = @TypeOf(t);
    if (comptime is_tuple(T)) {
        inline for (0..comptime rank(T)) |i| {
            fill_flatten(result, offset + flat_prefix(T, i), t[i]);
        }
    } else {
        result[offset] = t;
    }
}

fn flat_prefix(comptime T: type, comptime end: usize) usize {
    comptime var total = 0;
    inline for (0..end) |i| {
        const ChildT = switch (@typeInfo(T)) {
            .@"struct" => |s| s.fields[i].type,
            .array => |a| a.child,
            else => unreachable,
        };
        total += flat_rank(ChildT);
    }
    return total;
}

fn flat_rank(comptime T: type) usize {
    @setEvalBranchQuota(50_000);
    if (comptime is_tuple(T)) {
        comptime var total = 0;
        inline for (0..comptime rank(T)) |i| {
            const ChildT = switch (@typeInfo(T)) {
                .@"struct" => |s| s.fields[i].type,
                .array => |a| a.child,
                else => unreachable,
            };
            total += flat_rank(ChildT);
        }
        return total;
    }
    return 1;
}

fn FlattenType(comptime T: type) type {
    @setEvalBranchQuota(50_000);
    const N = flat_rank(T);
    comptime var fields: [N]type = undefined;
    fill_flatten_types(T, &fields, 0);
    return TupleType(&fields);
}

fn fill_flatten_types(comptime T: type, comptime fields: []type, comptime offset: usize) void {
    if (comptime is_tuple(T)) {
        comptime var current = offset;
        inline for (0..comptime rank(T)) |i| {
            const ChildT = switch (@typeInfo(T)) {
                .@"struct" => |s| s.fields[i].type,
                .array => |a| a.child,
                else => unreachable,
            };
            fill_flatten_types(ChildT, fields, current);
            current += flat_rank(ChildT);
        }
    } else {
        fields[offset] = T;
    }
}

pub fn add(a: anytype, b: anytype) ArithmeticType(@TypeOf(a), @TypeOf(b), .add) {
    return arithmetic(a, b, .add);
}

pub fn sub(a: anytype, b: anytype) ArithmeticType(@TypeOf(a), @TypeOf(b), .sub) {
    return arithmetic(a, b, .sub);
}

pub fn mul(a: anytype, b: anytype) ArithmeticType(@TypeOf(a), @TypeOf(b), .mul) {
    return arithmetic(a, b, .mul);
}

pub fn ceil_div(a: anytype, b: anytype) DivType(@TypeOf(a), @TypeOf(b), .ceil_div) {
    const TA = @TypeOf(a);
    const TB = @TypeOf(b);
    if (comptime is_tuple(TA) and is_tuple(TB)) {
        comptime if (rank(TA) < rank(TB)) @compileError("Mismatched ranks in ceil_div");
        const R = comptime rank(TA);
        const bb = append_to_rank(R, b, numeric._1);
        var result: DivType(TA, TB, .ceil_div) = undefined;
        inline for (0..R) |i| result[i] = ceil_div(a[i], bb[i]);
        return result;
    } else if (comptime is_tuple(TA)) {
        return div_tuple_by_scalar(.ceil_div, a, b);
    } else if (comptime is_tuple(TB)) {
        return ceil_div(a, product(b));
    } else {
        const av = numeric.value(a);
        const bv = numeric.value(b);
        return static_or_usize(TA, TB, .ceil_div, @divTrunc(av + bv - 1, bv));
    }
}

pub fn round_up(a: anytype, b: anytype) DivType(@TypeOf(a), @TypeOf(b), .round_up) {
    const TA = @TypeOf(a);
    const TB = @TypeOf(b);
    if (comptime is_tuple(TA) and is_tuple(TB)) {
        comptime if (rank(TA) < rank(TB)) @compileError("Mismatched ranks in round_up");
        const R = comptime rank(TA);
        const bb = append_to_rank(R, b, numeric._1);
        var result: DivType(TA, TB, .round_up) = undefined;
        inline for (0..R) |i| result[i] = round_up(a[i], bb[i]);
        return result;
    } else {
        const cd = ceil_div(a, b);
        return mul(cd, b);
    }
}

pub fn shape_div(a: anytype, b: anytype) DivType(@TypeOf(a), @TypeOf(b), .shape_div) {
    const TA = @TypeOf(a);
    const TB = @TypeOf(b);
    if (comptime is_tuple(TA) and is_tuple(TB)) {
        comptime if (rank(TA) != rank(TB)) @compileError("Mismatched ranks in shape_div");
        var result: DivType(TA, TB, .shape_div) = undefined;
        inline for (0..comptime rank(TA)) |i| result[i] = shape_div(a[i], b[i]);
        return result;
    } else if (comptime is_tuple(TA)) {
        return div_tuple_by_scalar(.shape_div, a, b);
    } else if (comptime is_tuple(TB)) {
        return shape_div(a, product(b));
    } else {
        const av = numeric.value(a);
        const bv = numeric.value(b);
        comptime if (numeric.is_static_int(TA) and numeric.is_static_int(TB)) {
            if ((TA.static_value % TB.static_value) != 0 and (TB.static_value % TA.static_value) != 0) {
                @compileError("shape_div static values must be weakly divisible");
            }
        };
        return static_or_usize(TA, TB, .shape_div, @divTrunc(av + bv - 1, bv));
    }
}

pub fn elem_scale(a: anytype, b: anytype) ElemScaleType(@TypeOf(a), @TypeOf(b)) {
    if (comptime is_tuple(@TypeOf(a))) {
        var result: ElemScaleType(@TypeOf(a), @TypeOf(b)) = undefined;
        inline for (0..comptime rank(@TypeOf(a))) |i| result[i] = elem_scale(a[i], b[i]);
        return result;
    }
    return mul(a, product(b));
}

pub fn weakly_congruent(a: anytype, b: anytype) bool {
    const TA = @TypeOf(a);
    const TB = @TypeOf(b);
    if (comptime is_tuple(TA) and is_tuple(TB)) {
        if (comptime rank(TA) != rank(TB)) return false;
        inline for (0..comptime rank(TA)) |i| {
            if (!weakly_congruent(a[i], b[i])) return false;
        }
        return true;
    } else if (comptime is_int(TA)) {
        return true;
    } else if (comptime is_int(TB)) {
        return false;
    } else {
        return false;
    }
}

pub fn compatible(a: anytype, b: anytype) bool {
    const TA = @TypeOf(a);
    const TB = @TypeOf(b);
    if (comptime is_tuple(TA) and is_tuple(TB)) {
        if (comptime rank(TA) != rank(TB)) return false;
        inline for (0..comptime rank(TA)) |i| {
            if (!compatible(a[i], b[i])) return false;
        }
        return true;
    } else if (comptime is_int(TA)) {
        return numeric.value(a) == size(b);
    } else if (comptime is_int(TB)) {
        return false;
    } else {
        return false;
    }
}

pub fn congruent(a: anytype, b: anytype) bool {
    return same_profile(@TypeOf(a), @TypeOf(b));
}

fn same_profile(comptime A: type, comptime B: type) bool {
    const at = comptime is_tuple(A);
    const bt = comptime is_tuple(B);
    if (at != bt) return false;
    if (!at) return true;
    if (comptime rank(A) != rank(B)) return false;
    inline for (0..comptime rank(A)) |i| {
        if (!same_profile(child_type(A, i), child_type(B, i))) return false;
    }
    return true;
}

pub fn evenly_divides(a: anytype, b: anytype) bool {
    const TB = @TypeOf(b);
    if (comptime is_tuple(TB)) {
        if (comptime rank(TB) > rank(@TypeOf(a))) return false;
        inline for (0..comptime rank(TB)) |i| {
            if (!evenly_divides(a[i], b[i])) return false;
        }
        return true;
    }
    return size(a) == size(b) * size(ceil_div(shape(a), b));
}

const ArithmeticOp = enum { add, sub, mul };
const DivOp = enum { ceil_div, round_up, shape_div };

fn arithmetic(a: anytype, b: anytype, comptime op: ArithmeticOp) ArithmeticType(@TypeOf(a), @TypeOf(b), op) {
    const TA = @TypeOf(a);
    const TB = @TypeOf(b);
    if (comptime is_tuple(TA) or is_tuple(TB)) {
        const R = comptime @max(if (is_tuple(TA)) rank(TA) else 1, if (is_tuple(TB)) rank(TB) else 1);
        const aa = append_to_rank(R, a, numeric._0);
        const bb = append_to_rank(R, b, numeric._0);
        var result: ArithmeticType(TA, TB, op) = undefined;
        inline for (0..R) |i| result[i] = arithmetic(aa[i], bb[i], op);
        return result;
    }

    return switch (op) {
        .add => numeric.add(a, b),
        .sub => numeric.sub(a, b),
        .mul => numeric.mul(a, b),
    };
}

pub fn ArithmeticType(comptime TA: type, comptime TB: type, comptime op: ArithmeticOp) type {
    if (comptime is_tuple(TA) or is_tuple(TB)) {
        const R = comptime @max(if (is_tuple(TA)) rank(TA) else 1, if (is_tuple(TB)) rank(TB) else 1);
        const A = AppendToRankType(R, TA, @TypeOf(numeric._0));
        const B = AppendToRankType(R, TB, @TypeOf(numeric._0));
        comptime var fields: [R]type = undefined;
        inline for (0..R) |i| {
            const AT = switch (@typeInfo(A)) {
                .@"struct" => |s| s.fields[i].type,
                .array => |a| a.child,
                else => A,
            };
            const BT = switch (@typeInfo(B)) {
                .@"struct" => |s| s.fields[i].type,
                .array => |a| a.child,
                else => B,
            };
            fields[i] = ArithmeticType(AT, BT, op);
        }
        return TupleType(&fields);
    }
    const av = if (numeric.is_static_int(TA)) TA.static_value else 0;
    const bv = if (numeric.is_static_int(TB)) TB.static_value else 0;
    if (comptime numeric.is_static_int(TA) and numeric.is_static_int(TB)) {
        return switch (op) {
            .add => numeric.C(av + bv),
            .sub => numeric.C(av - bv),
            .mul => numeric.C(av * bv),
        };
    }
    return usize;
}

fn static_or_usize(comptime TA: type, comptime TB: type, comptime op: DivOp, result: anytype) DivType(TA, TB, op) {
    if (comptime numeric.is_static_int(TA) and numeric.is_static_int(TB)) return .{};
    return @as(usize, @intCast(numeric.value(result)));
}

fn static_product_type(comptime T: type) comptime_int {
    if (comptime is_tuple(T)) {
        comptime var total: comptime_int = 1;
        inline for (0..comptime rank(T)) |i| {
            total *= static_product_type(child_type(T, i));
        }
        return total;
    }
    if (comptime numeric.is_static_int(T)) return T.static_value;
    @compileError("static_product_type requires all-static shape");
}

fn div_tuple_by_scalar(comptime op: DivOp, a: anytype, b: anytype) DivType(@TypeOf(a), @TypeOf(b), op) {
    var result: DivType(@TypeOf(a), @TypeOf(b), op) = undefined;
    comptime var rest_value: ?comptime_int = if (numeric.is_static_int(@TypeOf(b))) @TypeOf(b).static_value else null;
    var rest_runtime: usize = @as(usize, @intCast(numeric.value(b)));

    inline for (0..comptime rank(@TypeOf(a))) |i| {
        const use_static_rest = comptime rest_value != null and numeric.is_static_int(@TypeOf(a[i]));
        const rest = if (use_static_rest)
            numeric.C(rest_value.?){}
        else
            rest_runtime;

        result[i] = switch (op) {
            .ceil_div => ceil_div(a[i], rest),
            .round_up => round_up(a[i], rest),
            .shape_div => shape_div(a[i], rest),
        };

        const ai_runtime = product(a[i]);
        if (!use_static_rest) {
            rest_runtime = @divTrunc(rest_runtime + ai_runtime - 1, ai_runtime);
        }

        if (comptime use_static_rest) {
            const ai = comptime StaticProductType(@TypeOf(a[i])).static_value;
            rest_value = switch (op) {
                .ceil_div, .round_up => @divTrunc(rest_value.? + ai - 1, ai),
                .shape_div => blk: {
                    if ((rest_value.? % ai) != 0 and (ai % rest_value.?) != 0) {
                        @compileError("shape_div static values must be weakly divisible");
                    }
                    break :blk @divTrunc(rest_value.? + ai - 1, ai);
                },
            };
            rest_runtime = @as(usize, @intCast(rest_value.?));
        } else {
            rest_value = null;
        }
    }
    return result;
}

fn DivType(comptime TA: type, comptime TB: type, comptime op: DivOp) type {
    if (comptime is_tuple(TA) and is_tuple(TB)) {
        const R = comptime rank(TA);
        const B = if (op == .shape_div) TB else AppendToRankType(R, TB, @TypeOf(numeric._1));
        comptime var fields: [R]type = undefined;
        inline for (0..R) |i| {
            const AT = child_type(TA, i);
            const BT = child_type(B, i);
            fields[i] = DivType(AT, BT, op);
        }
        return TupleType(&fields);
    } else if (comptime is_tuple(TA)) {
        const R = comptime rank(TA);
        comptime var fields: [R]type = undefined;
        comptime var RestT = TB;
        inline for (0..R) |i| {
            const AT = child_type(TA, i);
            fields[i] = DivType(AT, RestT, op);
            RestT = DivType(RestT, AT, .ceil_div);
        }
        return TupleType(&fields);
    } else if (comptime is_tuple(TB)) {
        return DivType(TA, usize, op);
    }
    if (comptime numeric.is_static_int(TA) and numeric.is_static_int(TB)) {
        const av = TA.static_value;
        const bv = TB.static_value;
        return switch (op) {
            .ceil_div, .shape_div => numeric.C(@divTrunc(av + bv - 1, bv)),
            .round_up => numeric.C(@divTrunc(av + bv - 1, bv) * bv),
        };
    }
    return usize;
}

fn ElemScaleType(comptime TA: type, comptime TB: type) type {
    if (comptime is_tuple(TA)) {
        const R = comptime rank(TA);
        comptime var fields: [R]type = undefined;
        inline for (0..R) |i| fields[i] = ElemScaleType(child_type(TA, i), child_type(TB, i));
        return TupleType(&fields);
    }
    return ArithmeticType(TA, usize, .mul);
}

fn child_type(comptime T: type, comptime i: usize) type {
    return switch (@typeInfo(T)) {
        .@"struct" => |s| s.fields[i].type,
        .array => |a| a.child,
        else => T,
    };
}

test "static integers participate in tuple size and inner product" {
    const test_shape = .{ numeric._2, numeric._4 };
    const stride = .{ numeric._1, numeric._2 };

    try std.testing.expectEqual(@as(usize, 2), rank(@TypeOf(test_shape)));
    try std.testing.expectEqual(@as(usize, 8), size(test_shape));
    try std.testing.expectEqual(@as(usize, 5), inner_product(.{ numeric._1, numeric._2 }, stride));
}

test "tuple append take flatten and arithmetic basics" {
    const t = .{ numeric._2, .{ numeric._3, numeric._4 } };
    const flat = flatten(t);
    try std.testing.expectEqual(@as(usize, 3), rank(@TypeOf(flat)));
    try std.testing.expectEqual(@as(comptime_int, 2), numeric.value(flat[0]));
    try std.testing.expectEqual(@as(comptime_int, 4), numeric.value(flat[2]));

    const appended = append(.{ numeric._1, numeric._2 }, numeric._3);
    try std.testing.expectEqual(@as(usize, 3), rank(@TypeOf(appended)));
    try std.testing.expectEqual(@as(comptime_int, 3), numeric.value(appended[2]));

    const taken = take(1, 3, appended);
    try std.testing.expectEqual(@as(usize, 2), rank(@TypeOf(taken)));
    try std.testing.expectEqual(@as(comptime_int, 2), numeric.value(taken[0]));

    const tuple_sum = add(.{ numeric._1, numeric._2 }, .{ numeric._3, numeric._4 });
    try std.testing.expectEqual(@as(comptime_int, 4), numeric.value(tuple_sum[0]));
    try std.testing.expectEqual(@as(comptime_int, 6), numeric.value(tuple_sum[1]));
}

test "runtime int tuple division works" {
    const x: usize = 5;
    const y: usize = 2;

    try std.testing.expectEqual(@as(usize, 3), ceil_div(x, y));
    try std.testing.expectEqual(@as(usize, 6), round_up(x, y));
}

test "integer tuple division and compatibility basics" {
    try std.testing.expectEqual(@as(comptime_int, 3), numeric.value(ceil_div(numeric._5, numeric._2)));
    try std.testing.expectEqual(@as(comptime_int, 8), numeric.value(round_up(numeric._5, numeric._4)));
    try std.testing.expectEqual(@as(comptime_int, 4), numeric.value(shape_div(numeric._8, numeric._2)));

    const m: usize = 4;
    const div_m = shape_div(.{ m, numeric._5, numeric._6 }, numeric.C(40){});
    try std.testing.expectEqual(@as(usize, 1), div_m[0]);
    try std.testing.expectEqual(@as(usize, 1), div_m[1]);
    try std.testing.expectEqual(@as(usize, 3), div_m[2]);

    const div_static = shape_div(.{ numeric._4, numeric._5, numeric._6 }, numeric.C(40){});
    try std.testing.expectEqual(@as(comptime_int, 1), numeric.value(div_static[0]));
    try std.testing.expectEqual(@as(comptime_int, 1), numeric.value(div_static[1]));
    try std.testing.expectEqual(@as(comptime_int, 3), numeric.value(div_static[2]));
}

test "shape profile and divisibility basics" {
    const b: usize = 40;
    const runtime_div = shape_div(.{ numeric._4, numeric._5, numeric._6 }, b);
    try std.testing.expectEqual(@as(usize, 1), runtime_div[0]);
    try std.testing.expectEqual(@as(usize, 1), runtime_div[1]);
    try std.testing.expectEqual(@as(usize, 3), runtime_div[2]);

    try std.testing.expect(weakly_congruent(.{ numeric._2, numeric._3 }, .{ numeric._4, numeric._5 }));
    try std.testing.expect(!weakly_congruent(.{ numeric._2, .{ numeric._3 } }, .{ numeric._2, numeric._3 }));
    try std.testing.expect(compatible(.{ numeric._2, numeric._3 }, .{ numeric._2, numeric._3 }));

    const nested = .{ numeric._2, .{ numeric._3, numeric._4 } };
    try std.testing.expectEqual(@as(usize, 9), sum(nested));

    const each = product_each(nested);
    try std.testing.expectEqual(@as(usize, 2), each[0]);
    try std.testing.expectEqual(@as(usize, 12), each[1]);

    try std.testing.expect(congruent(.{ numeric._2, .{ numeric._3 } }, .{ numeric._4, .{ numeric._5 } }));
    try std.testing.expect(!congruent(.{ numeric._2, .{ numeric._3 } }, .{ numeric._4, numeric._5 }));
    try std.testing.expect(evenly_divides(.{ numeric._8, numeric._16 }, .{ numeric._4, numeric._8 }));
    try std.testing.expect(evenly_divides(.{ numeric._8, numeric._16 }, numeric._4));
}
