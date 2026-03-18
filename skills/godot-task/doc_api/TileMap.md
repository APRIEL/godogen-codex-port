## TileMap <- Node2D

Node for 2D tile-based maps. Tilemaps use a TileSet which contain a list of tiles which are used to create grid-based maps. A TileMap may have several layers, layouting tiles on top of each other. For performance reasons, all TileMap updates are batched at the end of a frame. Notably, this means that scene tiles from a TileSetScenesCollectionSource may be initialized after their parent. This is only queued when inside the scene tree. To force an update earlier on, call `update_internals`. **Note:** For performance and compatibility reasons, the coordinates serialized by TileMap are limited to 16-bit signed integers, i.e. the range for X and Y coordinates is from `-32768` to `32767`. When saving tile data, tiles outside this range are wrapped.

**Props:**
- collision_animatable: bool = false
- collision_visibility_mode: int (TileMap.VisibilityMode) = 0
- navigation_visibility_mode: int (TileMap.VisibilityMode) = 0
- rendering_quadrant_size: int = 16
- tile_set: TileSet

**Methods:**
- add_layer(to_position: int)
- clear()
- clear_layer(layer: int)
- erase_cell(layer: int, coords: Vector2i)
- fix_invalid_tiles()
- force_update(layer: int = -1)
- get_cell_alternative_tile(layer: int, coords: Vector2i, use_proxies: bool = false) -> int
- get_cell_atlas_coords(layer: int, coords: Vector2i, use_proxies: bool = false) -> Vector2i
- get_cell_source_id(layer: int, coords: Vector2i, use_proxies: bool = false) -> int
- get_cell_tile_data(layer: int, coords: Vector2i, use_proxies: bool = false) -> TileData
- get_coords_for_body_rid(body: RID) -> Vector2i
- get_layer_for_body_rid(body: RID) -> int
- get_layer_modulate(layer: int) -> Color
- get_layer_name(layer: int) -> String
- get_layer_navigation_map(layer: int) -> RID
- get_layer_y_sort_origin(layer: int) -> int
- get_layer_z_index(layer: int) -> int
- get_layers_count() -> int
- get_navigation_map(layer: int) -> RID
- get_neighbor_cell(coords: Vector2i, neighbor: int) -> Vector2i
- get_pattern(layer: int, coords_array: Vector2i[]) -> TileMapPattern
- get_surrounding_cells(coords: Vector2i) -> Vector2i[]
- get_used_cells(layer: int) -> Vector2i[]
- get_used_cells_by_id(layer: int, source_id: int = -1, atlas_coords: Vector2i = Vector2i(-1, -1), alternative_tile: int = -1) -> Vector2i[]
- get_used_rect() -> Rect2i
- is_cell_flipped_h(layer: int, coords: Vector2i, use_proxies: bool = false) -> bool
- is_cell_flipped_v(layer: int, coords: Vector2i, use_proxies: bool = false) -> bool
- is_cell_transposed(layer: int, coords: Vector2i, use_proxies: bool = false) -> bool
- is_layer_enabled(layer: int) -> bool
- is_layer_navigation_enabled(layer: int) -> bool
- is_layer_y_sort_enabled(layer: int) -> bool
- local_to_map(local_position: Vector2) -> Vector2i
- map_pattern(position_in_tilemap: Vector2i, coords_in_pattern: Vector2i, pattern: TileMapPattern) -> Vector2i
- map_to_local(map_position: Vector2i) -> Vector2
- move_layer(layer: int, to_position: int)
- notify_runtime_tile_data_update(layer: int = -1)
- remove_layer(layer: int)
- set_cell(layer: int, coords: Vector2i, source_id: int = -1, atlas_coords: Vector2i = Vector2i(-1, -1), alternative_tile: int = 0)
- set_cells_terrain_connect(layer: int, cells: Vector2i[], terrain_set: int, terrain: int, ignore_empty_terrains: bool = true)
- set_cells_terrain_path(layer: int, path: Vector2i[], terrain_set: int, terrain: int, ignore_empty_terrains: bool = true)
- set_layer_enabled(layer: int, enabled: bool)
- set_layer_modulate(layer: int, modulate: Color)
- set_layer_name(layer: int, name: String)
- set_layer_navigation_enabled(layer: int, enabled: bool)
- set_layer_navigation_map(layer: int, map: RID)
- set_layer_y_sort_enabled(layer: int, y_sort_enabled: bool)
- set_layer_y_sort_origin(layer: int, y_sort_origin: int)
- set_layer_z_index(layer: int, z_index: int)
- set_navigation_map(layer: int, map: RID)
- set_pattern(layer: int, position: Vector2i, pattern: TileMapPattern)
- update_internals()

**Signals:**
- changed

**Enums:**
**VisibilityMode:** VISIBILITY_MODE_DEFAULT=0, VISIBILITY_MODE_FORCE_HIDE=2, VISIBILITY_MODE_FORCE_SHOW=1

