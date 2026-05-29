typedef void (*init_fn)(int, char **, char **);

extern void _init(void);
extern init_fn __init_array_start[] __attribute__((weak));
extern init_fn __init_array_end[] __attribute__((weak));

void __libc_csu_init(int argc, char **argv, char **envp) {
    _init();

    for (init_fn *fn = __init_array_start; fn < __init_array_end; fn += 1) {
        (*fn)(argc, argv, envp);
    }
}

void __libc_csu_fini(void) {}
