## AnimationNodeBlendSpace1D <- AnimationRootNode

A resource used by AnimationNodeBlendTree. AnimationNodeBlendSpace1D represents a virtual axis on which any type of AnimationRootNodes can be added using `add_blend_point`. Outputs the linear blend of the two AnimationRootNodes adjacent to the current value. You can set the extents of the axis with `min_space` and `max_space`.

**Props:**
- blend_mode: int (AnimationNodeBlendSpace1D.BlendMode) = 0
- max_space: float = 1.0
- min_space: float = -1.0
- snap: float = 0.1
- sync: bool = false
- value_label: String = "value"

**Methods:**
- add_blend_point(node: AnimationRootNode, pos: float, at_index: int = -1)
- get_blend_point_count() -> int
- get_blend_point_node(point: int) -> AnimationRootNode
- get_blend_point_position(point: int) -> float
- remove_blend_point(point: int)
- set_blend_point_node(point: int, node: AnimationRootNode)
- set_blend_point_position(point: int, pos: float)

**Enums:**
**BlendMode:** BLEND_MODE_INTERPOLATED=0, BLEND_MODE_DISCRETE=1, BLEND_MODE_DISCRETE_CARRY=2

