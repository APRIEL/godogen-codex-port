## TileSetAtlasSource <- TileSetSource

An atlas is a grid of tiles laid out on a texture. Each tile in the grid must be exposed using `create_tile`. Those tiles are then indexed using their coordinates in the grid. Each tile can also have a size in the grid coordinates, making it more or less cells in the atlas. Alternatives version of a tile can be created using `create_alternative_tile`, which are then indexed using an alternative ID. The main tile (the one in the grid), is accessed with an alternative ID equal to 0. Each tile alternate has a set of properties that is defined by the source's TileSet layers. Those properties are stored in a TileData object that can be accessed and modified using `get_tile_data`. As TileData properties are stored directly in the TileSetAtlasSource resource, their properties might also be set using `TileSetAtlasSource.set("<coords_x>:<coords_y>/<alternative_id>/<tile_data_property>")`.

**Props:**
- margins: Vector2i = Vector2i(0, 0)
- separation: Vector2i = Vector2i(0, 0)
- texture: Texture2D
- texture_region_size: Vector2i = Vector2i(16, 16)
- use_texture_padding: bool = true

**Methods:**
- clear_tiles_outside_texture()
- create_alternative_tile(atlas_coords: Vector2i, alternative_id_override: int = -1) -> int
- create_tile(atlas_coords: Vector2i, size: Vector2i = Vector2i(1, 1))
- get_atlas_grid_size() -> Vector2i
- get_next_alternative_tile_id(atlas_coords: Vector2i) -> int
- get_runtime_texture() -> Texture2D
- get_runtime_tile_texture_region(atlas_coords: Vector2i, frame: int) -> Rect2i
- get_tile_animation_columns(atlas_coords: Vector2i) -> int
- get_tile_animation_frame_duration(atlas_coords: Vector2i, frame_index: int) -> float
- get_tile_animation_frames_count(atlas_coords: Vector2i) -> int
- get_tile_animation_mode(atlas_coords: Vector2i) -> int
- get_tile_animation_separation(atlas_coords: Vector2i) -> Vector2i
- get_tile_animation_speed(atlas_coords: Vector2i) -> float
- get_tile_animation_total_duration(atlas_coords: Vector2i) -> float
- get_tile_at_coords(atlas_coords: Vector2i) -> Vector2i
- get_tile_data(atlas_coords: Vector2i, alternative_tile: int) -> TileData
- get_tile_size_in_atlas(atlas_coords: Vector2i) -> Vector2i
- get_tile_texture_region(atlas_coords: Vector2i, frame: int = 0) -> Rect2i
- get_tiles_to_be_removed_on_change(texture: Texture2D, margins: Vector2i, separation: Vector2i, texture_region_size: Vector2i) -> PackedVector2Array
- has_room_for_tile(atlas_coords: Vector2i, size: Vector2i, animation_columns: int, animation_separation: Vector2i, frames_count: int, ignored_tile: Vector2i = Vector2i(-1, -1)) -> bool
- has_tiles_outside_texture() -> bool
- move_tile_in_atlas(atlas_coords: Vector2i, new_atlas_coords: Vector2i = Vector2i(-1, -1), new_size: Vector2i = Vector2i(-1, -1))
- remove_alternative_tile(atlas_coords: Vector2i, alternative_tile: int)
- remove_tile(atlas_coords: Vector2i)
- set_alternative_tile_id(atlas_coords: Vector2i, alternative_tile: int, new_id: int)
- set_tile_animation_columns(atlas_coords: Vector2i, frame_columns: int)
- set_tile_animation_frame_duration(atlas_coords: Vector2i, frame_index: int, duration: float)
- set_tile_animation_frames_count(atlas_coords: Vector2i, frames_count: int)
- set_tile_animation_mode(atlas_coords: Vector2i, mode: int)
- set_tile_animation_separation(atlas_coords: Vector2i, separation: Vector2i)
- set_tile_animation_speed(atlas_coords: Vector2i, speed: float)

**Enums:**
**TileAnimationMode:** TILE_ANIMATION_MODE_DEFAULT=0, TILE_ANIMATION_MODE_RANDOM_START_TIMES=1, TILE_ANIMATION_MODE_MAX=2
**Constants:** TRANSFORM_FLIP_H=4096, TRANSFORM_FLIP_V=8192, TRANSFORM_TRANSPOSE=16384

