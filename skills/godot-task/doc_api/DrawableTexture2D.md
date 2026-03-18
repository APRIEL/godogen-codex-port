## DrawableTexture2D <- Texture2D

A 2D texture that can be modified via blit calls, copying from a target texture to itself. Primarily intended to be managed in code, a user must call `setup` to initialize the state before drawing. Each `blit_rect` call takes at least a rectangle, the area to draw to, and another texture, what to be drawn. The draw calls use a Texture_Blit Shader to process and calculate the result, pixel by pixel. Users can supply their own ShaderMaterial with custom Texture_Blit shaders for more complex behaviors.

**Props:**
- resource_local_to_scene: bool = false

**Methods:**
- blit_rect(rect: Rect2i, source: Texture2D, modulate: Color = Color(1, 1, 1, 1), mipmap: int = 0, material: Material = null)
- blit_rect_multi(rect: Rect2i, sources: Texture2D[], extra_targets: DrawableTexture2D[], modulate: Color = Color(1, 1, 1, 1), mipmap: int = 0, material: Material = null)
- generate_mipmaps()
- setup(width: int, height: int, format: int, color: Color = Color(1, 1, 1, 1), use_mipmaps: bool = false)

**Enums:**
**DrawableFormat:** DRAWABLE_FORMAT_RGBA8=0, DRAWABLE_FORMAT_RGBA8_SRGB=1, DRAWABLE_FORMAT_RGBAH=2, DRAWABLE_FORMAT_RGBAF=3

