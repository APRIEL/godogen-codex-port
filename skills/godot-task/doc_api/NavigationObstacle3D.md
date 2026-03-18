## NavigationObstacle3D <- Node3D

An obstacle needs a navigation map and outline `vertices` defined to work correctly. The outlines can not cross or overlap and are restricted to a plane projection. This means the y-axis of the vertices is ignored, instead the obstacle's global y-axis position is used for placement. The projected shape is extruded by the obstacles height along the y-axis. Obstacles can be included in the navigation mesh baking process when `affect_navigation_mesh` is enabled. They do not add walkable geometry, instead their role is to discard other source geometry inside the shape. This can be used to prevent navigation mesh from appearing in unwanted places, e.g. inside "solid" geometry or on top of it. If `carve_navigation_mesh` is enabled the baked shape will not be affected by offsets of the navigation mesh baking, e.g. the agent radius. With `avoidance_enabled` the obstacle can constrain the avoidance velocities of avoidance using agents. If the obstacle's vertices are wound in clockwise order, avoidance agents will be pushed in by the obstacle, otherwise, avoidance agents will be pushed out. Obstacles using vertices and avoidance can warp to a new position but should not be moved every single frame as each change requires a rebuild of the avoidance map.

**Props:**
- affect_navigation_mesh: bool = false
- avoidance_enabled: bool = true
- avoidance_layers: int = 1
- carve_navigation_mesh: bool = false
- height: float = 1.0
- radius: float = 0.0
- use_3d_avoidance: bool = false
- velocity: Vector3 = Vector3(0, 0, 0)
- vertices: PackedVector3Array = PackedVector3Array()

**Methods:**
- get_avoidance_layer_value(layer_number: int) -> bool
- get_navigation_map() -> RID
- get_rid() -> RID
- set_avoidance_layer_value(layer_number: int, value: bool)
- set_navigation_map(navigation_map: RID)

