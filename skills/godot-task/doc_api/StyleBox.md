## StyleBox <- Resource

StyleBox is an abstract base class for drawing stylized boxes for UI elements. It is used for panels, buttons, LineEdit backgrounds, Tree backgrounds, etc. and also for testing a transparency mask for pointer signals. If mask test fails on a StyleBox assigned as mask to a control, clicks and motion signals will go through it to the one below. **Note:** For control nodes that have *Theme Properties*, the `focus` StyleBox is displayed over the `normal`, `hover` or `pressed` StyleBox. This makes the `focus` StyleBox more reusable across different nodes.

**Props:**
- content_margin_bottom: float = -1.0
- content_margin_left: float = -1.0
- content_margin_right: float = -1.0
- content_margin_top: float = -1.0

**Methods:**
- draw(canvas_item: RID, rect: Rect2)
- get_content_margin(margin: int) -> float
- get_current_item_drawn() -> CanvasItem
- get_margin(margin: int) -> float
- get_minimum_size() -> Vector2
- get_offset() -> Vector2
- set_content_margin(margin: int, offset: float)
- set_content_margin_all(offset: float)
- test_mask(point: Vector2, rect: Rect2) -> bool

