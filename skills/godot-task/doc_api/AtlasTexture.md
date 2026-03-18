## AtlasTexture <- Texture2D

Texture2D resource that draws only part of its `atlas` texture, as defined by the `region`. An additional `margin` can also be set, which is useful for small adjustments. Multiple AtlasTexture resources can be cropped from the same `atlas`. Packing many smaller textures into a singular large texture helps to optimize video memory costs and render calls. **Note:** AtlasTexture cannot be used in an AnimatedTexture, and will not tile properly in nodes such as TextureRect or Sprite2D. To tile an AtlasTexture, modify its `region` instead.

**Props:**
- atlas: Texture2D
- filter_clip: bool = false
- margin: Rect2 = Rect2(0, 0, 0, 0)
- region: Rect2 = Rect2(0, 0, 0, 0)
- resource_local_to_scene: bool = false

