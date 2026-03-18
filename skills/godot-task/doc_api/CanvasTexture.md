## CanvasTexture <- Texture2D

CanvasTexture is an alternative to ImageTexture for 2D rendering. It allows using normal maps and specular maps in any node that inherits from CanvasItem. CanvasTexture also allows overriding the texture's filter and repeat mode independently of the node's properties (or the project settings). **Note:** CanvasTexture cannot be used in 3D. It will not display correctly when applied to any VisualInstance3D, such as Sprite3D or Decal. For physically-based materials in 3D, use BaseMaterial3D instead.

**Props:**
- diffuse_texture: Texture2D
- normal_texture: Texture2D
- resource_local_to_scene: bool = false
- specular_color: Color = Color(1, 1, 1, 1)
- specular_shininess: float = 1.0
- specular_texture: Texture2D
- texture_filter: int (CanvasItem.TextureFilter) = 0
- texture_repeat: int (CanvasItem.TextureRepeat) = 0

