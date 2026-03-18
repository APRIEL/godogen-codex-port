## Tree <- Control

A control used to show a set of internal TreeItems in a hierarchical structure. The tree items can be selected, expanded and collapsed. The tree can have multiple columns with custom controls like LineEdits, buttons and popups. It can be useful for structured displays and interactions. Trees are built via code, using TreeItem objects to create the structure. They have a single root, but multiple roots can be simulated with `hide_root`: To iterate over all the TreeItem objects in a Tree object, use `TreeItem.get_next` and `TreeItem.get_first_child` after getting the root through `get_root`. You can use `Object.free` on a TreeItem to remove it from the Tree. **Incremental search:** Like ItemList and PopupMenu, Tree supports searching within the list while the control is focused. Press a key that matches the first letter of an item's name to select the first item starting with the given letter. After that point, there are two ways to perform incremental search: 1) Press the same key again before the timeout duration to select the next item starting with the same letter. 2) Press letter keys that match the rest of the word before the timeout duration to match to select the item in question directly. Both of these actions will be reset to the beginning of the list if the timeout duration has passed since the last keystroke was registered. You can adjust the timeout duration by changing `ProjectSettings.gui/timers/incremental_search_max_interval_msec`.

**Props:**
- allow_reselect: bool = false
- allow_rmb_select: bool = false
- allow_search: bool = true
- auto_tooltip: bool = true
- clip_contents: bool = true
- column_titles_visible: bool = false
- columns: int = 1
- drop_mode_flags: int = 0
- enable_drag_unfolding: bool = true
- enable_recursive_folding: bool = true
- focus_mode: int (Control.FocusMode) = 2
- hide_folding: bool = false
- hide_root: bool = false
- scroll_hint_mode: int (Tree.ScrollHintMode) = 0
- scroll_horizontal_enabled: bool = true
- scroll_vertical_enabled: bool = true
- select_mode: int (Tree.SelectMode) = 0
- tile_scroll_hint: bool = false

**Methods:**
- clear()
- create_item(parent: TreeItem = null, index: int = -1) -> TreeItem
- deselect_all()
- edit_selected(force_edit: bool = false) -> bool
- ensure_cursor_is_visible()
- get_button_id_at_position(position: Vector2) -> int
- get_column_at_position(position: Vector2) -> int
- get_column_expand_ratio(column: int) -> int
- get_column_title(column: int) -> String
- get_column_title_alignment(column: int) -> int
- get_column_title_direction(column: int) -> int
- get_column_title_language(column: int) -> String
- get_column_title_tooltip_text(column: int) -> String
- get_column_width(column: int) -> int
- get_custom_popup_rect() -> Rect2
- get_drop_section_at_position(position: Vector2) -> int
- get_edited() -> TreeItem
- get_edited_column() -> int
- get_item_area_rect(item: TreeItem, column: int = -1, button_index: int = -1) -> Rect2
- get_item_at_position(position: Vector2) -> TreeItem
- get_next_selected(from: TreeItem) -> TreeItem
- get_pressed_button() -> int
- get_root() -> TreeItem
- get_scroll() -> Vector2
- get_selected() -> TreeItem
- get_selected_column() -> int
- is_column_clipping_content(column: int) -> bool
- is_column_expanding(column: int) -> bool
- scroll_to_item(item: TreeItem, center_on_item: bool = false)
- set_column_clip_content(column: int, enable: bool)
- set_column_custom_minimum_width(column: int, min_width: int)
- set_column_expand(column: int, expand: bool)
- set_column_expand_ratio(column: int, ratio: int)
- set_column_title(column: int, title: String)
- set_column_title_alignment(column: int, title_alignment: int)
- set_column_title_direction(column: int, direction: int)
- set_column_title_language(column: int, language: String)
- set_column_title_tooltip_text(column: int, tooltip_text: String)
- set_selected(item: TreeItem, column: int)

**Signals:**
- button_clicked(item: TreeItem, column: int, id: int, mouse_button_index: int)
- cell_selected
- check_propagated_to_item(item: TreeItem, column: int)
- column_title_clicked(column: int, mouse_button_index: int)
- custom_item_clicked(mouse_button_index: int)
- custom_popup_edited(arrow_clicked: bool)
- empty_clicked(click_position: Vector2, mouse_button_index: int)
- item_activated
- item_collapsed(item: TreeItem)
- item_edited
- item_icon_double_clicked
- item_mouse_selected(mouse_position: Vector2, mouse_button_index: int)
- item_selected
- multi_selected(item: TreeItem, column: int, selected: bool)
- nothing_selected

**Enums:**
**SelectMode:** SELECT_SINGLE=0, SELECT_ROW=1, SELECT_MULTI=2
**DropModeFlags:** DROP_MODE_DISABLED=0, DROP_MODE_ON_ITEM=1, DROP_MODE_INBETWEEN=2
**ScrollHintMode:** SCROLL_HINT_MODE_DISABLED=0, SCROLL_HINT_MODE_BOTH=1, SCROLL_HINT_MODE_TOP=2, SCROLL_HINT_MODE_BOTTOM=3

