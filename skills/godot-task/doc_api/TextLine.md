## TextLine <- RefCounted

Abstraction over TextServer for handling a single line of text.

**Props:**
- alignment: int (HorizontalAlignment) = 0
- direction: int (TextServer.Direction) = 0
- ellipsis_char: String = "…"
- flags: int (TextServer.JustificationFlag) = 3
- orientation: int (TextServer.Orientation) = 0
- preserve_control: bool = false
- preserve_invalid: bool = true
- text_overrun_behavior: int (TextServer.OverrunBehavior) = 3
- width: float = -1.0

**Methods:**
- add_object(key: Variant, size: Vector2, inline_align: int = 5, length: int = 1, baseline: float = 0.0) -> bool
- add_string(text: String, font: Font, font_size: int, language: String = "", meta: Variant = null) -> bool
- clear()
- draw(canvas: RID, pos: Vector2, color: Color = Color(1, 1, 1, 1), oversampling: float = 0.0)
- draw_outline(canvas: RID, pos: Vector2, outline_size: int = 1, color: Color = Color(1, 1, 1, 1), oversampling: float = 0.0)
- duplicate() -> TextLine
- get_inferred_direction() -> int
- get_line_ascent() -> float
- get_line_descent() -> float
- get_line_underline_position() -> float
- get_line_underline_thickness() -> float
- get_line_width() -> float
- get_object_rect(key: Variant) -> Rect2
- get_objects() -> Array
- get_rid() -> RID
- get_size() -> Vector2
- has_object(key: Variant) -> bool
- hit_test(coords: float) -> int
- resize_object(key: Variant, size: Vector2, inline_align: int = 5, baseline: float = 0.0) -> bool
- set_bidi_override(override: Array)
- tab_align(tab_stops: PackedFloat32Array)

