## CodeHighlighter <- SyntaxHighlighter

By adjusting various properties of this resource, you can change the colors of strings, comments, numbers, and other text patterns inside a TextEdit control.

**Props:**
- color_regions: Dictionary = {}
- function_color: Color = Color(0, 0, 0, 1)
- keyword_colors: Dictionary = {}
- member_keyword_colors: Dictionary = {}
- member_variable_color: Color = Color(0, 0, 0, 1)
- number_color: Color = Color(0, 0, 0, 1)
- symbol_color: Color = Color(0, 0, 0, 1)

**Methods:**
- add_color_region(start_key: String, end_key: String, color: Color, line_only: bool = false)
- add_keyword_color(keyword: String, color: Color)
- add_member_keyword_color(member_keyword: String, color: Color)
- clear_color_regions()
- clear_keyword_colors()
- clear_member_keyword_colors()
- get_keyword_color(keyword: String) -> Color
- get_member_keyword_color(member_keyword: String) -> Color
- has_color_region(start_key: String) -> bool
- has_keyword_color(keyword: String) -> bool
- has_member_keyword_color(member_keyword: String) -> bool
- remove_color_region(start_key: String)
- remove_keyword_color(keyword: String)
- remove_member_keyword_color(member_keyword: String)

