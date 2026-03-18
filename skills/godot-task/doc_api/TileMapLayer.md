## TileMapLayer <- Node2D

Node for 2D tile-based maps. A TileMapLayer uses a TileSet which contain a list of tiles which are used to create grid-based maps. Unlike the TileMap node, which is deprecated, TileMapLayer has only one layer of tiles. You can use several TileMapLayer to achieve the same result as a TileMap node. For performance reasons, all TileMap updates are batched at the end of a frame. Notably, this means that scene tiles from a TileSetScenesCollectionSource are initialized after their parent. This is only queued when inside the scene tree. To force an update earlier on, call `update_internals`. **Note:** For performance and compatibility reasons, the coordinates serialized by TileMapLayer are limited to 16-bit signed integers, i.e. the range for X and Y coordinates is from `-32768` to `32767`. When saving tile data, tiles outside this range are wrapped.

**Props:**
- collision_enabled: bool = true
- collision_visibility_mode: int (TileMapLayer.DebugVisibilityMode) = 0
- enabled: bool = true
- navigation_enabled: bool = true
- navigation_visibility_mode: int (TileMapLayer.DebugVisibilityMode) = 0
- occlusion_enabled: bool = true
- physics_quadrant_size: int = 16
- rendering_quadrant_size: int = 16
- tile_map_data: PackedByteArray = PackedByteArray()
- tile_set: TileSet
- use_kinematic_bodies: bool = false
- x_draw_order_reversed: bool = false
- y_sort_origin: int = 0

**Methods:**
- clear()
- erase_cell(coords: Vector2i)
- fix_invalid_tiles()
- get_cell_alternative_tile(coords: Vector2i) -> int
- get_cell_atlas_coords(coords: Vector2i) -> Vector2i
- get_cell_source_id(coords: Vector2i) -> int
- get_cell_tile_data(coords: Vector2i) -> TileData
- get_coords_for_body_rid(body: RID) -> Vector2i
- get_navigation_map() -> RID
- get_neighbor_cell(coords: Vector2i, neighbor: int) -> Vector2i
- get_pattern(coords_array: Vector2i[]) -> TileMapPattern
- get_surrounding_cells(coords: Vector2i) -> Vector2i[]
- get_used_cells() -> Vector2i[]
- get_used_cells_by_id(source_id: int = -1, atlas_coords: Vector2i = Vector2i(-1, -1), alternative_tile: int = -1) -> Vector2i[]
- get_used_rect() -> Rect2i
- has_body_rid(body: RID) -> bool
- is_cell_flipped_h(coords: Vector2i) -> bool
- is_cell_flipped_v(coords: Vector2i) -> bool
- is_cell_transposed(coords: Vector2i) -> bool
- local_to_map(local_position: Vector2) -> Vector2i
- map_pattern(position_in_tilemap: Vector2i, coords_in_pattern: Vector2i, pattern: TileMapPattern) -> Vector2i
- map_to_local(map_position: Vector2i) -> Vector2
- notify_runtime_tile_data_update()
- set_cell(coords: Vector2i, source_id: int = -1, atlas_coords: Vector2i = Vector2i(-1, -1), alternative_tile: int = 0)
- set_cells_terrain_connect(cells: Vector2i[], terrain_set: int, terrain: int, ignore_empty_terrains: bool = true)
- set_cells_terrain_path(path: Vector2i[], terrain_set: int, terrain: int, ignore_empty_terrains: bool = true)
- set_navigation_map(map: RID)
- set_pattern(position: Vector2i, pattern: TileMapPattern)
- update_internals()

**Signals:**
- changed

**Enums:**
**DebugVisibilityMode:** DEBUG_VISIBILITY_MODE_DEFAULT=0, DEBUG_VISIBILITY_MODE_FORCE_HIDE=2, DEBUG_VISIBILITY_MODE_FORCE_SHOW=1

