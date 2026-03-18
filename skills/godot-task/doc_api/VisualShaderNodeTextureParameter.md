## VisualShaderNodeTextureParameter <- VisualShaderNodeParameter

Performs a lookup operation on the texture provided as a uniform for the shader.

**Props:**
- color_default: int (VisualShaderNodeTextureParameter.ColorDefault) = 0
- texture_filter: int (VisualShaderNodeTextureParameter.TextureFilter) = 0
- texture_repeat: int (VisualShaderNodeTextureParameter.TextureRepeat) = 0
- texture_source: int (VisualShaderNodeTextureParameter.TextureSource) = 0
- texture_type: int (VisualShaderNodeTextureParameter.TextureType) = 0

**Enums:**
**TextureType:** TYPE_DATA=0, TYPE_COLOR=1, TYPE_NORMAL_MAP=2, TYPE_ANISOTROPY=3, TYPE_MAX=4
**ColorDefault:** COLOR_DEFAULT_WHITE=0, COLOR_DEFAULT_BLACK=1, COLOR_DEFAULT_TRANSPARENT=2, COLOR_DEFAULT_MAX=3
**TextureFilter:** FILTER_DEFAULT=0, FILTER_NEAREST=1, FILTER_LINEAR=2, FILTER_NEAREST_MIPMAP=3, FILTER_LINEAR_MIPMAP=4, FILTER_NEAREST_MIPMAP_ANISOTROPIC=5, FILTER_LINEAR_MIPMAP_ANISOTROPIC=6, FILTER_MAX=7
**TextureRepeat:** REPEAT_DEFAULT=0, REPEAT_ENABLED=1, REPEAT_DISABLED=2, REPEAT_MAX=3
**TextureSource:** SOURCE_NONE=0, SOURCE_SCREEN=1, SOURCE_DEPTH=2, SOURCE_NORMAL_ROUGHNESS=3, SOURCE_MAX=4

