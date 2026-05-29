const cute = @import("cute");

pub fn main() void {
    const op = cute.arch.db.mma_sm80.SM80_16x8x16_F32F16F16F32_TN;
    const traits = .{
        .name = "SM80_16x8x16_F32F16F16F32_TN",
        .shape_mnk = .{ 16, 8, 16 },
        .layout_a = cute.layout.make_layout(.{ 1, 1 }, .{ 0, 0 }),
        .layout_b = cute.layout.make_layout(.{ 1, 1 }, .{ 0, 0 }),
        .layout_c = cute.layout.make_layout(.{ 1, 1 }, .{ 0, 0 }),
    };
    _ = cute.atom.builders.MmaAtom(op, traits);
}
