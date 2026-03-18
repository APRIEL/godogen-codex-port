## Line2D <- Node2D

This node draws a 2D polyline, i.e. a shape consisting of several points connected by segments. Line2D is not a mathematical polyline, i.e. the segments are not infinitely thin. It is intended for rendering and it can be colored and optionally textured. **Warning:** Certain configurations may be impossible to draw nicely, such as very sharp angles. In these situations, the node uses fallback drawing logic to look decent. **Note:** Line2D is drawn using a 2D mesh.

**Props:**
- antialiased: bool = false
- begin_cap_mode: int (Line2D.LineCapMode) = 0
- closed: bool = false
- default_color: Color = Color(1, 1, 1, 1)
- end_cap_mode: int (Line2D.LineCapMode) = 0
- gradient: Gradient
- joint_mode: int (Line2D.LineJointMode) = 0
- points: PackedVector2Array = PackedVector2Array()
- round_precision: int = 8
- sharp_limit: float = 2.0
- texture: Texture2D
- texture_mode: int (Line2D.LineTextureMode) = 0
- width: float = 10.0
- width_curve: Curve

**Methods:**
- add_point(position: Vector2, index: int = -1)
- clear_points()
- get_point_count() -> int
- get_point_position(index: int) -> Vector2
- remove_point(index: int)
- set_point_position(index: int, position: Vector2)

**Enums:**
**LineJointMode:** LINE_JOINT_SHARP=0, LINE_JOINT_BEVEL=1, LINE_JOINT_ROUND=2
**LineCapMode:** LINE_CAP_NONE=0, LINE_CAP_BOX=1, LINE_CAP_ROUND=2
**LineTextureMode:** LINE_TEXTURE_NONE=0, LINE_TEXTURE_TILE=1, LINE_TEXTURE_STRETCH=2

