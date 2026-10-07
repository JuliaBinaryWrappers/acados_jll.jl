# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule acados_jll
using Base
using Base: UUID
using LazyArtifacts
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("acados")
JLLWrappers.@generate_main_file("acados", Base.UUID("49ddb18e-ca18-5f65-a4dd-7588daaac186"))
end  # module acados_jll
