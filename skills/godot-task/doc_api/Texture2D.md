## Texture2D <- Texture

A texture works by registering an image in the video hardware, which then can be used in 3D models or 2D Sprite2D or GUI Control. Textures are often created by loading them from a file. See `@GDScript.load`. Texture2D is a base for other resources. It cannot be used directly. **Note:** The maximum texture size is 16384×16384 pixels due to graphics hardware limitations. Larger textures may fail to import.

**Methods:**
- create_placeholder() -> Resource
- draw(canvas_item: RID, position: Vector2, modulate: Color = Color(1, 1, 1, 1), transpose: bool = false)
- draw_rect(canvas_item: RID, rect: Rect2, tile: bool, modulate: Color = Color(1, 1, 1, 1), transpose: bool = false)
- draw_rect_region(canvas_item: RID, rect: Rect2, src_rect: Rect2, modulate: Color = Color(1, 1, 1, 1), transpose: bool = false, clip_uv: bool = true)
- get_height() -> int
- get_image() -> Image
- get_size() -> Vector2
- get_width() -> int
- has_alpha() -> bool

