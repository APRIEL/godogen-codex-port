## PopupMenu <- Popup

PopupMenu is a modal window used to display a list of options. Useful for toolbars and context menus. The size of a PopupMenu can be limited by using `Window.max_size`. If the height of the list of items is larger than the maximum height of the PopupMenu, a ScrollContainer within the popup will allow the user to scroll the contents. If no maximum size is set, or if it is set to `0`, the PopupMenu height will be limited by its parent rect. All `set_*` methods allow negative item indices, i.e. `-1` to access the last item, `-2` to select the second-to-last item, and so on. **Incremental search:** Like ItemList and Tree, PopupMenu supports searching within the list while the control is focused. Press a key that matches the first letter of an item's name to select the first item starting with the given letter. After that point, there are two ways to perform incremental search: 1) Press the same key again before the timeout duration to select the next item starting with the same letter. 2) Press letter keys that match the rest of the word before the timeout duration to match to select the item in question directly. Both of these actions will be reset to the beginning of the list if the timeout duration has passed since the last keystroke was registered. You can adjust the timeout duration by changing `ProjectSettings.gui/timers/incremental_search_max_interval_msec`. **Note:** PopupMenu is invisible by default. To make it visible, call one of the `popup_*` methods from Window on the node, such as `Window.popup_centered_clamped`. **Note:** The ID values used for items are limited to 32 bits, not full 64 bits of [int]. This has a range of `-2^32` to `2^32 - 1`, i.e. `-2147483648` to `2147483647`.

**Props:**
- allow_search: bool = true
- hide_on_checkable_item_selection: bool = true
- hide_on_item_selection: bool = true
- hide_on_state_item_selection: bool = false
- item_count: int = 0
- prefer_native_menu: bool = false
- shrink_height: bool = true
- shrink_width: bool = true
- submenu_popup_delay: float = 0.2
- system_menu_id: int (NativeMenu.SystemMenus) = 0
- transparent: bool = true
- transparent_bg: bool = true

**Methods:**
- activate_item_by_event(event: InputEvent, for_global_only: bool = false) -> bool
- add_check_item(label: String, id: int = -1, accel: int = 0)
- add_check_shortcut(shortcut: Shortcut, id: int = -1, global: bool = false)
- add_icon_check_item(texture: Texture2D, label: String, id: int = -1, accel: int = 0)
- add_icon_check_shortcut(texture: Texture2D, shortcut: Shortcut, id: int = -1, global: bool = false)
- add_icon_item(texture: Texture2D, label: String, id: int = -1, accel: int = 0)
- add_icon_radio_check_item(texture: Texture2D, label: String, id: int = -1, accel: int = 0)
- add_icon_radio_check_shortcut(texture: Texture2D, shortcut: Shortcut, id: int = -1, global: bool = false)
- add_icon_shortcut(texture: Texture2D, shortcut: Shortcut, id: int = -1, global: bool = false, allow_echo: bool = false)
- add_item(label: String, id: int = -1, accel: int = 0)
- add_multistate_item(label: String, max_states: int, default_state: int = 0, id: int = -1, accel: int = 0)
- add_radio_check_item(label: String, id: int = -1, accel: int = 0)
- add_radio_check_shortcut(shortcut: Shortcut, id: int = -1, global: bool = false)
- add_separator(label: String = "", id: int = -1)
- add_shortcut(shortcut: Shortcut, id: int = -1, global: bool = false, allow_echo: bool = false)
- add_submenu_item(label: String, submenu: String, id: int = -1)
- add_submenu_node_item(label: String, submenu: PopupMenu, id: int = -1)
- clear(free_submenus: bool = false)
- get_focused_item() -> int
- get_item_accelerator(index: int) -> int
- get_item_auto_translate_mode(index: int) -> int
- get_item_icon(index: int) -> Texture2D
- get_item_icon_max_width(index: int) -> int
- get_item_icon_modulate(index: int) -> Color
- get_item_id(index: int) -> int
- get_item_indent(index: int) -> int
- get_item_index(id: int) -> int
- get_item_language(index: int) -> String
- get_item_metadata(index: int) -> Variant
- get_item_multistate(index: int) -> int
- get_item_multistate_max(index: int) -> int
- get_item_shortcut(index: int) -> Shortcut
- get_item_submenu(index: int) -> String
- get_item_submenu_node(index: int) -> PopupMenu
- get_item_text(index: int) -> String
- get_item_text_direction(index: int) -> int
- get_item_tooltip(index: int) -> String
- is_item_checkable(index: int) -> bool
- is_item_checked(index: int) -> bool
- is_item_disabled(index: int) -> bool
- is_item_radio_checkable(index: int) -> bool
- is_item_separator(index: int) -> bool
- is_item_shortcut_disabled(index: int) -> bool
- is_native_menu() -> bool
- is_system_menu() -> bool
- remove_item(index: int)
- scroll_to_item(index: int)
- set_focused_item(index: int)
- set_item_accelerator(index: int, accel: int)
- set_item_as_checkable(index: int, enable: bool)
- set_item_as_radio_checkable(index: int, enable: bool)
- set_item_as_separator(index: int, enable: bool)
- set_item_auto_translate_mode(index: int, mode: int)
- set_item_checked(index: int, checked: bool)
- set_item_disabled(index: int, disabled: bool)
- set_item_icon(index: int, icon: Texture2D)
- set_item_icon_max_width(index: int, width: int)
- set_item_icon_modulate(index: int, modulate: Color)
- set_item_id(index: int, id: int)
- set_item_indent(index: int, indent: int)
- set_item_index(index: int, target_index: int)
- set_item_language(index: int, language: String)
- set_item_metadata(index: int, metadata: Variant)
- set_item_multistate(index: int, state: int)
- set_item_multistate_max(index: int, max_states: int)
- set_item_shortcut(index: int, shortcut: Shortcut, global: bool = false)
- set_item_shortcut_disabled(index: int, disabled: bool)
- set_item_submenu(index: int, submenu: String)
- set_item_submenu_node(index: int, submenu: PopupMenu)
- set_item_text(index: int, text: String)
- set_item_text_direction(index: int, direction: int)
- set_item_tooltip(index: int, tooltip: String)
- toggle_item_checked(index: int)
- toggle_item_multistate(index: int)

**Signals:**
- id_focused(id: int)
- id_pressed(id: int)
- index_pressed(index: int)
- menu_changed

