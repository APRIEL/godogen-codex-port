## TextureProgressBar <- Range

TextureProgressBar works like ProgressBar, but uses up to 3 textures instead of Godot's Theme resource. It can be used to create horizontal, vertical and radial progress bars.

**Props:**
- fill_mode: int = 0
- mouse_filter: int (Control.MouseFilter) = 1
- nine_patch_stretch: bool = false
- radial_center_offset: Vector2 = Vector2(0, 0)
- radial_fill_degrees: float = 360.0
- radial_initial_angle: float = 0.0
- size_flags_vertical: int (Control.SizeFlags) = 1
- step: float = 1.0
- stretch_margin_bottom: int = 0
- stretch_margin_left: int = 0
- stretch_margin_right: int = 0
- stretch_margin_top: int = 0
- texture_over: Texture2D
- texture_progress: Texture2D
- texture_progress_offset: Vector2 = Vector2(0, 0)
- texture_under: Texture2D
- tint_over: Color = Color(1, 1, 1, 1)
- tint_progress: Color = Color(1, 1, 1, 1)
- tint_under: Color = Color(1, 1, 1, 1)

**Methods:**
- get_stretch_margin(margin: int) -> int
- set_stretch_margin(margin: int, value: int)

**Enums:**
**FillMode:** FILL_LEFT_TO_RIGHT=0, FILL_RIGHT_TO_LEFT=1, FILL_TOP_TO_BOTTOM=2, FILL_BOTTOM_TO_TOP=3, FILL_CLOCKWISE=4, FILL_COUNTER_CLOCKWISE=5, FILL_BILINEAR_LEFT_AND_RIGHT=6, FILL_BILINEAR_TOP_AND_BOTTOM=7, FILL_CLOCKWISE_AND_COUNTER_CLOCKWISE=8

