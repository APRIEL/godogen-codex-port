## Camera2D <- Node2D

Camera node for 2D scenes. It forces the screen (current layer) to scroll following this node. This makes it easier (and faster) to program scrollable scenes than manually changing the position of CanvasItem-based nodes. Cameras register themselves in the nearest Viewport node (when ascending the tree). Only one camera can be active per viewport. If no viewport is available ascending the tree, the camera will register in the global viewport. This node is intended to be a simple helper to get things going quickly, but more functionality may be desired to change how the camera works. To make your own custom camera node, inherit it from Node2D and change the transform of the canvas by setting `Viewport.canvas_transform` in Viewport (you can obtain the current Viewport by using `Node.get_viewport`). Note that the Camera2D node's `Node2D.global_position` doesn't represent the actual position of the screen, which may differ due to applied smoothing or limits. You can use `get_screen_center_position` to get the real position. Same for the node's `Node2D.global_rotation` which may be different due to applied rotation smoothing. You can use `get_screen_rotation` to get the current rotation of the screen.

**Props:**
- anchor_mode: int (Camera2D.AnchorMode) = 1
- custom_viewport: Node
- drag_bottom_margin: float = 0.2
- drag_horizontal_enabled: bool = false
- drag_horizontal_offset: float = 0.0
- drag_left_margin: float = 0.2
- drag_right_margin: float = 0.2
- drag_top_margin: float = 0.2
- drag_vertical_enabled: bool = false
- drag_vertical_offset: float = 0.0
- editor_draw_drag_margin: bool = false
- editor_draw_limits: bool = false
- editor_draw_screen: bool = true
- enabled: bool = true
- ignore_rotation: bool = true
- limit_bottom: int = 10000000
- limit_enabled: bool = true
- limit_left: int = -10000000
- limit_right: int = 10000000
- limit_smoothed: bool = false
- limit_top: int = -10000000
- offset: Vector2 = Vector2(0, 0)
- position_smoothing_enabled: bool = false
- position_smoothing_speed: float = 5.0
- process_callback: int (Camera2D.Camera2DProcessCallback) = 1
- rotation_smoothing_enabled: bool = false
- rotation_smoothing_speed: float = 5.0
- zoom: Vector2 = Vector2(1, 1)

**Methods:**
- align()
- force_update_scroll()
- get_drag_margin(margin: int) -> float
- get_limit(margin: int) -> int
- get_screen_center_position() -> Vector2
- get_screen_rotation() -> float
- get_target_position() -> Vector2
- is_current() -> bool
- make_current()
- reset_smoothing()
- set_drag_margin(margin: int, drag_margin: float)
- set_limit(margin: int, limit: int)

**Enums:**
**AnchorMode:** ANCHOR_MODE_FIXED_TOP_LEFT=0, ANCHOR_MODE_DRAG_CENTER=1
**Camera2DProcessCallback:** CAMERA2D_PROCESS_PHYSICS=0, CAMERA2D_PROCESS_IDLE=1

