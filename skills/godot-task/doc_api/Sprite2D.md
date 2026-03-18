## Sprite2D <- Node2D

A node that displays a 2D texture. The texture displayed can be a region from a larger atlas texture, or a frame from a sprite sheet animation.

**Props:**
- centered: bool = true
- flip_h: bool = false
- flip_v: bool = false
- frame: int = 0
- frame_coords: Vector2i = Vector2i(0, 0)
- hframes: int = 1
- offset: Vector2 = Vector2(0, 0)
- region_enabled: bool = false
- region_filter_clip_enabled: bool = false
- region_rect: Rect2 = Rect2(0, 0, 0, 0)
- texture: Texture2D
- vframes: int = 1

**Methods:**
- get_rect() -> Rect2
- is_pixel_opaque(pos: Vector2) -> bool

**Signals:**
- frame_changed
- texture_changed

