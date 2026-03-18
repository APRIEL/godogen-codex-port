## Curve3D <- Resource

This class describes a Bézier curve in 3D space. It is mainly used to give a shape to a Path3D, but can be manually sampled for other purposes. It keeps a cache of precalculated points along the curve, to speed up further calculations.

**Props:**
- bake_interval: float = 0.2
- closed: bool = false
- point_count: int = 0
- up_vector_enabled: bool = true

**Methods:**
- add_point(position: Vector3, in: Vector3 = Vector3(0, 0, 0), out: Vector3 = Vector3(0, 0, 0), index: int = -1)
- clear_points()
- get_baked_length() -> float
- get_baked_points() -> PackedVector3Array
- get_baked_tilts() -> PackedFloat32Array
- get_baked_up_vectors() -> PackedVector3Array
- get_closest_offset(to_point: Vector3) -> float
- get_closest_point(to_point: Vector3) -> Vector3
- get_point_in(idx: int) -> Vector3
- get_point_out(idx: int) -> Vector3
- get_point_position(idx: int) -> Vector3
- get_point_tilt(idx: int) -> float
- remove_point(idx: int)
- sample(idx: int, t: float) -> Vector3
- sample_baked(offset: float = 0.0, cubic: bool = false) -> Vector3
- sample_baked_up_vector(offset: float, apply_tilt: bool = false) -> Vector3
- sample_baked_with_rotation(offset: float = 0.0, cubic: bool = false, apply_tilt: bool = false) -> Transform3D
- samplef(fofs: float) -> Vector3
- set_point_in(idx: int, position: Vector3)
- set_point_out(idx: int, position: Vector3)
- set_point_position(idx: int, position: Vector3)
- set_point_tilt(idx: int, tilt: float)
- tessellate(max_stages: int = 5, tolerance_degrees: float = 4) -> PackedVector3Array
- tessellate_even_length(max_stages: int = 5, tolerance_length: float = 0.2) -> PackedVector3Array

