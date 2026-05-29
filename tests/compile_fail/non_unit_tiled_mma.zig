const cute = @import("cute");

pub fn main() void {
    const op = cute.arch.db.mma_sm80.SM80_16x8x16_F32F16F16F32_TN;
    const traits = cute.atom.db.mma_traits_sm80.SM80_16x8x16_F32F16F16F32_TN;
    const atom = cute.atom.builders.MmaAtom(op, traits);
    _ = cute.atom.builders.TiledMMA(atom, .{ 2, 1, 1 });
}
