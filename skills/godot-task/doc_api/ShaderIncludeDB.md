## ShaderIncludeDB <- Object

This object contains shader fragments from Godot's internal shaders. These can be used when access to internal uniform buffers and/or internal functions is required for instance when composing compositor effects or compute shaders. Only fragments for the current rendering device are loaded.

**Methods:**
- get_built_in_include_file(filename: String) -> String
- has_built_in_include_file(filename: String) -> bool
- list_built_in_include_files() -> PackedStringArray

