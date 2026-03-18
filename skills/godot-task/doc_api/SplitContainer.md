## SplitContainer <- Container

A container that arranges child controls horizontally or vertically and creates grabbers between them. The grabbers can be dragged around to change the size relations between the child controls.

**Props:**
- collapsed: bool = false
- drag_area_highlight_in_editor: bool = false
- drag_area_margin_begin: int = 0
- drag_area_margin_end: int = 0
- drag_area_offset: int = 0
- dragger_visibility: int (SplitContainer.DraggerVisibility) = 0
- dragging_enabled: bool = true
- split_offset: int = 0
- split_offsets: PackedInt32Array = PackedInt32Array(0)
- touch_dragger_enabled: bool = false
- vertical: bool = false

**Methods:**
- clamp_split_offset(priority_index: int = 0)
- get_drag_area_control() -> Control
- get_drag_area_controls() -> Control[]

**Signals:**
- drag_ended
- drag_started
- dragged(offset: int)

**Enums:**
**DraggerVisibility:** DRAGGER_VISIBLE=0, DRAGGER_HIDDEN=1, DRAGGER_HIDDEN_COLLAPSED=2

