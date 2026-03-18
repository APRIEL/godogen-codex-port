## VisualShaderNodeTexture <- VisualShaderNode

Performs a lookup operation on the provided texture, with support for multiple texture sources to choose from.

**Props:**
- source: int (VisualShaderNodeTexture.Source) = 0
- texture: Texture2D
- texture_type: int (VisualShaderNodeTexture.TextureType) = 0

**Enums:**
**Source:** SOURCE_TEXTURE=0, SOURCE_SCREEN=1, SOURCE_2D_TEXTURE=2, SOURCE_2D_NORMAL=3, SOURCE_DEPTH=4, SOURCE_PORT=5, SOURCE_3D_NORMAL=6, SOURCE_ROUGHNESS=7, SOURCE_MAX=8
**TextureType:** TYPE_DATA=0, TYPE_COLOR=1, TYPE_NORMAL_MAP=2, TYPE_MAX=3

