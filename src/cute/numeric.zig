const std = @import("std");

/// Static integer value carried entirely by the type, matching CuTe's `C<v>` /
/// `Int<N>` role.
pub fn C(comptime n: comptime_int) type {
    return struct {
        pub const static_value = n;
        pub const value_type = comptime_int;

        pub fn get(_: @This()) comptime_int {
            return n;
        }
    };
}

pub fn Int(comptime n: comptime_int) type {
    return C(n);
}

pub fn c(comptime n: comptime_int) C(n) {
    return .{};
}

pub fn is_static_int(comptime T: type) bool {
    return switch (@typeInfo(T)) {
        .@"struct", .@"enum", .@"union", .@"opaque" => @hasDecl(T, "static_value"),
        else => false,
    };
}

pub fn is_integral(comptime T: type) bool {
    return switch (@typeInfo(T)) {
        .int, .comptime_int => true,
        else => is_static_int(T),
    };
}

pub fn value(x: anytype) if (is_static_int(@TypeOf(x))) comptime_int else @TypeOf(x) {
    const T = @TypeOf(x);
    if (comptime is_static_int(T)) return T.static_value;
    return x;
}

pub fn is_constant(comptime expected: comptime_int, comptime T: type) bool {
    return is_static_int(T) and T.static_value == expected;
}

pub fn negate(x: anytype) if (is_static_int(@TypeOf(x))) C(-value(x)) else @TypeOf(-value(x)) {
    if (comptime is_static_int(@TypeOf(x))) return .{};
    return -value(x);
}

pub fn add(a: anytype, b: anytype) if (is_static_int(@TypeOf(a)) and is_static_int(@TypeOf(b))) C(value(a) + value(b)) else @TypeOf(value(a) + value(b)) {
    if (comptime is_static_int(@TypeOf(a)) and is_static_int(@TypeOf(b))) return .{};
    return value(a) + value(b);
}

pub fn sub(a: anytype, b: anytype) if (is_static_int(@TypeOf(a)) and is_static_int(@TypeOf(b))) C(value(a) - value(b)) else @TypeOf(value(a) - value(b)) {
    if (comptime is_static_int(@TypeOf(a)) and is_static_int(@TypeOf(b))) return .{};
    return value(a) - value(b);
}

pub fn mul(a: anytype, b: anytype) if (is_static_int(@TypeOf(a)) and is_static_int(@TypeOf(b))) C(value(a) * value(b)) else @TypeOf(value(a) * value(b)) {
    if (comptime is_static_int(@TypeOf(a)) and is_static_int(@TypeOf(b))) return .{};
    return value(a) * value(b);
}

pub fn div(a: anytype, b: anytype) if (is_static_int(@TypeOf(a)) and is_static_int(@TypeOf(b))) C(@divTrunc(value(a), value(b))) else @TypeOf(@divTrunc(value(a), value(b))) {
    if (comptime is_static_int(@TypeOf(a)) and is_static_int(@TypeOf(b))) return .{};
    return @divTrunc(value(a), value(b));
}

pub const _0 = C(0){};
pub const _1 = C(1){};
pub const _2 = C(2){};
pub const _3 = C(3){};
pub const _4 = C(4){};
pub const _5 = C(5){};
pub const _6 = C(6){};
pub const _7 = C(7){};
pub const _8 = C(8){};
pub const _16 = C(16){};
pub const _32 = C(32){};
pub const _64 = C(64){};
pub const _128 = C(128){};
pub const _256 = C(256){};

test "static integer arithmetic preserves static values" {
    const seven = add(_3, _4);
    try std.testing.expect(comptime is_static_int(@TypeOf(seven)));
    try std.testing.expectEqual(@as(comptime_int, 7), value(seven));
    try std.testing.expectEqual(@as(comptime_int, 12), value(mul(_3, _4)));
    try std.testing.expectEqual(@as(comptime_int, -3), value(negate(_3)));
    try std.testing.expect(comptime is_constant(4, @TypeOf(_4)));
}

test "runtime integer arithmetic works" {
    const x: usize = 3;
    const y: usize = 4;
    try std.testing.expectEqual(@as(usize, 7), add(x, y));
    try std.testing.expectEqual(@as(usize, 12), mul(x, y));
}
