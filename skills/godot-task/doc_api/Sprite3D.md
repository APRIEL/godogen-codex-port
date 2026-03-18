## Sprite3D <- SpriteBase3D

A node that displays a 2D texture in a 3D environment. The texture displayed can be a region from a larger atlas texture, or a frame from a sprite sheet animation. See also SpriteBase3D where properties such as the billboard mode are defined.

**Props:**
- frame: int = 0
- frame_coords: Vector2i = Vector2i(0, 0)
- hframes: int = 1
- region_enabled: bool = false
- region_rect: Rect2 = Rect2(0, 0, 0, 0)
- texture: Texture2D
- vframes: int = 1

**Signals:**
- frame_changed
- texture_changed

