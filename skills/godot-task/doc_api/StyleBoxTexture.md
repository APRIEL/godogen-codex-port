## StyleBoxTexture <- StyleBox

A texture-based nine-patch StyleBox, in a way similar to NinePatchRect. This stylebox performs a 3×3 scaling of a texture, where only the center cell is fully stretched. This makes it possible to design bordered styles regardless of the stylebox's size.

**Props:**
- axis_stretch_horizontal: int (StyleBoxTexture.AxisStretchMode) = 0
- axis_stretch_vertical: int (StyleBoxTexture.AxisStretchMode) = 0
- draw_center: bool = true
- expand_margin_bottom: float = 0.0
- expand_margin_left: float = 0.0
- expand_margin_right: float = 0.0
- expand_margin_top: float = 0.0
- modulate_color: Color = Color(1, 1, 1, 1)
- region_rect: Rect2 = Rect2(0, 0, 0, 0)
- texture: Texture2D
- texture_margin_bottom: float = 0.0
- texture_margin_left: float = 0.0
- texture_margin_right: float = 0.0
- texture_margin_top: float = 0.0

**Methods:**
- get_expand_margin(margin: int) -> float
- get_texture_margin(margin: int) -> float
- set_expand_margin(margin: int, size: float)
- set_expand_margin_all(size: float)
- set_texture_margin(margin: int, size: float)
- set_texture_margin_all(size: float)

**Enums:**
**AxisStretchMode:** AXIS_STRETCH_MODE_STRETCH=0, AXIS_STRETCH_MODE_TILE=1, AXIS_STRETCH_MODE_TILE_FIT=2

