## Quaternion

The Quaternion built-in Variant type is a 4D data structure that represents rotation in the form of a . Compared to the Basis type which can store both rotation and scale, quaternions can *only* store rotation. A Quaternion is composed by 4 floating-point components: `w`, `x`, `y`, and `z`. These components are very compact in memory, and because of this some operations are more efficient and less likely to cause floating-point errors. Methods such as `get_angle`, `get_axis`, and `slerp` are faster than their Basis counterparts. For a great introduction to quaternions, see . You do not need to know the math behind quaternions, as Godot provides several helper methods that handle it for you. These include `slerp` and `spherical_cubic_interpolate`, as well as the `*` operator. **Note:** Quaternions must be normalized before being used for rotation (see `normalized`). **Note:** Similarly to Vector2 and Vector3, the components of a quaternion use 32-bit precision by default, unlike [float] which is always 64-bit. If double precision is needed, compile the engine with the option `precision=double`. **Note:** In a boolean context, a quaternion will evaluate to `false` if it's equal to `IDENTITY`. Otherwise, a quaternion will always evaluate to `true`.

**Props:**
- w: float = 1.0
- x: float = 0.0
- y: float = 0.0
- z: float = 0.0

**Methods:**
- angle_to(to: Quaternion) -> float
- dot(with: Quaternion) -> float
- exp() -> Quaternion
- from_euler(euler: Vector3) -> Quaternion
- get_angle() -> float
- get_axis() -> Vector3
- get_euler(order: int = 2) -> Vector3
- inverse() -> Quaternion
- is_equal_approx(to: Quaternion) -> bool
- is_finite() -> bool
- is_normalized() -> bool
- length() -> float
- length_squared() -> float
- log() -> Quaternion
- normalized() -> Quaternion
- slerp(to: Quaternion, weight: float) -> Quaternion
- slerpni(to: Quaternion, weight: float) -> Quaternion
- spherical_cubic_interpolate(b: Quaternion, pre_a: Quaternion, post_b: Quaternion, weight: float) -> Quaternion
- spherical_cubic_interpolate_in_time(b: Quaternion, pre_a: Quaternion, post_b: Quaternion, weight: float, b_t: float, pre_a_t: float, post_b_t: float) -> Quaternion

**Enums:**
**Constants:** IDENTITY=Quaternion(0, 0, 0, 1)

