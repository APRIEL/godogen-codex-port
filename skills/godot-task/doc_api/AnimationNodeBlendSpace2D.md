## AnimationNodeBlendSpace2D <- AnimationRootNode

A resource used by AnimationNodeBlendTree. AnimationNodeBlendSpace2D represents a virtual 2D space on which AnimationRootNodes are placed. Outputs the linear blend of the three adjacent animations using a Vector2 weight. Adjacent in this context means the three AnimationRootNodes making up the triangle that contains the current value. You can add vertices to the blend space with `add_blend_point` and automatically triangulate it by setting `auto_triangles` to `true`. Otherwise, use `add_triangle` and `remove_triangle` to triangulate the blend space by hand.

**Props:**
- auto_triangles: bool = true
- blend_mode: int (AnimationNodeBlendSpace2D.BlendMode) = 0
- max_space: Vector2 = Vector2(1, 1)
- min_space: Vector2 = Vector2(-1, -1)
- snap: Vector2 = Vector2(0.1, 0.1)
- sync: bool = false
- x_label: String = "x"
- y_label: String = "y"

**Methods:**
- add_blend_point(node: AnimationRootNode, pos: Vector2, at_index: int = -1)
- add_triangle(x: int, y: int, z: int, at_index: int = -1)
- get_blend_point_count() -> int
- get_blend_point_node(point: int) -> AnimationRootNode
- get_blend_point_position(point: int) -> Vector2
- get_triangle_count() -> int
- get_triangle_point(triangle: int, point: int) -> int
- remove_blend_point(point: int)
- remove_triangle(triangle: int)
- set_blend_point_node(point: int, node: AnimationRootNode)
- set_blend_point_position(point: int, pos: Vector2)

**Signals:**
- triangles_updated

**Enums:**
**BlendMode:** BLEND_MODE_INTERPOLATED=0, BLEND_MODE_DISCRETE=1, BLEND_MODE_DISCRETE_CARRY=2

