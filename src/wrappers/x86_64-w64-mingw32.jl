# Autogenerated wrapper script for xxHash_jll for x86_64-w64-mingw32
export libxxhash

JLLWrappers.@generate_wrapper_header("xxHash")
JLLWrappers.@declare_library_product(libxxhash, "libxxhash.dll")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libxxhash,
        "bin\\libxxhash.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
