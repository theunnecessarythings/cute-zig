const std = @import("std");

/// The Underscore type represents a placeholder for slicing and layout manipulation.
/// In CuTe, `_` means "keep this mode/dimension".
pub const Underscore = struct {};

/// A global instance of Underscore, mirroring CuTe's `_` or `cute::_`.
pub const _ = Underscore{};

pub fn is_underscore(comptime T: type) bool {
    return T == Underscore;
}
