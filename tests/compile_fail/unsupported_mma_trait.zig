const cute = @import("cute");

pub fn main() void {
    const op = cute.arch.db.mma_sm80.SM80_8x8x16_S32S8S8S32_TN;
    const traits = cute.atom.db.mma_traits_sm80.SM80_8x8x16_S32S8S8S32_TN;
    _ = cute.atom.builders.MmaAtom(op, traits);
}
