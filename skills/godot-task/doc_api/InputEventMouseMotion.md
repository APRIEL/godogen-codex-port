## InputEventMouseMotion <- InputEventMouse

Stores information about a mouse or a pen motion. This includes relative position, absolute position, and velocity. See `Node._input`. **Note:** By default, this event is only emitted once per frame rendered at most. If you need more precise input reporting, set `Input.use_accumulated_input` to `false` to make events emitted as often as possible. If you use InputEventMouseMotion to draw lines, consider using `Geometry2D.bresenham_line` as well to avoid visible gaps in lines if the user is moving the mouse quickly. **Note:** This event may be emitted even when the mouse hasn't moved, either by the operating system or by Godot itself. If you really need to know if the mouse has moved (e.g. to suppress displaying a tooltip), you should check that `relative.is_zero_approx()` is `false`.

**Props:**
- pen_inverted: bool = false
- pressure: float = 0.0
- relative: Vector2 = Vector2(0, 0)
- screen_relative: Vector2 = Vector2(0, 0)
- screen_velocity: Vector2 = Vector2(0, 0)
- tilt: Vector2 = Vector2(0, 0)
- velocity: Vector2 = Vector2(0, 0)

