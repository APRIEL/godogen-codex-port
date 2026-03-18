## AStarGrid2D <- RefCounted

AStarGrid2D is a variant of AStar2D that is specialized for partial 2D grids. It is simpler to use because it doesn't require you to manually create points and connect them together. This class also supports multiple types of heuristics, modes for diagonal movement, and a jumping mode to speed up calculations. To use AStarGrid2D, you only need to set the `region` of the grid, optionally set the `cell_size`, and then call the `update` method: To remove a point from the pathfinding grid, it must be set as "solid" with `set_point_solid`.

**Props:**
- cell_shape: int (AStarGrid2D.CellShape) = 0
- cell_size: Vector2 = Vector2(1, 1)
- default_compute_heuristic: int (AStarGrid2D.Heuristic) = 0
- default_estimate_heuristic: int (AStarGrid2D.Heuristic) = 0
- diagonal_mode: int (AStarGrid2D.DiagonalMode) = 0
- jumping_enabled: bool = false
- offset: Vector2 = Vector2(0, 0)
- region: Rect2i = Rect2i(0, 0, 0, 0)
- size: Vector2i = Vector2i(0, 0)

**Methods:**
- clear()
- fill_solid_region(region: Rect2i, solid: bool = true)
- fill_weight_scale_region(region: Rect2i, weight_scale: float)
- get_id_path(from_id: Vector2i, to_id: Vector2i, allow_partial_path: bool = false) -> Vector2i[]
- get_point_data_in_region(region: Rect2i) -> Dictionary[]
- get_point_path(from_id: Vector2i, to_id: Vector2i, allow_partial_path: bool = false) -> PackedVector2Array
- get_point_position(id: Vector2i) -> Vector2
- get_point_weight_scale(id: Vector2i) -> float
- is_dirty() -> bool
- is_in_bounds(x: int, y: int) -> bool
- is_in_boundsv(id: Vector2i) -> bool
- is_point_solid(id: Vector2i) -> bool
- set_point_solid(id: Vector2i, solid: bool = true)
- set_point_weight_scale(id: Vector2i, weight_scale: float)
- update()

**Enums:**
**Heuristic:** HEURISTIC_EUCLIDEAN=0, HEURISTIC_MANHATTAN=1, HEURISTIC_OCTILE=2, HEURISTIC_CHEBYSHEV=3, HEURISTIC_MAX=4
**DiagonalMode:** DIAGONAL_MODE_ALWAYS=0, DIAGONAL_MODE_NEVER=1, DIAGONAL_MODE_AT_LEAST_ONE_WALKABLE=2, DIAGONAL_MODE_ONLY_IF_NO_OBSTACLES=3, DIAGONAL_MODE_MAX=4
**CellShape:** CELL_SHAPE_SQUARE=0, CELL_SHAPE_ISOMETRIC_RIGHT=1, CELL_SHAPE_ISOMETRIC_DOWN=2, CELL_SHAPE_MAX=3

