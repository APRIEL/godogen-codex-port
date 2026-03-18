## NavigationRegion3D <- Node3D

A traversable 3D region based on a NavigationMesh that NavigationAgent3Ds can use for pathfinding. Two regions can be connected to each other if they share a similar edge. You can set the minimum distance between two vertices required to connect two edges by using `NavigationServer3D.map_set_edge_connection_margin`. **Note:** Overlapping two regions' navigation meshes is not enough for connecting two regions. They must share a similar edge. The cost of entering this region from another region can be controlled with the `enter_cost` value. **Note:** This value is not added to the path cost when the start position is already inside this region. The cost of traveling distances inside this region can be controlled with the `travel_cost` multiplier. **Note:** This node caches changes to its properties, so if you make changes to the underlying region RID in NavigationServer3D, they will not be reflected in this node's properties.

**Props:**
- enabled: bool = true
- enter_cost: float = 0.0
- navigation_layers: int = 1
- navigation_mesh: NavigationMesh
- travel_cost: float = 1.0
- use_edge_connections: bool = true

**Methods:**
- bake_navigation_mesh(on_thread: bool = true)
- get_bounds() -> AABB
- get_navigation_layer_value(layer_number: int) -> bool
- get_navigation_map() -> RID
- get_region_rid() -> RID
- get_rid() -> RID
- is_baking() -> bool
- set_navigation_layer_value(layer_number: int, value: bool)
- set_navigation_map(navigation_map: RID)

**Signals:**
- bake_finished
- navigation_mesh_changed

