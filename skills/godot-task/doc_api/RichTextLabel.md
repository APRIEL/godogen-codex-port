## RichTextLabel <- Control

A control for displaying text that can contain custom fonts, images, and basic formatting. RichTextLabel manages these as an internal tag stack. It also adapts itself to given width/heights. **Note:** `newline`, `push_paragraph`, `"\n"`, `"\r\n"`, `p` tag, and alignment tags start a new paragraph. Each paragraph is processed independently, in its own BiDi context. If you want to force line wrapping within paragraph, any other line breaking character can be used, for example, Form Feed (U+000C), Next Line (U+0085), Line Separator (U+2028). **Note:** Assignments to `text` clear the tag stack and reconstruct it from the property's contents. Any edits made to `text` will erase previous edits made from other manual sources such as `append_text` and the `push_*` / `pop` methods. **Note:** RichTextLabel doesn't support entangled BBCode tags. For example, instead of using [code skip-lint]**bold*bold italic**italic*[/code], use [code skip-lint]**bold*bold italic****italic*[/code]. **Note:** `push_*/pop_*` functions won't affect BBCode. **Note:** While `bbcode_enabled` is enabled, alignment tags such as [code skip-lint][center][/code] will take priority over the `horizontal_alignment` setting which determines the default text alignment.

**Props:**
- autowrap_mode: int (TextServer.AutowrapMode) = 3
- autowrap_trim_flags: int (TextServer.LineBreakFlag) = 192
- bbcode_enabled: bool = false
- clip_contents: bool = true
- context_menu_enabled: bool = false
- custom_effects: Array = []
- deselect_on_focus_loss_enabled: bool = true
- drag_and_drop_selection_enabled: bool = true
- fit_content: bool = false
- focus_mode: int (Control.FocusMode) = 3
- hint_underlined: bool = true
- horizontal_alignment: int (HorizontalAlignment) = 0
- justification_flags: int (TextServer.JustificationFlag) = 163
- language: String = ""
- meta_underlined: bool = true
- progress_bar_delay: int = 1000
- scroll_active: bool = true
- scroll_following: bool = false
- scroll_following_visible_characters: bool = false
- selection_enabled: bool = false
- shortcut_keys_enabled: bool = true
- structured_text_bidi_override: int (TextServer.StructuredTextParser) = 0
- structured_text_bidi_override_options: Array = []
- tab_size: int = 4
- tab_stops: PackedFloat32Array = PackedFloat32Array()
- text: String = ""
- text_direction: int (Control.TextDirection) = 0
- threaded: bool = false
- vertical_alignment: int (VerticalAlignment) = 0
- visible_characters: int = -1
- visible_characters_behavior: int (TextServer.VisibleCharactersBehavior) = 0
- visible_ratio: float = 1.0

**Methods:**
- add_hr(width: int = 90, height: int = 2, color: Color = Color(1, 1, 1, 1), alignment: int = 1, width_in_percent: bool = true, height_in_percent: bool = false)
- add_image(image: Texture2D, width: int = 0, height: int = 0, color: Color = Color(1, 1, 1, 1), inline_align: int = 5, region: Rect2 = Rect2(0, 0, 0, 0), key: Variant = null, pad: bool = false, tooltip: String = "", width_in_percent: bool = false, height_in_percent: bool = false, alt_text: String = "")
- add_text(text: String)
- append_text(bbcode: String)
- clear()
- deselect()
- get_character_line(character: int) -> int
- get_character_paragraph(character: int) -> int
- get_content_height() -> int
- get_content_width() -> int
- get_line_count() -> int
- get_line_height(line: int) -> int
- get_line_offset(line: int) -> float
- get_line_range(line: int) -> Vector2i
- get_line_width(line: int) -> int
- get_menu() -> PopupMenu
- get_paragraph_count() -> int
- get_paragraph_offset(paragraph: int) -> float
- get_parsed_text() -> String
- get_selected_text() -> String
- get_selection_from() -> int
- get_selection_line_offset() -> float
- get_selection_to() -> int
- get_total_character_count() -> int
- get_v_scroll_bar() -> VScrollBar
- get_visible_content_rect() -> Rect2i
- get_visible_line_count() -> int
- get_visible_paragraph_count() -> int
- install_effect(effect: Variant)
- invalidate_paragraph(paragraph: int) -> bool
- is_finished() -> bool
- is_menu_visible() -> bool
- is_ready() -> bool
- menu_option(option: int)
- newline()
- parse_bbcode(bbcode: String)
- parse_expressions_for_values(expressions: PackedStringArray) -> Dictionary
- pop()
- pop_all()
- pop_context()
- push_bgcolor(bgcolor: Color)
- push_bold()
- push_bold_italics()
- push_cell()
- push_color(color: Color)
- push_context()
- push_customfx(effect: RichTextEffect, env: Dictionary)
- push_dropcap(string: String, font: Font, size: int, dropcap_margins: Rect2 = Rect2(0, 0, 0, 0), color: Color = Color(1, 1, 1, 1), outline_size: int = 0, outline_color: Color = Color(0, 0, 0, 0))
- push_fgcolor(fgcolor: Color)
- push_font(font: Font, font_size: int = 0)
- push_font_size(font_size: int)
- push_hint(description: String)
- push_indent(level: int)
- push_italics()
- push_language(language: String)
- push_list(level: int, type: int, capitalize: bool, bullet: String = "•")
- push_meta(data: Variant, underline_mode: int = 1, tooltip: String = "")
- push_mono()
- push_normal()
- push_outline_color(color: Color)
- push_outline_size(outline_size: int)
- push_paragraph(alignment: int, base_direction: int = 0, language: String = "", st_parser: int = 0, justification_flags: int = 163, tab_stops: PackedFloat32Array = PackedFloat32Array())
- push_strikethrough(color: Color = Color(0, 0, 0, 0))
- push_table(columns: int, inline_align: int = 0, align_to_row: int = -1, name: String = "")
- push_underline(color: Color = Color(0, 0, 0, 0))
- reload_effects()
- remove_paragraph(paragraph: int, no_invalidate: bool = false) -> bool
- scroll_to_line(line: int)
- scroll_to_paragraph(paragraph: int)
- scroll_to_selection()
- select_all()
- set_cell_border_color(color: Color)
- set_cell_padding(padding: Rect2)
- set_cell_row_background_color(odd_row_bg: Color, even_row_bg: Color)
- set_cell_size_override(min_size: Vector2, max_size: Vector2)
- set_table_column_expand(column: int, expand: bool, ratio: int = 1, shrink: bool = true)
- set_table_column_name(column: int, name: String)
- update_image(key: Variant, mask: int, image: Texture2D, width: int = 0, height: int = 0, color: Color = Color(1, 1, 1, 1), inline_align: int = 5, region: Rect2 = Rect2(0, 0, 0, 0), pad: bool = false, tooltip: String = "", width_in_percent: bool = false, height_in_percent: bool = false)

**Signals:**
- finished
- meta_clicked(meta: Variant)
- meta_hover_ended(meta: Variant)
- meta_hover_started(meta: Variant)

**Enums:**
**ListType:** LIST_NUMBERS=0, LIST_LETTERS=1, LIST_ROMAN=2, LIST_DOTS=3
**MenuItems:** MENU_COPY=0, MENU_SELECT_ALL=1, MENU_MAX=2
**MetaUnderline:** META_UNDERLINE_NEVER=0, META_UNDERLINE_ALWAYS=1, META_UNDERLINE_ON_HOVER=2
**ImageUpdateMask:** UPDATE_TEXTURE=1, UPDATE_SIZE=2, UPDATE_COLOR=4, UPDATE_ALIGNMENT=8, UPDATE_REGION=16, UPDATE_PAD=32, UPDATE_TOOLTIP=64, UPDATE_WIDTH_IN_PERCENT=128

