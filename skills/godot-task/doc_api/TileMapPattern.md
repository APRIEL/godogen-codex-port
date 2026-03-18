## TileMapPattern <- Resource

This resource holds a set of cells to help bulk manipulations of TileMap. A pattern always starts at the `(0, 0)` coordinates and cannot have cells with negative coordinates.

**Methods:**
- get_cell_alternative_tile(coords: Vector2i) -> int
- get_cell_atlas_coords(coords: Vector2i) -> Vector2i
- get_cell_source_id(coords: Vector2i) -> int
- get_size() -> Vector2i
- get_used_cells() -> Vector2i[]
- has_cell(coords: Vector2i) -> bool
- is_empty() -> bool
- remove_cell(coords: Vector2i, update_size: bool)
- set_cell(coords: Vector2i, source_id: int = -1, atlas_coords: Vector2i = Vector2i(-1, -1), alternative_tile: int = -1)
- set_size(size: Vector2i)

