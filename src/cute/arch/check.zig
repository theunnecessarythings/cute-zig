const std = @import("std");
const cute = @import("cute");

pub fn force_check() void {
    // 1. Instantiate every database module and one instruction
    // We use a series of local declarations to force the compiler to 
    // evaluate the generic Mma/Copy builders for each.
    
    inline for (std.meta.declarations(cute.arch.db)) |decl| {
        const mod = @field(cute.arch.db, decl.name);
        // This is tricky because we can't easily iterate instructions in the module
        // if they are many. We'll stick to the generated check file.
    }
}

// We'll update the generator to produce a 'pub fn check()' instead of a test.
