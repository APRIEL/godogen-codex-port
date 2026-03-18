## Label3D <- GeometryInstance3D

A node for displaying plain text in 3D space. By adjusting various properties of this node, you can configure things such as the text's appearance and whether it always faces the camera.

**Props:**
- alpha_antialiasing_edge: float = 0.0
- alpha_antialiasing_mode: int (BaseMaterial3D.AlphaAntiAliasing) = 0
- alpha_cut: int (Label3D.AlphaCutMode) = 0
- alpha_hash_scale: float = 1.0
- alpha_scissor_threshold: float = 0.5
- autowrap_mode: int (TextServer.AutowrapMode) = 0
- autowrap_trim_flags: int (TextServer.LineBreakFlag) = 192
- billboard: int (BaseMaterial3D.BillboardMode) = 0
- cast_shadow: int (GeometryInstance3D.ShadowCastingSetting) = 0
- double_sided: bool = true
- fixed_size: bool = false
- font: Font
- font_size: int = 32
- gi_mode: int (GeometryInstance3D.GIMode) = 0
- horizontal_alignment: int (HorizontalAlignment) = 1
- justification_flags: int (TextServer.JustificationFlag) = 163
- language: String = ""
- line_spacing: float = 0.0
- modulate: Color = Color(1, 1, 1, 1)
- no_depth_test: bool = false
- offset: Vector2 = Vector2(0, 0)
- outline_modulate: Color = Color(0, 0, 0, 1)
- outline_render_priority: int = -1
- outline_size: int = 12
- pixel_size: float = 0.005
- render_priority: int = 0
- shaded: bool = false
- structured_text_bidi_override: int (TextServer.StructuredTextParser) = 0
- structured_text_bidi_override_options: Array = []
- text: String = ""
- text_direction: int (TextServer.Direction) = 0
- texture_filter: int (BaseMaterial3D.TextureFilter) = 3
- uppercase: bool = false
- vertical_alignment: int (VerticalAlignment) = 1
- width: float = 500.0

**Methods:**
- generate_triangle_mesh() -> TriangleMesh
- get_draw_flag(flag: int) -> bool
- set_draw_flag(flag: int, enabled: bool)

**Enums:**
**DrawFlags:** FLAG_SHADED=0, FLAG_DOUBLE_SIDED=1, FLAG_DISABLE_DEPTH_TEST=2, FLAG_FIXED_SIZE=3, FLAG_MAX=4
**AlphaCutMode:** ALPHA_CUT_DISABLED=0, ALPHA_CUT_DISCARD=1, ALPHA_CUT_OPAQUE_PREPASS=2, ALPHA_CUT_HASH=3

