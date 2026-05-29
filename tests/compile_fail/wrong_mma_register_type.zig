const cute = @import("cute");

pub fn main() void {
    const op = cute.arch.db.mma_sm80.SM80_16x8x16_F32F16F16F32_TN;
    const traits = cute.atom.db.mma_traits_sm80.SM80_16x8x16_F32F16F16F32_TN;
    const atom = cute.atom.builders.MmaAtom(op, traits);

    var d: [4]f32 = undefined;
    var a: [4]f32 = undefined;
    var b: [2]u32 = undefined;
    var c: [4]f32 = undefined;

    const td = cute.tensor.make_tensor(@as([*]f32, &d), cute.layout.make_layout_1d(4));
    const ta = cute.tensor.make_tensor(@as([*]f32, &a), cute.layout.make_layout_1d(4));
    const tb = cute.tensor.make_tensor(@as([*]u32, &b), cute.layout.make_layout_1d(2));
    const tc = cute.tensor.make_tensor(@as([*]f32, &c), cute.layout.make_layout_1d(4));
    atom.fma(td, ta, tb, tc);
}
