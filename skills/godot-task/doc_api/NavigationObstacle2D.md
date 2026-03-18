## NavigationObstacle2D <- Node2D

An obstacle needs a navigation map and outline `vertices` defined to work correctly. The outlines can not cross or overlap. Obstacles can be included in the navigation mesh baking process when `affect_navigation_mesh` is enabled. They do not add walkable geometry, instead their role is to discard other source geometry inside the shape. This can be used to prevent navigation mesh from appearing in unwanted places. If `carve_navigation_mesh` is enabled the baked shape will not be affected by offsets of the navigation mesh baking, e.g. the agent radius. With `avoidance_enabled` the obstacle can constrain the avoidance velocities of avoidance using agents. If the obstacle's vertices are wound in clockwise order, avoidance agents will be pushed in by the obstacle, otherwise, avoidance agents will be pushed out. Obstacles using vertices and avoidance can warp to a new position but should not be moved every single frame as each change requires a rebuild of the avoidance map.

**Props:**
- affect_navigation_mesh: bool = false
- avoidance_enabled: bool = true
- avoidance_layers: int = 1
- carve_navigation_mesh: bool = false
- radius: float = 0.0
- velocity: Vector2 = Vector2(0, 0)
- vertices: PackedVector2Array = PackedVector2Array()

**Methods:**
- get_avoidance_layer_value(layer_number: int) -> bool
- get_navigation_map() -> RID
- get_rid() -> RID
- set_avoidance_layer_value(layer_number: int, value: bool)
- set_navigation_map(navigation_map: RID)

