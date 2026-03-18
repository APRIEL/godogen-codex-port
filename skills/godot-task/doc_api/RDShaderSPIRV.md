## RDShaderSPIRV <- Resource

RDShaderSPIRV represents an RDShaderFile's code for various shader stages, as well as possible compilation error messages. SPIR-V is a low-level intermediate shader representation. This intermediate representation is not used directly by GPUs for rendering, but it can be compiled into binary shaders that GPUs can understand. Unlike compiled shaders, SPIR-V is portable across GPU models and driver versions. This object is used by RenderingDevice.

**Props:**
- bytecode_any_hit: PackedByteArray = PackedByteArray()
- bytecode_closest_hit: PackedByteArray = PackedByteArray()
- bytecode_compute: PackedByteArray = PackedByteArray()
- bytecode_fragment: PackedByteArray = PackedByteArray()
- bytecode_intersection: PackedByteArray = PackedByteArray()
- bytecode_miss: PackedByteArray = PackedByteArray()
- bytecode_raygen: PackedByteArray = PackedByteArray()
- bytecode_tesselation_control: PackedByteArray = PackedByteArray()
- bytecode_tesselation_evaluation: PackedByteArray = PackedByteArray()
- bytecode_vertex: PackedByteArray = PackedByteArray()
- compile_error_any_hit: String = ""
- compile_error_closest_hit: String = ""
- compile_error_compute: String = ""
- compile_error_fragment: String = ""
- compile_error_intersection: String = ""
- compile_error_miss: String = ""
- compile_error_raygen: String = ""
- compile_error_tesselation_control: String = ""
- compile_error_tesselation_evaluation: String = ""
- compile_error_vertex: String = ""

**Methods:**
- get_stage_bytecode(stage: int) -> PackedByteArray
- get_stage_compile_error(stage: int) -> String
- set_stage_bytecode(stage: int, bytecode: PackedByteArray)
- set_stage_compile_error(stage: int, compile_error: String)

