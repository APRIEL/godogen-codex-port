## CodeEdit <- TextEdit

CodeEdit is a specialized TextEdit designed for editing plain text code files. It has many features commonly found in code editors such as line numbers, line folding, code completion, indent management, and string/comment management. **Note:** Regardless of locale, CodeEdit will by default always use left-to-right text direction to correctly display source code.

**Props:**
- auto_brace_completion_enabled: bool = false
- auto_brace_completion_highlight_matching: bool = false
- auto_brace_completion_pairs: Dictionary = { "\"": "\"", "'": "'", "(": ")", "[": "]", "{": "}" }
- code_completion_enabled: bool = false
- code_completion_prefixes: String[] = []
- delimiter_comments: String[] = []
- delimiter_strings: String[] = ["' '", "\" \""]
- gutters_draw_bookmarks: bool = false
- gutters_draw_breakpoints_gutter: bool = false
- gutters_draw_executing_lines: bool = false
- gutters_draw_fold_gutter: bool = false
- gutters_draw_line_numbers: bool = false
- gutters_line_numbers_min_digits: int = 3
- gutters_zero_pad_line_numbers: bool = false
- indent_automatic: bool = false
- indent_automatic_prefixes: String[] = [":", "{", "[", "("]
- indent_size: int = 4
- indent_use_spaces: bool = false
- layout_direction: int (Control.LayoutDirection) = 2
- line_folding: bool = false
- line_length_guidelines: int[] = []
- symbol_lookup_on_click: bool = false
- symbol_tooltip_on_hover: bool = false
- text_direction: int (Control.TextDirection) = 1

**Methods:**
- add_auto_brace_completion_pair(start_key: String, end_key: String)
- add_code_completion_option(type: int, display_text: String, insert_text: String, text_color: Color = Color(1, 1, 1, 1), icon: Resource = null, value: Variant = null, location: int = 1024)
- add_comment_delimiter(start_key: String, end_key: String, line_only: bool = false)
- add_string_delimiter(start_key: String, end_key: String, line_only: bool = false)
- can_fold_line(line: int) -> bool
- cancel_code_completion()
- clear_bookmarked_lines()
- clear_breakpointed_lines()
- clear_comment_delimiters()
- clear_executing_lines()
- clear_string_delimiters()
- confirm_code_completion(replace: bool = false)
- convert_indent(from_line: int = -1, to_line: int = -1)
- create_code_region()
- delete_lines()
- do_indent()
- duplicate_lines()
- duplicate_selection()
- fold_all_lines()
- fold_line(line: int)
- get_auto_brace_completion_close_key(open_key: String) -> String
- get_bookmarked_lines() -> PackedInt32Array
- get_breakpointed_lines() -> PackedInt32Array
- get_code_completion_option(index: int) -> Dictionary
- get_code_completion_options() -> Dictionary[]
- get_code_completion_selected_index() -> int
- get_code_region_end_tag() -> String
- get_code_region_start_tag() -> String
- get_delimiter_end_key(delimiter_index: int) -> String
- get_delimiter_end_position(line: int, column: int) -> Vector2
- get_delimiter_start_key(delimiter_index: int) -> String
- get_delimiter_start_position(line: int, column: int) -> Vector2
- get_executing_lines() -> PackedInt32Array
- get_folded_lines() -> int[]
- get_text_for_code_completion() -> String
- get_text_for_symbol_lookup() -> String
- get_text_with_cursor_char(line: int, column: int) -> String
- has_auto_brace_completion_close_key(close_key: String) -> bool
- has_auto_brace_completion_open_key(open_key: String) -> bool
- has_comment_delimiter(start_key: String) -> bool
- has_string_delimiter(start_key: String) -> bool
- indent_lines()
- is_in_comment(line: int, column: int = -1) -> int
- is_in_string(line: int, column: int = -1) -> int
- is_line_bookmarked(line: int) -> bool
- is_line_breakpointed(line: int) -> bool
- is_line_code_region_end(line: int) -> bool
- is_line_code_region_start(line: int) -> bool
- is_line_executing(line: int) -> bool
- is_line_folded(line: int) -> bool
- move_lines_down()
- move_lines_up()
- remove_comment_delimiter(start_key: String)
- remove_string_delimiter(start_key: String)
- request_code_completion(force: bool = false)
- set_code_completion_selected_index(index: int)
- set_code_hint(code_hint: String)
- set_code_hint_draw_below(draw_below: bool)
- set_code_region_tags(start: String = "region", end: String = "endregion")
- set_line_as_bookmarked(line: int, bookmarked: bool)
- set_line_as_breakpoint(line: int, breakpointed: bool)
- set_line_as_executing(line: int, executing: bool)
- set_symbol_lookup_word_as_valid(valid: bool)
- toggle_foldable_line(line: int)
- toggle_foldable_lines_at_carets()
- unfold_all_lines()
- unfold_line(line: int)
- unindent_lines()
- update_code_completion_options(force: bool)

**Signals:**
- breakpoint_toggled(line: int)
- code_completion_requested
- symbol_hovered(symbol: String, line: int, column: int)
- symbol_lookup(symbol: String, line: int, column: int)
- symbol_validate(symbol: String)

**Enums:**
**CodeCompletionKind:** KIND_CLASS=0, KIND_FUNCTION=1, KIND_SIGNAL=2, KIND_VARIABLE=3, KIND_MEMBER=4, KIND_ENUM=5, KIND_CONSTANT=6, KIND_NODE_PATH=7, KIND_FILE_PATH=8, KIND_PLAIN_TEXT=9
**CodeCompletionLocation:** LOCATION_LOCAL=0, LOCATION_PARENT_MASK=256, LOCATION_OTHER_USER_CODE=512, LOCATION_OTHER=1024

