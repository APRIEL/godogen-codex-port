## TextParagraph <- RefCounted

Abstraction over TextServer for handling a single paragraph of text.

**Props:**
- alignment: int (HorizontalAlignment) = 0
- break_flags: int (TextServer.LineBreakFlag) = 3
- custom_punctuation: String = ""
- direction: int (TextServer.Direction) = 0
- ellipsis_char: String = "…"
- justification_flags: int (TextServer.JustificationFlag) = 163
- line_spacing: float = 0.0
- max_lines_visible: int = -1
- orientation: int (TextServer.Orientation) = 0
- preserve_control: bool = false
- preserve_invalid: bool = true
- text_overrun_behavior: int (TextServer.OverrunBehavior) = 0
- width: float = -1.0

**Methods:**
- add_object(key: Variant, size: Vector2, inline_align: int = 5, length: int = 1, baseline: float = 0.0) -> bool
- add_string(text: String, font: Font, font_size: int, language: String = "", meta: Variant = null) -> bool
- clear()
- clear_dropcap()
- draw(canvas: RID, pos: Vector2, color: Color = Color(1, 1, 1, 1), dc_color: Color = Color(1, 1, 1, 1), oversampling: float = 0.0)
- draw_dropcap(canvas: RID, pos: Vector2, color: Color = Color(1, 1, 1, 1), oversampling: float = 0.0)
- draw_dropcap_outline(canvas: RID, pos: Vector2, outline_size: int = 1, color: Color = Color(1, 1, 1, 1), oversampling: float = 0.0)
- draw_line(canvas: RID, pos: Vector2, line: int, color: Color = Color(1, 1, 1, 1), oversampling: float = 0.0)
- draw_line_outline(canvas: RID, pos: Vector2, line: int, outline_size: int = 1, color: Color = Color(1, 1, 1, 1), oversampling: float = 0.0)
- draw_outline(canvas: RID, pos: Vector2, outline_size: int = 1, color: Color = Color(1, 1, 1, 1), dc_color: Color = Color(1, 1, 1, 1), oversampling: float = 0.0)
- duplicate() -> TextParagraph
- get_dropcap_lines() -> int
- get_dropcap_rid() -> RID
- get_dropcap_size() -> Vector2
- get_inferred_direction() -> int
- get_line_ascent(line: int) -> float
- get_line_count() -> int
- get_line_descent(line: int) -> float
- get_line_object_rect(line: int, key: Variant) -> Rect2
- get_line_objects(line: int) -> Array
- get_line_range(line: int) -> Vector2i
- get_line_rid(line: int) -> RID
- get_line_size(line: int) -> Vector2
- get_line_underline_position(line: int) -> float
- get_line_underline_thickness(line: int) -> float
- get_line_width(line: int) -> float
- get_non_wrapped_size() -> Vector2
- get_range() -> Vector2i
- get_rid() -> RID
- get_size() -> Vector2
- has_object(key: Variant) -> bool
- hit_test(coords: Vector2) -> int
- resize_object(key: Variant, size: Vector2, inline_align: int = 5, baseline: float = 0.0) -> bool
- set_bidi_override(override: Array)
- set_dropcap(text: String, font: Font, font_size: int, dropcap_margins: Rect2 = Rect2(0, 0, 0, 0), language: String = "") -> bool
- tab_align(tab_stops: PackedFloat32Array)

