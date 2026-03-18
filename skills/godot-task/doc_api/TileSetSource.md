## TileSetSource <- Resource

Exposes a set of tiles for a TileSet resource. Tiles in a source are indexed with two IDs, coordinates ID (of type Vector2i) and an alternative ID (of type int), named according to their use in the TileSetAtlasSource class. Depending on the TileSet source type, those IDs might have restrictions on their values, this is why the base TileSetSource class only exposes getters for them. You can iterate over all tiles exposed by a TileSetSource by first iterating over coordinates IDs using `get_tiles_count` and `get_tile_id`, then over alternative IDs using `get_alternative_tiles_count` and `get_alternative_tile_id`. **Warning:** TileSetSource can only be added to one TileSet at the same time. Calling `TileSet.add_source` on a second TileSet will remove the source from the first one.

**Methods:**
- get_alternative_tile_id(atlas_coords: Vector2i, index: int) -> int
- get_alternative_tiles_count(atlas_coords: Vector2i) -> int
- get_tile_id(index: int) -> Vector2i
- get_tiles_count() -> int
- has_alternative_tile(atlas_coords: Vector2i, alternative_tile: int) -> bool
- has_tile(atlas_coords: Vector2i) -> bool

