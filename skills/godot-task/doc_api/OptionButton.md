## OptionButton <- Button

OptionButton is a type of button that brings up a dropdown with selectable items when pressed. The item selected becomes the "current" item and is displayed as the button text. See also BaseButton which contains common properties and methods associated with this node. **Note:** The IDs used for items are limited to signed 32-bit integers, not the full 64 bits of [int]. These have a range of `-2^31` to `2^31 - 1`, that is, `-2147483648` to `2147483647`. **Note:** The `Button.text` and `Button.icon` properties are set automatically based on the selected item. They shouldn't be changed manually.

**Props:**
- action_mode: int (BaseButton.ActionMode) = 0
- alignment: int (HorizontalAlignment) = 0
- allow_reselect: bool = false
- fit_to_longest_item: bool = true
- item_count: int = 0
- selected: int = -1
- toggle_mode: bool = true

**Methods:**
- add_icon_item(texture: Texture2D, label: String, id: int = -1)
- add_item(label: String, id: int = -1)
- add_separator(text: String = "")
- clear()
- get_item_auto_translate_mode(idx: int) -> int
- get_item_icon(idx: int) -> Texture2D
- get_item_id(idx: int) -> int
- get_item_index(id: int) -> int
- get_item_metadata(idx: int) -> Variant
- get_item_text(idx: int) -> String
- get_item_tooltip(idx: int) -> String
- get_popup() -> PopupMenu
- get_selectable_item(from_last: bool = false) -> int
- get_selected_id() -> int
- get_selected_metadata() -> Variant
- has_selectable_items() -> bool
- is_item_disabled(idx: int) -> bool
- is_item_separator(idx: int) -> bool
- remove_item(idx: int)
- select(idx: int)
- set_disable_shortcuts(disabled: bool)
- set_item_auto_translate_mode(idx: int, mode: int)
- set_item_disabled(idx: int, disabled: bool)
- set_item_icon(idx: int, texture: Texture2D)
- set_item_id(idx: int, id: int)
- set_item_metadata(idx: int, metadata: Variant)
- set_item_text(idx: int, text: String)
- set_item_tooltip(idx: int, tooltip: String)
- show_popup()

**Signals:**
- item_focused(index: int)
- item_selected(index: int)

