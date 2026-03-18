## TileData <- Object

TileData object represents a single tile in a TileSet. It is usually edited using the tileset editor, but it can be modified at runtime using `TileMapLayer._tile_data_runtime_update`.

**Props:**
- flip_h: bool = false
- flip_v: bool = false
- material: Material
- modulate: Color = Color(1, 1, 1, 1)
- probability: float = 1.0
- terrain: int = -1
- terrain_set: int = -1
- texture_origin: Vector2i = Vector2i(0, 0)
- transpose: bool = false
- y_sort_origin: int = 0
- z_index: int = 0

**Methods:**
- add_collision_polygon(layer_id: int)
- add_occluder_polygon(layer_id: int)
- get_collision_polygon_one_way_margin(layer_id: int, polygon_index: int) -> float
- get_collision_polygon_points(layer_id: int, polygon_index: int) -> PackedVector2Array
- get_collision_polygons_count(layer_id: int) -> int
- get_constant_angular_velocity(layer_id: int) -> float
- get_constant_linear_velocity(layer_id: int) -> Vector2
- get_custom_data(layer_name: String) -> Variant
- get_custom_data_by_layer_id(layer_id: int) -> Variant
- get_navigation_polygon(layer_id: int, flip_h: bool = false, flip_v: bool = false, transpose: bool = false) -> NavigationPolygon
- get_occluder(layer_id: int, flip_h: bool = false, flip_v: bool = false, transpose: bool = false) -> OccluderPolygon2D
- get_occluder_polygon(layer_id: int, polygon_index: int, flip_h: bool = false, flip_v: bool = false, transpose: bool = false) -> OccluderPolygon2D
- get_occluder_polygons_count(layer_id: int) -> int
- get_terrain_peering_bit(peering_bit: int) -> int
- has_custom_data(layer_name: String) -> bool
- is_collision_polygon_one_way(layer_id: int, polygon_index: int) -> bool
- is_valid_terrain_peering_bit(peering_bit: int) -> bool
- remove_collision_polygon(layer_id: int, polygon_index: int)
- remove_occluder_polygon(layer_id: int, polygon_index: int)
- set_collision_polygon_one_way(layer_id: int, polygon_index: int, one_way: bool)
- set_collision_polygon_one_way_margin(layer_id: int, polygon_index: int, one_way_margin: float)
- set_collision_polygon_points(layer_id: int, polygon_index: int, polygon: PackedVector2Array)
- set_collision_polygons_count(layer_id: int, polygons_count: int)
- set_constant_angular_velocity(layer_id: int, velocity: float)
- set_constant_linear_velocity(layer_id: int, velocity: Vector2)
- set_custom_data(layer_name: String, value: Variant)
- set_custom_data_by_layer_id(layer_id: int, value: Variant)
- set_navigation_polygon(layer_id: int, navigation_polygon: NavigationPolygon)
- set_occluder(layer_id: int, occluder_polygon: OccluderPolygon2D)
- set_occluder_polygon(layer_id: int, polygon_index: int, polygon: OccluderPolygon2D)
- set_occluder_polygons_count(layer_id: int, polygons_count: int)
- set_terrain_peering_bit(peering_bit: int, terrain: int)

**Signals:**
- changed

