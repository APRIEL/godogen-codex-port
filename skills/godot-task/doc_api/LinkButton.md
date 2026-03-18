## LinkButton <- BaseButton

A button that represents a link. This type of button is primarily used for interactions that cause a context change (like linking to a web page). See also BaseButton which contains common properties and methods associated with this node.

**Props:**
- ellipsis_char: String = "…"
- focus_mode: int (Control.FocusMode) = 3
- language: String = ""
- mouse_default_cursor_shape: int (Control.CursorShape) = 2
- structured_text_bidi_override: int (TextServer.StructuredTextParser) = 0
- structured_text_bidi_override_options: Array = []
- text: String = ""
- text_direction: int (Control.TextDirection) = 0
- text_overrun_behavior: int (TextServer.OverrunBehavior) = 0
- underline: int (LinkButton.UnderlineMode) = 0
- uri: String = ""

**Enums:**
**UnderlineMode:** UNDERLINE_MODE_ALWAYS=0, UNDERLINE_MODE_ON_HOVER=1, UNDERLINE_MODE_NEVER=2

