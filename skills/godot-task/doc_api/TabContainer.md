## TabContainer <- Container

Arranges child controls into a tabbed view, creating a tab for each one. The active tab's corresponding control is made visible, while all other child controls are hidden. Ignores non-control children. **Note:** The drawing of the clickable tabs is handled by this node; TabBar is not needed.

**Props:**
- all_tabs_in_front: bool = false
- clip_tabs: bool = true
- current_tab: int = -1
- deselect_enabled: bool = false
- drag_to_rearrange_enabled: bool = false
- switch_on_drag_hover: bool = true
- tab_alignment: int (TabBar.AlignmentMode) = 0
- tab_focus_mode: int (Control.FocusMode) = 2
- tabs_position: int (TabContainer.TabPosition) = 0
- tabs_rearrange_group: int = -1
- tabs_visible: bool = true
- use_hidden_tabs_for_min_size: bool = false

**Methods:**
- get_current_tab_control() -> Control
- get_popup() -> Popup
- get_previous_tab() -> int
- get_tab_bar() -> TabBar
- get_tab_button_icon(tab_idx: int) -> Texture2D
- get_tab_control(tab_idx: int) -> Control
- get_tab_count() -> int
- get_tab_icon(tab_idx: int) -> Texture2D
- get_tab_icon_max_width(tab_idx: int) -> int
- get_tab_idx_at_point(point: Vector2) -> int
- get_tab_idx_from_control(control: Control) -> int
- get_tab_metadata(tab_idx: int) -> Variant
- get_tab_title(tab_idx: int) -> String
- get_tab_tooltip(tab_idx: int) -> String
- is_tab_disabled(tab_idx: int) -> bool
- is_tab_hidden(tab_idx: int) -> bool
- select_next_available() -> bool
- select_previous_available() -> bool
- set_popup(popup: Node)
- set_tab_button_icon(tab_idx: int, icon: Texture2D)
- set_tab_disabled(tab_idx: int, disabled: bool)
- set_tab_hidden(tab_idx: int, hidden: bool)
- set_tab_icon(tab_idx: int, icon: Texture2D)
- set_tab_icon_max_width(tab_idx: int, width: int)
- set_tab_metadata(tab_idx: int, metadata: Variant)
- set_tab_title(tab_idx: int, title: String)
- set_tab_tooltip(tab_idx: int, tooltip: String)

**Signals:**
- active_tab_rearranged(idx_to: int)
- pre_popup_pressed
- tab_button_pressed(tab: int)
- tab_changed(tab: int)
- tab_clicked(tab: int)
- tab_hovered(tab: int)
- tab_selected(tab: int)

**Enums:**
**TabPosition:** POSITION_TOP=0, POSITION_BOTTOM=1, POSITION_MAX=2

