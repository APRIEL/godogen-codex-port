## SyntaxHighlighter <- Resource

Base class for syntax highlighters. Provides syntax highlighting data to a TextEdit. The associated TextEdit will call into the SyntaxHighlighter on an as-needed basis. **Note:** A SyntaxHighlighter instance should not be used across multiple TextEdit nodes.

**Methods:**
- clear_highlighting_cache()
- get_line_syntax_highlighting(line: int) -> Dictionary
- get_text_edit() -> TextEdit
- update_cache()

