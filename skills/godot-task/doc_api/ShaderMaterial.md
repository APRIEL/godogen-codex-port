## ShaderMaterial <- Material

A material that uses a custom Shader program to render visual items (canvas items, meshes, skies, fog), or to process particles. Compared to other materials, ShaderMaterial gives deeper control over the generated shader code. For more information, see the shaders documentation index below. Multiple ShaderMaterials can use the same shader and configure different values for the shader uniforms. **Note:** For performance reasons, the `Resource.changed` signal is only emitted when the `Resource.resource_name` changes. Only in editor, it is also emitted for `shader` changes.

**Props:**
- shader: Shader

**Methods:**
- get_shader_parameter(param: StringName) -> Variant
- set_shader_parameter(param: StringName, value: Variant)

