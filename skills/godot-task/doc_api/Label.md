## Label <- Control

A control for displaying plain text. It gives you control over the horizontal and vertical alignment and can wrap the text inside the node's bounding rectangle. It doesn't support bold, italics, or other rich text formatting. For that, use RichTextLabel instead. **Note:** A single Label node is not designed to display huge amounts of text. To display large amounts of text in a single node, consider using RichTextLabel instead as it supports features like an integrated scroll bar and threading. RichTextLabel generally performs better when displaying large amounts of text (several pages or more).

**Props:**
- autowrap_mode: int (TextServer.AutowrapMode) = 0
- autowrap_trim_flags: int (TextServer.LineBreakFlag) = 192
- clip_text: bool = false
- ellipsis_char: String = "…"
- horizontal_alignment: int (HorizontalAlignment) = 0
- justification_flags: int (TextServer.JustificationFlag) = 163
- label_settings: LabelSettings
- language: String = ""
- lines_skipped: int = 0
- max_lines_visible: int = -1
- mouse_filter: int (Control.MouseFilter) = 2
- paragraph_separator: String = "\\n"
- size_flags_vertical: int (Control.SizeFlags) = 4
- structured_text_bidi_override: int (TextServer.StructuredTextParser) = 0
- structured_text_bidi_override_options: Array = []
- tab_stops: PackedFloat32Array = PackedFloat32Array()
- text: String = ""
- text_direction: int (Control.TextDirection) = 0
- text_overrun_behavior: int (TextServer.OverrunBehavior) = 0
- uppercase: bool = false
- vertical_alignment: int (VerticalAlignment) = 0
- visible_characters: int = -1
- visible_characters_behavior: int (TextServer.VisibleCharactersBehavior) = 0
- visible_ratio: float = 1.0

**Methods:**
- get_character_bounds(pos: int) -> Rect2
- get_line_count() -> int
- get_line_height(line: int = -1) -> int
- get_total_character_count() -> int
- get_visible_line_count() -> int

