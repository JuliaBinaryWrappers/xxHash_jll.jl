# Autogenerated wrapper script for xxHash_jll for x86_64-apple-darwin
export libxxhash

JLLWrappers.@generate_wrapper_header("xxHash")
JLLWrappers.@declare_library_product(libxxhash, "@rpath/libxxhash.0.dylib")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libxxhash,
        "lib/libxxhash.0.8.3.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
