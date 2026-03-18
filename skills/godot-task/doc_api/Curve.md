## Curve <- Resource

This resource describes a mathematical curve by defining a set of points and tangents at each point. By default, it ranges between `0` and `1` on the X and Y axes, but these ranges can be changed. Please note that many resources and nodes assume they are given *unit curves*. A unit curve is a curve whose domain (the X axis) is between `0` and `1`. Some examples of unit curve usage are `CPUParticles2D.angle_curve` and `Line2D.width_curve`.

**Props:**
- bake_resolution: int = 100
- max_domain: float = 1.0
- max_value: float = 1.0
- min_domain: float = 0.0
- min_value: float = 0.0
- point_count: int = 0

**Methods:**
- add_point(position: Vector2, left_tangent: float = 0, right_tangent: float = 0, left_mode: int = 0, right_mode: int = 0) -> int
- bake()
- clean_dupes()
- clear_points()
- get_domain_range() -> float
- get_point_left_mode(index: int) -> int
- get_point_left_tangent(index: int) -> float
- get_point_position(index: int) -> Vector2
- get_point_right_mode(index: int) -> int
- get_point_right_tangent(index: int) -> float
- get_value_range() -> float
- remove_point(index: int)
- sample(offset: float) -> float
- sample_baked(offset: float) -> float
- set_point_left_mode(index: int, mode: int)
- set_point_left_tangent(index: int, tangent: float)
- set_point_offset(index: int, offset: float) -> int
- set_point_right_mode(index: int, mode: int)
- set_point_right_tangent(index: int, tangent: float)
- set_point_value(index: int, y: float)

**Signals:**
- domain_changed
- range_changed

**Enums:**
**TangentMode:** TANGENT_FREE=0, TANGENT_LINEAR=1, TANGENT_MODE_COUNT=2

