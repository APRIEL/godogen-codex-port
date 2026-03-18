## SpriteBase3D <- GeometryInstance3D

A node that displays 2D texture information in a 3D environment. See also Sprite3D where many other properties are defined.

**Props:**
- alpha_antialiasing_edge: float = 0.0
- alpha_antialiasing_mode: int (BaseMaterial3D.AlphaAntiAliasing) = 0
- alpha_cut: int (SpriteBase3D.AlphaCutMode) = 0
- alpha_hash_scale: float = 1.0
- alpha_scissor_threshold: float = 0.5
- axis: int (Vector3.Axis) = 2
- billboard: int (BaseMaterial3D.BillboardMode) = 0
- centered: bool = true
- double_sided: bool = true
- fixed_size: bool = false
- flip_h: bool = false
- flip_v: bool = false
- modulate: Color = Color(1, 1, 1, 1)
- no_depth_test: bool = false
- offset: Vector2 = Vector2(0, 0)
- pixel_size: float = 0.01
- render_priority: int = 0
- shaded: bool = false
- texture_filter: int (BaseMaterial3D.TextureFilter) = 3
- transparent: bool = true

**Methods:**
- generate_triangle_mesh() -> TriangleMesh
- get_draw_flag(flag: int) -> bool
- get_item_rect() -> Rect2
- set_draw_flag(flag: int, enabled: bool)

**Enums:**
**DrawFlags:** FLAG_TRANSPARENT=0, FLAG_SHADED=1, FLAG_DOUBLE_SIDED=2, FLAG_DISABLE_DEPTH_TEST=3, FLAG_FIXED_SIZE=4, FLAG_MAX=5
**AlphaCutMode:** ALPHA_CUT_DISABLED=0, ALPHA_CUT_DISCARD=1, ALPHA_CUT_OPAQUE_PREPASS=2, ALPHA_CUT_HASH=3

