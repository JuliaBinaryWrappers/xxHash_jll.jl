# Autogenerated wrapper script for xxHash_jll for i686-w64-mingw32
export libxxhash

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "PATH"
LIBPATH_default = ""

# Relative path to `libxxhash`
const libxxhash_splitpath = ["bin", "libxxhash.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libxxhash_path = ""

# libxxhash-specific global declaration
# This will be filled out by __init__()
libxxhash_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libxxhash = "libxxhash.dll"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"xxHash")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libxxhash_path = normpath(joinpath(artifact_dir, libxxhash_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libxxhash_handle = dlopen(libxxhash_path)
    push!(LIBPATH_list, dirname(libxxhash_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ';')
    global LIBPATH = join(vcat(LIBPATH_list, [Sys.BINDIR, joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ';')

    
end  # __init__()

