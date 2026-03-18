## MenuButton <- Button

A button that brings up a PopupMenu when clicked. To create new items inside this PopupMenu, use `get_popup().add_item("My Item Name")`. You can also create them directly from Godot editor's inspector. See also BaseButton which contains common properties and methods associated with this node.

**Props:**
- action_mode: int (BaseButton.ActionMode) = 0
- flat: bool = true
- focus_mode: int (Control.FocusMode) = 3
- item_count: int = 0
- switch_on_hover: bool = false
- toggle_mode: bool = true

**Methods:**
- get_popup() -> PopupMenu
- set_disable_shortcuts(disabled: bool)
- show_popup()

**Signals:**
- about_to_popup

