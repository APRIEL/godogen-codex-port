## Curve2D <- Resource

This class describes a Bézier curve in 2D space. It is mainly used to give a shape to a Path2D, but can be manually sampled for other purposes. It keeps a cache of precalculated points along the curve, to speed up further calculations.

**Props:**
- bake_interval: float = 5.0
- point_count: int = 0

**Methods:**
- add_point(position: Vector2, in: Vector2 = Vector2(0, 0), out: Vector2 = Vector2(0, 0), index: int = -1)
- clear_points()
- get_baked_length() -> float
- get_baked_points() -> PackedVector2Array
- get_closest_offset(to_point: Vector2) -> float
- get_closest_point(to_point: Vector2) -> Vector2
- get_point_in(idx: int) -> Vector2
- get_point_out(idx: int) -> Vector2
- get_point_position(idx: int) -> Vector2
- remove_point(idx: int)
- sample(idx: int, t: float) -> Vector2
- sample_baked(offset: float = 0.0, cubic: bool = false) -> Vector2
- sample_baked_with_rotation(offset: float = 0.0, cubic: bool = false) -> Transform2D
- samplef(fofs: float) -> Vector2
- set_point_in(idx: int, position: Vector2)
- set_point_out(idx: int, position: Vector2)
- set_point_position(idx: int, position: Vector2)
- tessellate(max_stages: int = 5, tolerance_degrees: float = 4) -> PackedVector2Array
- tessellate_even_length(max_stages: int = 5, tolerance_length: float = 20.0) -> PackedVector2Array

