## NavigationLink2D <- Node2D

A link between two positions on NavigationRegion2Ds that agents can be routed through. These positions can be on the same NavigationRegion2D or on two different ones. Links are useful to express navigation methods other than traveling along the surface of the navigation polygon, such as ziplines, teleporters, or gaps that can be jumped across.

**Props:**
- bidirectional: bool = true
- enabled: bool = true
- end_position: Vector2 = Vector2(0, 0)
- enter_cost: float = 0.0
- navigation_layers: int = 1
- start_position: Vector2 = Vector2(0, 0)
- travel_cost: float = 1.0

**Methods:**
- get_global_end_position() -> Vector2
- get_global_start_position() -> Vector2
- get_navigation_layer_value(layer_number: int) -> bool
- get_navigation_map() -> RID
- get_rid() -> RID
- set_global_end_position(position: Vector2)
- set_global_start_position(position: Vector2)
- set_navigation_layer_value(layer_number: int, value: bool)
- set_navigation_map(navigation_map: RID)

