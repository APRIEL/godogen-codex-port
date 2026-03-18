## VisualShaderNodeCubemap <- VisualShaderNode

Translated to `texture(cubemap, vec3)` in the shader language. Returns a color vector and alpha channel as scalar.

**Props:**
- cube_map: TextureLayered
- source: int (VisualShaderNodeCubemap.Source) = 0
- texture_type: int (VisualShaderNodeCubemap.TextureType) = 0

**Enums:**
**Source:** SOURCE_TEXTURE=0, SOURCE_PORT=1, SOURCE_MAX=2
**TextureType:** TYPE_DATA=0, TYPE_COLOR=1, TYPE_NORMAL_MAP=2, TYPE_MAX=3

