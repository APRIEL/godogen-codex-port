## NinePatchRect <- Control

Also known as 9-slice panels, NinePatchRect produces clean panels of any size based on a small texture. To do so, it splits the texture in a 3×3 grid. When you scale the node, it tiles the texture's edges horizontally or vertically, tiles the center on both axes, and leaves the corners unchanged.

**Props:**
- axis_stretch_horizontal: int (NinePatchRect.AxisStretchMode) = 0
- axis_stretch_vertical: int (NinePatchRect.AxisStretchMode) = 0
- draw_center: bool = true
- mouse_filter: int (Control.MouseFilter) = 2
- patch_margin_bottom: int = 0
- patch_margin_left: int = 0
- patch_margin_right: int = 0
- patch_margin_top: int = 0
- region_rect: Rect2 = Rect2(0, 0, 0, 0)
- texture: Texture2D

**Methods:**
- get_patch_margin(margin: int) -> int
- set_patch_margin(margin: int, value: int)

**Signals:**
- texture_changed

**Enums:**
**AxisStretchMode:** AXIS_STRETCH_MODE_STRETCH=0, AXIS_STRETCH_MODE_TILE=1, AXIS_STRETCH_MODE_TILE_FIT=2

