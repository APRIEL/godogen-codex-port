## GraphFrame <- GraphElement

GraphFrame is a special GraphElement to which other GraphElements can be attached. It can be configured to automatically resize to enclose all attached GraphElements. If the frame is moved, all the attached GraphElements inside it will be moved as well. A GraphFrame is always kept behind the connection layer and other GraphElements inside a GraphEdit.

**Props:**
- autoshrink_enabled: bool = true
- autoshrink_margin: int = 40
- drag_margin: int = 16
- mouse_filter: int (Control.MouseFilter) = 0
- tint_color: Color = Color(0.3, 0.3, 0.3, 0.75)
- tint_color_enabled: bool = false
- title: String = ""

**Methods:**
- get_titlebar_hbox() -> HBoxContainer

**Signals:**
- autoshrink_changed

