## Vector3i

A 3-element structure that can be used to represent 3D grid coordinates or any other triplet of integers. It uses integer coordinates and is therefore preferable to Vector3 when exact precision is required. Note that the values are limited to 32 bits, and unlike Vector3 this cannot be configured with an engine build option. Use [int] or PackedInt64Array if 64-bit values are needed. **Note:** In a boolean context, a Vector3i will evaluate to `false` if it's equal to `Vector3i(0, 0, 0)`. Otherwise, a Vector3i will always evaluate to `true`.

**Props:**
- x: int = 0
- y: int = 0
- z: int = 0

**Methods:**
- abs() -> Vector3i
- clamp(min: Vector3i, max: Vector3i) -> Vector3i
- clampi(min: int, max: int) -> Vector3i
- distance_squared_to(to: Vector3i) -> int
- distance_to(to: Vector3i) -> float
- length() -> float
- length_squared() -> int
- max(with: Vector3i) -> Vector3i
- max_axis_index() -> int
- maxi(with: int) -> Vector3i
- min(with: Vector3i) -> Vector3i
- min_axis_index() -> int
- mini(with: int) -> Vector3i
- sign() -> Vector3i
- snapped(step: Vector3i) -> Vector3i
- snappedi(step: int) -> Vector3i

**Enums:**
**Axis:** AXIS_X=0, AXIS_Y=1, AXIS_Z=2
**Constants:** ZERO=Vector3i(0, 0, 0), ONE=Vector3i(1, 1, 1), MIN=Vector3i(-2147483648, -2147483648, -2147483648), MAX=Vector3i(2147483647, 2147483647, 2147483647), LEFT=Vector3i(-1, 0, 0), RIGHT=Vector3i(1, 0, 0), UP=Vector3i(0, 1, 0), DOWN=Vector3i(0, -1, 0), FORWARD=Vector3i(0, 0, -1), BACK=Vector3i(0, 0, 1)

