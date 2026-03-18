## Vector3

A 3-element structure that can be used to represent 3D coordinates or any other triplet of numeric values. It uses floating-point coordinates. By default, these floating-point values use 32-bit precision, unlike [float] which is always 64-bit. If double precision is needed, compile the engine with the option `precision=double`. See Vector3i for its integer counterpart. **Note:** In a boolean context, a Vector3 will evaluate to `false` if it's equal to `Vector3(0, 0, 0)`. Otherwise, a Vector3 will always evaluate to `true`.

**Props:**
- x: float = 0.0
- y: float = 0.0
- z: float = 0.0

**Methods:**
- abs() -> Vector3
- angle_to(to: Vector3) -> float
- bezier_derivative(control_1: Vector3, control_2: Vector3, end: Vector3, t: float) -> Vector3
- bezier_interpolate(control_1: Vector3, control_2: Vector3, end: Vector3, t: float) -> Vector3
- bounce(n: Vector3) -> Vector3
- ceil() -> Vector3
- clamp(min: Vector3, max: Vector3) -> Vector3
- clampf(min: float, max: float) -> Vector3
- cross(with: Vector3) -> Vector3
- cubic_interpolate(b: Vector3, pre_a: Vector3, post_b: Vector3, weight: float) -> Vector3
- cubic_interpolate_in_time(b: Vector3, pre_a: Vector3, post_b: Vector3, weight: float, b_t: float, pre_a_t: float, post_b_t: float) -> Vector3
- direction_to(to: Vector3) -> Vector3
- distance_squared_to(to: Vector3) -> float
- distance_to(to: Vector3) -> float
- dot(with: Vector3) -> float
- floor() -> Vector3
- inverse() -> Vector3
- is_equal_approx(to: Vector3) -> bool
- is_finite() -> bool
- is_normalized() -> bool
- is_zero_approx() -> bool
- length() -> float
- length_squared() -> float
- lerp(to: Vector3, weight: float) -> Vector3
- limit_length(length: float = 1.0) -> Vector3
- max(with: Vector3) -> Vector3
- max_axis_index() -> int
- maxf(with: float) -> Vector3
- min(with: Vector3) -> Vector3
- min_axis_index() -> int
- minf(with: float) -> Vector3
- move_toward(to: Vector3, delta: float) -> Vector3
- normalized() -> Vector3
- octahedron_decode(uv: Vector2) -> Vector3
- octahedron_encode() -> Vector2
- outer(with: Vector3) -> Basis
- posmod(mod: float) -> Vector3
- posmodv(modv: Vector3) -> Vector3
- project(b: Vector3) -> Vector3
- reflect(n: Vector3) -> Vector3
- rotated(axis: Vector3, angle: float) -> Vector3
- round() -> Vector3
- sign() -> Vector3
- signed_angle_to(to: Vector3, axis: Vector3) -> float
- slerp(to: Vector3, weight: float) -> Vector3
- slide(n: Vector3) -> Vector3
- snapped(step: Vector3) -> Vector3
- snappedf(step: float) -> Vector3

**Enums:**
**Axis:** AXIS_X=0, AXIS_Y=1, AXIS_Z=2
**Constants:** ZERO=Vector3(0, 0, 0), ONE=Vector3(1, 1, 1), INF=Vector3(inf, inf, inf), LEFT=Vector3(-1, 0, 0), RIGHT=Vector3(1, 0, 0), UP=Vector3(0, 1, 0), DOWN=Vector3(0, -1, 0), FORWARD=Vector3(0, 0, -1), BACK=Vector3(0, 0, 1), MODEL_LEFT=Vector3(1, 0, 0), ...

