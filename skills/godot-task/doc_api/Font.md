## Font <- Resource

Abstract base class for different font types. It has methods for drawing text and font character introspection.

**Props:**
- fallbacks: Font[] = []

**Methods:**
- draw_char(canvas_item: RID, pos: Vector2, char: int, font_size: int, modulate: Color = Color(1, 1, 1, 1), oversampling: float = 0.0) -> float
- draw_char_outline(canvas_item: RID, pos: Vector2, char: int, font_size: int, size: int = -1, modulate: Color = Color(1, 1, 1, 1), oversampling: float = 0.0) -> float
- draw_multiline_string(canvas_item: RID, pos: Vector2, text: String, alignment: int = 0, width: float = -1, font_size: int = 16, max_lines: int = -1, modulate: Color = Color(1, 1, 1, 1), brk_flags: int = 3, justification_flags: int = 3, direction: int = 0, orientation: int = 0, oversampling: float = 0.0)
- draw_multiline_string_outline(canvas_item: RID, pos: Vector2, text: String, alignment: int = 0, width: float = -1, font_size: int = 16, max_lines: int = -1, size: int = 1, modulate: Color = Color(1, 1, 1, 1), brk_flags: int = 3, justification_flags: int = 3, direction: int = 0, orientation: int = 0, oversampling: float = 0.0)
- draw_string(canvas_item: RID, pos: Vector2, text: String, alignment: int = 0, width: float = -1, font_size: int = 16, modulate: Color = Color(1, 1, 1, 1), justification_flags: int = 3, direction: int = 0, orientation: int = 0, oversampling: float = 0.0)
- draw_string_outline(canvas_item: RID, pos: Vector2, text: String, alignment: int = 0, width: float = -1, font_size: int = 16, size: int = 1, modulate: Color = Color(1, 1, 1, 1), justification_flags: int = 3, direction: int = 0, orientation: int = 0, oversampling: float = 0.0)
- find_variation(variation_coordinates: Dictionary, face_index: int = 0, strength: float = 0.0, transform: Transform2D = Transform2D(1, 0, 0, 1, 0, 0), spacing_top: int = 0, spacing_bottom: int = 0, spacing_space: int = 0, spacing_glyph: int = 0, baseline_offset: float = 0.0) -> RID
- get_ascent(font_size: int = 16) -> float
- get_char_size(char: int, font_size: int) -> Vector2
- get_descent(font_size: int = 16) -> float
- get_face_count() -> int
- get_font_name() -> String
- get_font_stretch() -> int
- get_font_style() -> int
- get_font_style_name() -> String
- get_font_weight() -> int
- get_height(font_size: int = 16) -> float
- get_multiline_string_size(text: String, alignment: int = 0, width: float = -1, font_size: int = 16, max_lines: int = -1, brk_flags: int = 3, justification_flags: int = 3, direction: int = 0, orientation: int = 0) -> Vector2
- get_opentype_features() -> Dictionary
- get_ot_name_strings() -> Dictionary
- get_rids() -> RID[]
- get_spacing(spacing: int) -> int
- get_string_size(text: String, alignment: int = 0, width: float = -1, font_size: int = 16, justification_flags: int = 3, direction: int = 0, orientation: int = 0) -> Vector2
- get_supported_chars() -> String
- get_supported_feature_list() -> Dictionary
- get_supported_variation_list() -> Dictionary
- get_underline_position(font_size: int = 16) -> float
- get_underline_thickness(font_size: int = 16) -> float
- has_char(char: int) -> bool
- is_language_supported(language: String) -> bool
- is_script_supported(script: String) -> bool
- set_cache_capacity(single_line: int, multi_line: int)

