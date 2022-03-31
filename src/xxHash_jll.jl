# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule xxHash_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("xxHash")
JLLWrappers.@generate_main_file("xxHash", UUID("5fdcd639-92d1-5a06-bf6b-28f2061df1a9"))
end  # module xxHash_jll
