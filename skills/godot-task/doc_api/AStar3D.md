## AStar3D <- RefCounted

A* (A star) is a computer algorithm used in pathfinding and graph traversal, the process of plotting short paths among vertices (points), passing through a given set of edges (segments). It enjoys widespread use due to its performance and accuracy. Godot's A* implementation uses points in 3D space and Euclidean distances by default. You must add points manually with `add_point` and create segments manually with `connect_points`. Once done, you can test if there is a path between two points with the `are_points_connected` function, get a path containing indices by `get_id_path`, or one containing actual coordinates with `get_point_path`. It is also possible to use non-Euclidean distances. To do so, create a script that extends AStar3D and override the methods `_compute_cost` and `_estimate_cost`. Both should take two point IDs and return the distance between the corresponding points. **Example:** Use Manhattan distance instead of Euclidean distance: `_estimate_cost` should return a lower bound of the distance, i.e. `_estimate_cost(u, v) <= _compute_cost(u, v)`. This serves as a hint to the algorithm because the custom `_compute_cost` might be computation-heavy. If this is not the case, make `_estimate_cost` return the same value as `_compute_cost` to provide the algorithm with the most accurate information. If the default `_estimate_cost` and `_compute_cost` methods are used, or if the supplied `_estimate_cost` method returns a lower bound of the cost, then the paths returned by A* will be the lowest-cost paths. Here, the cost of a path equals the sum of the `_compute_cost` results of all segments in the path multiplied by the `weight_scale`s of the endpoints of the respective segments. If the default methods are used and the `weight_scale`s of all points are set to `1.0`, then this equals the sum of Euclidean distances of all segments in the path.

**Props:**
- neighbor_filter_enabled: bool = false

**Methods:**
- add_point(id: int, position: Vector3, weight_scale: float = 1.0)
- are_points_connected(id: int, to_id: int, bidirectional: bool = true) -> bool
- clear()
- connect_points(id: int, to_id: int, bidirectional: bool = true)
- disconnect_points(id: int, to_id: int, bidirectional: bool = true)
- get_available_point_id() -> int
- get_closest_point(to_position: Vector3, include_disabled: bool = false) -> int
- get_closest_position_in_segment(to_position: Vector3) -> Vector3
- get_id_path(from_id: int, to_id: int, allow_partial_path: bool = false) -> PackedInt64Array
- get_point_capacity() -> int
- get_point_connections(id: int) -> PackedInt64Array
- get_point_count() -> int
- get_point_ids() -> PackedInt64Array
- get_point_path(from_id: int, to_id: int, allow_partial_path: bool = false) -> PackedVector3Array
- get_point_position(id: int) -> Vector3
- get_point_weight_scale(id: int) -> float
- has_point(id: int) -> bool
- is_point_disabled(id: int) -> bool
- remove_point(id: int)
- reserve_space(num_nodes: int)
- set_point_disabled(id: int, disabled: bool = true)
- set_point_position(id: int, position: Vector3)
- set_point_weight_scale(id: int, weight_scale: float)

