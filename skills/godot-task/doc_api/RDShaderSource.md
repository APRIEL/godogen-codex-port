## RDShaderSource <- RefCounted

Shader source code in text form. See also RDShaderFile. RDShaderSource is only meant to be used with the RenderingDevice API. It should not be confused with Godot's own Shader resource, which is what Godot's various nodes use for high-level shader programming.

**Props:**
- language: int (RenderingDevice.ShaderLanguage) = 0
- source_any_hit: String = ""
- source_closest_hit: String = ""
- source_compute: String = ""
- source_fragment: String = ""
- source_intersection: String = ""
- source_miss: String = ""
- source_raygen: String = ""
- source_tesselation_control: String = ""
- source_tesselation_evaluation: String = ""
- source_vertex: String = ""

**Methods:**
- get_stage_source(stage: int) -> String
- set_stage_source(stage: int, source: String)

