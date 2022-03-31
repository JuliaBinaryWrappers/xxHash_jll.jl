# Autogenerated wrapper script for xxHash_jll for x86_64-linux-gnu
export libxxhash

JLLWrappers.@generate_wrapper_header("xxHash")
JLLWrappers.@declare_library_product(libxxhash, "libxxhash.so.0")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libxxhash,
        "lib/libxxhash.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
