## Shader <- Resource

A custom shader program implemented in the Godot shading language, saved with the `.gdshader` extension. This class is used by a ShaderMaterial and allows you to write your own custom behavior for rendering visual items or updating particle information. For a detailed explanation and usage, please see the tutorials linked below.

**Props:**
- code: String = ""

**Methods:**
- get_default_texture_parameter(name: StringName, index: int = 0) -> Texture
- get_mode() -> int
- get_shader_uniform_list(get_groups: bool = false) -> Array
- inspect_native_shader_code()
- set_default_texture_parameter(name: StringName, texture: Texture, index: int = 0)

**Enums:**
**Mode:** MODE_SPATIAL=0, MODE_CANVAS_ITEM=1, MODE_PARTICLES=2, MODE_SKY=3, MODE_FOG=4, MODE_TEXTURE_BLIT=5

