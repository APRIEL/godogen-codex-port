## TabBar <- Control

A control that provides a horizontal bar with tabs. Similar to TabContainer but is only in charge of drawing tabs, not interacting with children.

**Props:**
- clip_tabs: bool = true
- close_with_middle_mouse: bool = true
- current_tab: int = -1
- deselect_enabled: bool = false
- drag_to_rearrange_enabled: bool = false
- focus_mode: int (Control.FocusMode) = 2
- max_tab_width: int = 0
- scroll_to_selected: bool = true
- scrolling_enabled: bool = true
- select_with_rmb: bool = false
- switch_on_drag_hover: bool = true
- tab_alignment: int (TabBar.AlignmentMode) = 0
- tab_close_display_policy: int (TabBar.CloseButtonDisplayPolicy) = 0
- tab_count: int = 0
- tabs_rearrange_group: int = -1

**Methods:**
- add_tab(title: String = "", icon: Texture2D = null)
- clear_tabs()
- ensure_tab_visible(idx: int)
- get_offset_buttons_visible() -> bool
- get_previous_tab() -> int
- get_tab_button_icon(tab_idx: int) -> Texture2D
- get_tab_icon(tab_idx: int) -> Texture2D
- get_tab_icon_max_width(tab_idx: int) -> int
- get_tab_idx_at_point(point: Vector2) -> int
- get_tab_language(tab_idx: int) -> String
- get_tab_metadata(tab_idx: int) -> Variant
- get_tab_offset() -> int
- get_tab_rect(tab_idx: int) -> Rect2
- get_tab_text_direction(tab_idx: int) -> int
- get_tab_title(tab_idx: int) -> String
- get_tab_tooltip(tab_idx: int) -> String
- is_tab_disabled(tab_idx: int) -> bool
- is_tab_hidden(tab_idx: int) -> bool
- move_tab(from: int, to: int)
- remove_tab(tab_idx: int)
- select_next_available() -> bool
- select_previous_available() -> bool
- set_tab_button_icon(tab_idx: int, icon: Texture2D)
- set_tab_disabled(tab_idx: int, disabled: bool)
- set_tab_hidden(tab_idx: int, hidden: bool)
- set_tab_icon(tab_idx: int, icon: Texture2D)
- set_tab_icon_max_width(tab_idx: int, width: int)
- set_tab_language(tab_idx: int, language: String)
- set_tab_metadata(tab_idx: int, metadata: Variant)
- set_tab_text_direction(tab_idx: int, direction: int)
- set_tab_title(tab_idx: int, title: String)
- set_tab_tooltip(tab_idx: int, tooltip: String)

**Signals:**
- active_tab_rearranged(idx_to: int)
- tab_button_pressed(tab: int)
- tab_changed(tab: int)
- tab_clicked(tab: int)
- tab_close_pressed(tab: int)
- tab_hovered(tab: int)
- tab_rmb_clicked(tab: int)
- tab_selected(tab: int)

**Enums:**
**AlignmentMode:** ALIGNMENT_LEFT=0, ALIGNMENT_CENTER=1, ALIGNMENT_RIGHT=2, ALIGNMENT_MAX=3
**CloseButtonDisplayPolicy:** CLOSE_BUTTON_SHOW_NEVER=0, CLOSE_BUTTON_SHOW_ACTIVE_ONLY=1, CLOSE_BUTTON_SHOW_ALWAYS=2, CLOSE_BUTTON_MAX=3

