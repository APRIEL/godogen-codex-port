## MenuBar <- Control

A horizontal menu bar that creates a menu for each PopupMenu child. New items are created by adding PopupMenus to this node. Item title is determined by `Window.title`, or node name if `Window.title` is empty. Item title can be overridden using `set_menu_title`.

**Props:**
- flat: bool = false
- focus_mode: int (Control.FocusMode) = 3
- language: String = ""
- prefer_global_menu: bool = true
- start_index: int = -1
- switch_on_hover: bool = true
- text_direction: int (Control.TextDirection) = 0

**Methods:**
- get_menu_count() -> int
- get_menu_popup(menu: int) -> PopupMenu
- get_menu_title(menu: int) -> String
- get_menu_tooltip(menu: int) -> String
- is_menu_disabled(menu: int) -> bool
- is_menu_hidden(menu: int) -> bool
- is_native_menu() -> bool
- set_disable_shortcuts(disabled: bool)
- set_menu_disabled(menu: int, disabled: bool)
- set_menu_hidden(menu: int, hidden: bool)
- set_menu_title(menu: int, title: String)
- set_menu_tooltip(menu: int, tooltip: String)

