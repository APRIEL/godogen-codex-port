## RDShaderFile <- Resource

Compiled shader file in SPIR-V form. See also RDShaderSource. RDShaderFile is only meant to be used with the RenderingDevice API. It should not be confused with Godot's own Shader resource, which is what Godot's various nodes use for high-level shader programming.

**Props:**
- base_error: String = ""

**Methods:**
- get_spirv(version: StringName = &"") -> RDShaderSPIRV
- get_version_list() -> StringName[]
- set_bytecode(bytecode: RDShaderSPIRV, version: StringName = &"")

