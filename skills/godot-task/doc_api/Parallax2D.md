## Parallax2D <- Node2D

A Parallax2D is used to create a parallax effect. It can move at a different speed relative to the camera movement using `scroll_scale`. This creates an illusion of depth in a 2D game. If manual scrolling is desired, the Camera2D position can be ignored with `ignore_camera_scroll`. **Note:** Any changes to this node's position made after it enters the scene tree will be overridden if `ignore_camera_scroll` is `false` or `screen_offset` is modified.

**Props:**
- autoscroll: Vector2 = Vector2(0, 0)
- follow_viewport: bool = true
- ignore_camera_scroll: bool = false
- limit_begin: Vector2 = Vector2(-10000000, -10000000)
- limit_end: Vector2 = Vector2(10000000, 10000000)
- physics_interpolation_mode: int (Node.PhysicsInterpolationMode) = 2
- repeat_size: Vector2 = Vector2(0, 0)
- repeat_times: int = 1
- screen_offset: Vector2 = Vector2(0, 0)
- scroll_offset: Vector2 = Vector2(0, 0)
- scroll_scale: Vector2 = Vector2(1, 1)

