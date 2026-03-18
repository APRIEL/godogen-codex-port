## Vector4

A 4-element structure that can be used to represent 4D coordinates or any other quadruplet of numeric values. It uses floating-point coordinates. By default, these floating-point values use 32-bit precision, unlike [float] which is always 64-bit. If double precision is needed, compile the engine with the option `precision=double`. See Vector4i for its integer counterpart. **Note:** In a boolean context, a Vector4 will evaluate to `false` if it's equal to `Vector4(0, 0, 0, 0)`. Otherwise, a Vector4 will always evaluate to `true`.

**Props:**
- w: float = 0.0
- x: float = 0.0
- y: float = 0.0
- z: float = 0.0

**Methods:**
- abs() -> Vector4
- ceil() -> Vector4
- clamp(min: Vector4, max: Vector4) -> Vector4
- clampf(min: float, max: float) -> Vector4
- cubic_interpolate(b: Vector4, pre_a: Vector4, post_b: Vector4, weight: float) -> Vector4
- cubic_interpolate_in_time(b: Vector4, pre_a: Vector4, post_b: Vector4, weight: float, b_t: float, pre_a_t: float, post_b_t: float) -> Vector4
- direction_to(to: Vector4) -> Vector4
- distance_squared_to(to: Vector4) -> float
- distance_to(to: Vector4) -> float
- dot(with: Vector4) -> float
- floor() -> Vector4
- inverse() -> Vector4
- is_equal_approx(to: Vector4) -> bool
- is_finite() -> bool
- is_normalized() -> bool
- is_zero_approx() -> bool
- length() -> float
- length_squared() -> float
- lerp(to: Vector4, weight: float) -> Vector4
- max(with: Vector4) -> Vector4
- max_axis_index() -> int
- maxf(with: float) -> Vector4
- min(with: Vector4) -> Vector4
- min_axis_index() -> int
- minf(with: float) -> Vector4
- normalized() -> Vector4
- posmod(mod: float) -> Vector4
- posmodv(modv: Vector4) -> Vector4
- round() -> Vector4
- sign() -> Vector4
- snapped(step: Vector4) -> Vector4
- snappedf(step: float) -> Vector4

**Enums:**
**Axis:** AXIS_X=0, AXIS_Y=1, AXIS_Z=2, AXIS_W=3
**Constants:** ZERO=Vector4(0, 0, 0, 0), ONE=Vector4(1, 1, 1, 1), INF=Vector4(inf, inf, inf, inf)

