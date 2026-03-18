## Vector2i

A 2-element structure that can be used to represent 2D grid coordinates or any other pair of integers. It uses integer coordinates and is therefore preferable to Vector2 when exact precision is required. Note that the values are limited to 32 bits, and unlike Vector2 this cannot be configured with an engine build option. Use [int] or PackedInt64Array if 64-bit values are needed. **Note:** In a boolean context, a Vector2i will evaluate to `false` if it's equal to `Vector2i(0, 0)`. Otherwise, a Vector2i will always evaluate to `true`.

**Props:**
- x: int = 0
- y: int = 0

**Methods:**
- abs() -> Vector2i
- aspect() -> float
- clamp(min: Vector2i, max: Vector2i) -> Vector2i
- clampi(min: int, max: int) -> Vector2i
- distance_squared_to(to: Vector2i) -> int
- distance_to(to: Vector2i) -> float
- length() -> float
- length_squared() -> int
- max(with: Vector2i) -> Vector2i
- max_axis_index() -> int
- maxi(with: int) -> Vector2i
- min(with: Vector2i) -> Vector2i
- min_axis_index() -> int
- mini(with: int) -> Vector2i
- sign() -> Vector2i
- snapped(step: Vector2i) -> Vector2i
- snappedi(step: int) -> Vector2i

**Enums:**
**Axis:** AXIS_X=0, AXIS_Y=1
**Constants:** ZERO=Vector2i(0, 0), ONE=Vector2i(1, 1), MIN=Vector2i(-2147483648, -2147483648), MAX=Vector2i(2147483647, 2147483647), LEFT=Vector2i(-1, 0), RIGHT=Vector2i(1, 0), UP=Vector2i(0, -1), DOWN=Vector2i(0, 1)

