## ItemList <- Control

This control provides a vertical list of selectable items that may be in a single or in multiple columns, with each item having options for text and an icon. Tooltips are supported and may be different for every item in the list. Selectable items in the list may be selected or deselected and multiple selection may be enabled. Selection with right mouse button may also be enabled to allow use of popup context menus. Items may also be "activated" by double-clicking them or by pressing [kbd]Enter[/kbd]. Item text only supports single-line strings. Newline characters (e.g. `\n`) in the string won't produce a newline. Text wrapping is enabled in `ICON_MODE_TOP` mode, but the column's width is adjusted to fully fit its content by default. You need to set `fixed_column_width` greater than zero to wrap the text. All `set_*` methods allow negative item indices, i.e. `-1` to access the last item, `-2` to select the second-to-last item, and so on. **Incremental search:** Like PopupMenu and Tree, ItemList supports searching within the list while the control is focused. Press a key that matches the first letter of an item's name to select the first item starting with the given letter. After that point, there are two ways to perform incremental search: 1) Press the same key again before the timeout duration to select the next item starting with the same letter. 2) Press letter keys that match the rest of the word before the timeout duration to match to select the item in question directly. Both of these actions will be reset to the beginning of the list if the timeout duration has passed since the last keystroke was registered. You can adjust the timeout duration by changing `ProjectSettings.gui/timers/incremental_search_max_interval_msec`.

**Props:**
- allow_reselect: bool = false
- allow_rmb_select: bool = false
- allow_search: bool = true
- auto_height: bool = false
- auto_width: bool = false
- clip_contents: bool = true
- fixed_column_width: int = 0
- fixed_icon_size: Vector2i = Vector2i(0, 0)
- focus_mode: int (Control.FocusMode) = 2
- icon_mode: int (ItemList.IconMode) = 1
- icon_scale: float = 1.0
- item_count: int = 0
- max_columns: int = 1
- max_text_lines: int = 1
- same_column_width: bool = false
- scroll_hint_mode: int (ItemList.ScrollHintMode) = 0
- select_mode: int (ItemList.SelectMode) = 0
- text_overrun_behavior: int (TextServer.OverrunBehavior) = 3
- tile_scroll_hint: bool = false
- wraparound_items: bool = true

**Methods:**
- add_icon_item(icon: Texture2D, selectable: bool = true) -> int
- add_item(text: String, icon: Texture2D = null, selectable: bool = true) -> int
- center_on_current(center_verically: bool = true, center_horizontally: bool = true)
- clear()
- deselect(idx: int)
- deselect_all()
- ensure_current_is_visible()
- force_update_list_size()
- get_h_scroll_bar() -> HScrollBar
- get_item_at_position(position: Vector2, exact: bool = false) -> int
- get_item_auto_translate_mode(idx: int) -> int
- get_item_custom_bg_color(idx: int) -> Color
- get_item_custom_fg_color(idx: int) -> Color
- get_item_icon(idx: int) -> Texture2D
- get_item_icon_modulate(idx: int) -> Color
- get_item_icon_region(idx: int) -> Rect2
- get_item_language(idx: int) -> String
- get_item_metadata(idx: int) -> Variant
- get_item_rect(idx: int, expand: bool = true) -> Rect2
- get_item_text(idx: int) -> String
- get_item_text_direction(idx: int) -> int
- get_item_tooltip(idx: int) -> String
- get_selected_items() -> PackedInt32Array
- get_v_scroll_bar() -> VScrollBar
- is_anything_selected() -> bool
- is_item_disabled(idx: int) -> bool
- is_item_icon_transposed(idx: int) -> bool
- is_item_selectable(idx: int) -> bool
- is_item_tooltip_enabled(idx: int) -> bool
- is_selected(idx: int) -> bool
- move_item(from_idx: int, to_idx: int)
- remove_item(idx: int)
- select(idx: int, single: bool = true)
- set_item_auto_translate_mode(idx: int, mode: int)
- set_item_custom_bg_color(idx: int, custom_bg_color: Color)
- set_item_custom_fg_color(idx: int, custom_fg_color: Color)
- set_item_disabled(idx: int, disabled: bool)
- set_item_icon(idx: int, icon: Texture2D)
- set_item_icon_modulate(idx: int, modulate: Color)
- set_item_icon_region(idx: int, rect: Rect2)
- set_item_icon_transposed(idx: int, transposed: bool)
- set_item_language(idx: int, language: String)
- set_item_metadata(idx: int, metadata: Variant)
- set_item_selectable(idx: int, selectable: bool)
- set_item_text(idx: int, text: String)
- set_item_text_direction(idx: int, direction: int)
- set_item_tooltip(idx: int, tooltip: String)
- set_item_tooltip_enabled(idx: int, enable: bool)
- sort_items_by_text()

**Signals:**
- empty_clicked(at_position: Vector2, mouse_button_index: int)
- item_activated(index: int)
- item_clicked(index: int, at_position: Vector2, mouse_button_index: int)
- item_selected(index: int)
- multi_selected(index: int, selected: bool)

**Enums:**
**IconMode:** ICON_MODE_TOP=0, ICON_MODE_LEFT=1
**SelectMode:** SELECT_SINGLE=0, SELECT_MULTI=1, SELECT_TOGGLE=2
**ScrollHintMode:** SCROLL_HINT_MODE_DISABLED=0, SCROLL_HINT_MODE_BOTH=1, SCROLL_HINT_MODE_TOP=2, SCROLL_HINT_MODE_BOTTOM=3

