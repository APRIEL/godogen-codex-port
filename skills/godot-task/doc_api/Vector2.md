## Vector2

A 2-element structure that can be used to represent 2D coordinates or any other pair of numeric values. It uses floating-point coordinates. By default, these floating-point values use 32-bit precision, unlike [float] which is always 64-bit. If double precision is needed, compile the engine with the option `precision=double`. See Vector2i for its integer counterpart. **Note:** In a boolean context, a Vector2 will evaluate to `false` if it's equal to `Vector2(0, 0)`. Otherwise, a Vector2 will always evaluate to `true`.

**Props:**
- x: float = 0.0
- y: float = 0.0

**Methods:**
- abs() -> Vector2
- angle() -> float
- angle_to(to: Vector2) -> float
- angle_to_point(to: Vector2) -> float
- aspect() -> float
- bezier_derivative(control_1: Vector2, control_2: Vector2, end: Vector2, t: float) -> Vector2
- bezier_interpolate(control_1: Vector2, control_2: Vector2, end: Vector2, t: float) -> Vector2
- bounce(n: Vector2) -> Vector2
- ceil() -> Vector2
- clamp(min: Vector2, max: Vector2) -> Vector2
- clampf(min: float, max: float) -> Vector2
- cross(with: Vector2) -> float
- cubic_interpolate(b: Vector2, pre_a: Vector2, post_b: Vector2, weight: float) -> Vector2
- cubic_interpolate_in_time(b: Vector2, pre_a: Vector2, post_b: Vector2, weight: float, b_t: float, pre_a_t: float, post_b_t: float) -> Vector2
- direction_to(to: Vector2) -> Vector2
- distance_squared_to(to: Vector2) -> float
- distance_to(to: Vector2) -> float
- dot(with: Vector2) -> float
- floor() -> Vector2
- from_angle(angle: float) -> Vector2
- is_equal_approx(to: Vector2) -> bool
- is_finite() -> bool
- is_normalized() -> bool
- is_zero_approx() -> bool
- length() -> float
- length_squared() -> float
- lerp(to: Vector2, weight: float) -> Vector2
- limit_length(length: float = 1.0) -> Vector2
- max(with: Vector2) -> Vector2
- max_axis_index() -> int
- maxf(with: float) -> Vector2
- min(with: Vector2) -> Vector2
- min_axis_index() -> int
- minf(with: float) -> Vector2
- move_toward(to: Vector2, delta: float) -> Vector2
- normalized() -> Vector2
- orthogonal() -> Vector2
- posmod(mod: float) -> Vector2
- posmodv(modv: Vector2) -> Vector2
- project(b: Vector2) -> Vector2
- reflect(line: Vector2) -> Vector2
- rotated(angle: float) -> Vector2
- round() -> Vector2
- sign() -> Vector2
- slerp(to: Vector2, weight: float) -> Vector2
- slide(n: Vector2) -> Vector2
- snapped(step: Vector2) -> Vector2
- snappedf(step: float) -> Vector2

**Enums:**
**Axis:** AXIS_X=0, AXIS_Y=1
**Constants:** ZERO=Vector2(0, 0), ONE=Vector2(1, 1), INF=Vector2(inf, inf), LEFT=Vector2(-1, 0), RIGHT=Vector2(1, 0), UP=Vector2(0, -1), DOWN=Vector2(0, 1)

