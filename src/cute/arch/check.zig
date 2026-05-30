const std = @import("std");
const cute_arch_db = @import("db/mod.zig");
const types = @import("types.zig");

fn check_copy_inst(comptime inst: types.CopyInst) void {
    switch (inst.kind) {
        .smem_to_reg => {
            if (std.mem.indexOf(u8, inst.ptx, "ldmatrix") == null)
                @compileError(inst.name ++ " is smem_to_reg without load PTX");
            if (inst.src_space != .shared or inst.dst_space != .register)
                @compileError(inst.name ++ " has inconsistent address spaces");
            if (std.mem.indexOf(u8, inst.ptx, "[%[s0]]") == null)
                @compileError(inst.name ++ " must use named shared-memory source operand");
            if (std.mem.indexOf(u8, inst.ptx, "}, [%[s0]];") == null)
                @compileError(inst.name ++ " malformed ldmatrix destination/address separator");
        },
        .reg_to_smem => {
            if (std.mem.indexOf(u8, inst.ptx, "stmatrix") == null)
                @compileError(inst.name ++ " is reg_to_smem without store PTX");
            if (inst.src_space != .register or inst.dst_space != .shared)
                @compileError(inst.name ++ " has inconsistent address spaces");
            if (std.mem.indexOf(u8, inst.ptx, "[%[d0]], {") == null)
                @compileError(inst.name ++ " malformed stmatrix address/source separator");
        },
        .reg_to_reg => {
            if (std.mem.indexOf(u8, inst.ptx, "ldmatrix") != null or
                std.mem.indexOf(u8, inst.ptx, "stmatrix") != null or
                std.mem.indexOf(u8, inst.ptx, "tcgen05.ld") != null)
            {
                @compileError(inst.name ++ " memory operation incorrectly classified reg_to_reg");
            }
        },
        else => {},
    }
}

pub fn force_check() void {
    @setEvalBranchQuota(1000000);
    // 1. Instantiate every database module and one instruction
    // We use a series of local declarations to force the compiler to
    // evaluate the generic Mma/Copy builders for each.

    inline for (std.meta.declarations(cute_arch_db)) |decl| {
        const mod = @field(cute_arch_db, decl.name);

        // Skip explicitly unsupported modules
        if (@hasDecl(mod, "support_status")) {
            if (mod.support_status == .unsupported) continue;
        }

        var has_inst = false;

        inline for (std.meta.declarations(mod)) |mod_decl| {
            if (mod_decl.name.len > 0 and mod_decl.name[0] == 'S') {
                const T = @TypeOf(@field(mod, mod_decl.name));
                if (T == types.MmaInst) {
                    has_inst = true;
                    check_mma_inst(@field(mod, mod_decl.name));
                } else if (T == types.CopyInst) {
                    has_inst = true;
                    check_copy_inst(@field(mod, mod_decl.name));
                }
            }
        }

        // Modules like 'copy_sm80' which are empty should trigger a compile error,
        // unless they are utility/wrapper modules (not named smXX but util, config, mod).
        if (!has_inst and std.mem.indexOf(u8, decl.name, "sm") != null) {
            @compileError("Module " ++ decl.name ++ " is unexpectedly empty. Must be marked unsupported.");
        }
    }
}

fn check_mma_inst(comptime inst: types.MmaInst) void {
    const ptx = inst.ptx;

    // Only apply datatype string checks to typical SM7x/8x/9x mma.sync instructions
    if (std.mem.indexOf(u8, ptx, "mma.sync") != null) {
        var d_str = @tagName(inst.d_ty);
        var a_str = @tagName(inst.a_ty);
        var b_str = @tagName(inst.b_ty);
        var c_str = @tagName(inst.c_ty);

        if (std.mem.eql(u8, d_str, "u1")) d_str = "b1";
        if (std.mem.eql(u8, a_str, "u1")) a_str = "b1";
        if (std.mem.eql(u8, b_str, "u1")) b_str = "b1";
        if (std.mem.eql(u8, c_str, "u1")) c_str = "b1";

        const expected = comptime std.fmt.comptimePrint(".{s}.{s}.{s}.{s}", .{ d_str, a_str, b_str, c_str });
        if (std.mem.indexOf(u8, ptx, expected) == null) {
            @compileError("Ordered MMA datatype suffix mismatch for " ++ inst.name ++ ". Expected " ++ expected ++ " in " ++ ptx);
        }
    }
}

test "force_check generated database" {
    comptime {
        force_check();
    }
}
