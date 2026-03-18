## TileSet <- Resource

A TileSet is a library of tiles for a TileMapLayer. A TileSet handles a list of TileSetSource, each of them storing a set of tiles. Tiles can either be from a TileSetAtlasSource, which renders tiles out of a texture with support for physics, navigation, etc., or from a TileSetScenesCollectionSource, which exposes scene-based tiles. Tiles are referenced by using three IDs: their source ID, their atlas coordinates ID, and their alternative tile ID. A TileSet can be configured so that its tiles expose more or fewer properties. To do so, the TileSet resources use property layers, which you can add or remove depending on your needs. For example, adding a physics layer allows giving collision shapes to your tiles. Each layer has dedicated properties (physics layer and mask), so you may add several TileSet physics layers for each type of collision you need. See the functions to add new layers for more information.

**Props:**
- tile_layout: int (TileSet.TileLayout) = 0
- tile_offset_axis: int (TileSet.TileOffsetAxis) = 0
- tile_shape: int (TileSet.TileShape) = 0
- tile_size: Vector2i = Vector2i(16, 16)
- uv_clipping: bool = false

**Methods:**
- add_custom_data_layer(to_position: int = -1)
- add_navigation_layer(to_position: int = -1)
- add_occlusion_layer(to_position: int = -1)
- add_pattern(pattern: TileMapPattern, index: int = -1) -> int
- add_physics_layer(to_position: int = -1)
- add_source(source: TileSetSource, atlas_source_id_override: int = -1) -> int
- add_terrain(terrain_set: int, to_position: int = -1)
- add_terrain_set(to_position: int = -1)
- cleanup_invalid_tile_proxies()
- clear_tile_proxies()
- get_alternative_level_tile_proxy(source_from: int, coords_from: Vector2i, alternative_from: int) -> Array
- get_coords_level_tile_proxy(source_from: int, coords_from: Vector2i) -> Array
- get_custom_data_layer_by_name(layer_name: String) -> int
- get_custom_data_layer_name(layer_index: int) -> String
- get_custom_data_layer_type(layer_index: int) -> int
- get_custom_data_layers_count() -> int
- get_navigation_layer_layer_value(layer_index: int, layer_number: int) -> bool
- get_navigation_layer_layers(layer_index: int) -> int
- get_navigation_layers_count() -> int
- get_next_source_id() -> int
- get_occlusion_layer_light_mask(layer_index: int) -> int
- get_occlusion_layer_sdf_collision(layer_index: int) -> bool
- get_occlusion_layers_count() -> int
- get_pattern(index: int = -1) -> TileMapPattern
- get_patterns_count() -> int
- get_physics_layer_collision_layer(layer_index: int) -> int
- get_physics_layer_collision_mask(layer_index: int) -> int
- get_physics_layer_collision_priority(layer_index: int) -> float
- get_physics_layer_physics_material(layer_index: int) -> PhysicsMaterial
- get_physics_layers_count() -> int
- get_source(source_id: int) -> TileSetSource
- get_source_count() -> int
- get_source_id(index: int) -> int
- get_source_level_tile_proxy(source_from: int) -> int
- get_terrain_color(terrain_set: int, terrain_index: int) -> Color
- get_terrain_name(terrain_set: int, terrain_index: int) -> String
- get_terrain_set_mode(terrain_set: int) -> int
- get_terrain_sets_count() -> int
- get_terrains_count(terrain_set: int) -> int
- has_alternative_level_tile_proxy(source_from: int, coords_from: Vector2i, alternative_from: int) -> bool
- has_coords_level_tile_proxy(source_from: int, coords_from: Vector2i) -> bool
- has_custom_data_layer_by_name(layer_name: String) -> bool
- has_source(source_id: int) -> bool
- has_source_level_tile_proxy(source_from: int) -> bool
- map_tile_proxy(source_from: int, coords_from: Vector2i, alternative_from: int) -> Array
- move_custom_data_layer(layer_index: int, to_position: int)
- move_navigation_layer(layer_index: int, to_position: int)
- move_occlusion_layer(layer_index: int, to_position: int)
- move_physics_layer(layer_index: int, to_position: int)
- move_terrain(terrain_set: int, terrain_index: int, to_position: int)
- move_terrain_set(terrain_set: int, to_position: int)
- remove_alternative_level_tile_proxy(source_from: int, coords_from: Vector2i, alternative_from: int)
- remove_coords_level_tile_proxy(source_from: int, coords_from: Vector2i)
- remove_custom_data_layer(layer_index: int)
- remove_navigation_layer(layer_index: int)
- remove_occlusion_layer(layer_index: int)
- remove_pattern(index: int)
- remove_physics_layer(layer_index: int)
- remove_source(source_id: int)
- remove_source_level_tile_proxy(source_from: int)
- remove_terrain(terrain_set: int, terrain_index: int)
- remove_terrain_set(terrain_set: int)
- set_alternative_level_tile_proxy(source_from: int, coords_from: Vector2i, alternative_from: int, source_to: int, coords_to: Vector2i, alternative_to: int)
- set_coords_level_tile_proxy(p_source_from: int, coords_from: Vector2i, source_to: int, coords_to: Vector2i)
- set_custom_data_layer_name(layer_index: int, layer_name: String)
- set_custom_data_layer_type(layer_index: int, layer_type: int)
- set_navigation_layer_layer_value(layer_index: int, layer_number: int, value: bool)
- set_navigation_layer_layers(layer_index: int, layers: int)
- set_occlusion_layer_light_mask(layer_index: int, light_mask: int)
- set_occlusion_layer_sdf_collision(layer_index: int, sdf_collision: bool)
- set_physics_layer_collision_layer(layer_index: int, layer: int)
- set_physics_layer_collision_mask(layer_index: int, mask: int)
- set_physics_layer_collision_priority(layer_index: int, priority: float)
- set_physics_layer_physics_material(layer_index: int, physics_material: PhysicsMaterial)
- set_source_id(source_id: int, new_source_id: int)
- set_source_level_tile_proxy(source_from: int, source_to: int)
- set_terrain_color(terrain_set: int, terrain_index: int, color: Color)
- set_terrain_name(terrain_set: int, terrain_index: int, name: String)
- set_terrain_set_mode(terrain_set: int, mode: int)

**Enums:**
**TileShape:** TILE_SHAPE_SQUARE=0, TILE_SHAPE_ISOMETRIC=1, TILE_SHAPE_HALF_OFFSET_SQUARE=2, TILE_SHAPE_HEXAGON=3
**TileLayout:** TILE_LAYOUT_STACKED=0, TILE_LAYOUT_STACKED_OFFSET=1, TILE_LAYOUT_STAIRS_RIGHT=2, TILE_LAYOUT_STAIRS_DOWN=3, TILE_LAYOUT_DIAMOND_RIGHT=4, TILE_LAYOUT_DIAMOND_DOWN=5
**TileOffsetAxis:** TILE_OFFSET_AXIS_HORIZONTAL=0, TILE_OFFSET_AXIS_VERTICAL=1
**CellNeighbor:** CELL_NEIGHBOR_RIGHT_SIDE=0, CELL_NEIGHBOR_RIGHT_CORNER=1, CELL_NEIGHBOR_BOTTOM_RIGHT_SIDE=2, CELL_NEIGHBOR_BOTTOM_RIGHT_CORNER=3, CELL_NEIGHBOR_BOTTOM_SIDE=4, CELL_NEIGHBOR_BOTTOM_CORNER=5, CELL_NEIGHBOR_BOTTOM_LEFT_SIDE=6, CELL_NEIGHBOR_BOTTOM_LEFT_CORNER=7, CELL_NEIGHBOR_LEFT_SIDE=8, CELL_NEIGHBOR_LEFT_CORNER=9, ...
**TerrainMode:** TERRAIN_MODE_MATCH_CORNERS_AND_SIDES=0, TERRAIN_MODE_MATCH_CORNERS=1, TERRAIN_MODE_MATCH_SIDES=2

