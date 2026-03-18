## ScrollContainer <- Container

A container used to provide a child control with scrollbars when needed. Scrollbars will automatically be drawn at the right (for vertical) or bottom (for horizontal) and will enable dragging to move the viewable Control (and its children) within the ScrollContainer. Scrollbars will also automatically resize the grabber based on the `Control.custom_minimum_size` of the Control relative to the ScrollContainer.

**Props:**
- clip_contents: bool = true
- draw_focus_border: bool = false
- follow_focus: bool = false
- horizontal_scroll_mode: int (ScrollContainer.ScrollMode) = 1
- scroll_deadzone: int = 0
- scroll_hint_mode: int (ScrollContainer.ScrollHintMode) = 0
- scroll_horizontal: int = 0
- scroll_horizontal_custom_step: float = -1.0
- scroll_vertical: int = 0
- scroll_vertical_custom_step: float = -1.0
- tile_scroll_hint: bool = false
- vertical_scroll_mode: int (ScrollContainer.ScrollMode) = 1

**Methods:**
- ensure_control_visible(control: Control)
- get_h_scroll_bar() -> HScrollBar
- get_v_scroll_bar() -> VScrollBar

**Signals:**
- scroll_ended
- scroll_started

**Enums:**
**ScrollMode:** SCROLL_MODE_DISABLED=0, SCROLL_MODE_AUTO=1, SCROLL_MODE_SHOW_ALWAYS=2, SCROLL_MODE_SHOW_NEVER=3, SCROLL_MODE_RESERVE=4
**ScrollHintMode:** SCROLL_HINT_MODE_DISABLED=0, SCROLL_HINT_MODE_ALL=1, SCROLL_HINT_MODE_TOP_AND_LEFT=2, SCROLL_HINT_MODE_BOTTOM_AND_RIGHT=3

