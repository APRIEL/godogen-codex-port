## Vector4i

A 4-element structure that can be used to represent 4D grid coordinates or any other quadruplet of integers. It uses integer coordinates and is therefore preferable to Vector4 when exact precision is required. Note that the values are limited to 32 bits, and unlike Vector4 this cannot be configured with an engine build option. Use [int] or PackedInt64Array if 64-bit values are needed. **Note:** In a boolean context, a Vector4i will evaluate to `false` if it's equal to `Vector4i(0, 0, 0, 0)`. Otherwise, a Vector4i will always evaluate to `true`.

**Props:**
- w: int = 0
- x: int = 0
- y: int = 0
- z: int = 0

**Methods:**
- abs() -> Vector4i
- clamp(min: Vector4i, max: Vector4i) -> Vector4i
- clampi(min: int, max: int) -> Vector4i
- distance_squared_to(to: Vector4i) -> int
- distance_to(to: Vector4i) -> float
- length() -> float
- length_squared() -> int
- max(with: Vector4i) -> Vector4i
- max_axis_index() -> int
- maxi(with: int) -> Vector4i
- min(with: Vector4i) -> Vector4i
- min_axis_index() -> int
- mini(with: int) -> Vector4i
- sign() -> Vector4i
- snapped(step: Vector4i) -> Vector4i
- snappedi(step: int) -> Vector4i

**Enums:**
**Axis:** AXIS_X=0, AXIS_Y=1, AXIS_Z=2, AXIS_W=3
**Constants:** ZERO=Vector4i(0, 0, 0, 0), ONE=Vector4i(1, 1, 1, 1), MIN=Vector4i(-2147483648, -2147483648, -2147483648, -2147483648), MAX=Vector4i(2147483647, 2147483647, 2147483647, 2147483647)

