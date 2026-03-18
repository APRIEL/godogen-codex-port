## AimModifier3D <- BoneConstraint3D

This is a simple version of LookAtModifier3D that only allows bone to the reference without advanced options such as angle limitation or time-based interpolation. The feature is simplified, but instead it is implemented with smooth tracking without euler, see `set_use_euler`.

**Props:**
- setting_count: int = 0

**Methods:**
- get_forward_axis(index: int) -> int
- get_primary_rotation_axis(index: int) -> int
- is_relative(index: int) -> bool
- is_using_euler(index: int) -> bool
- is_using_secondary_rotation(index: int) -> bool
- set_forward_axis(index: int, axis: int)
- set_primary_rotation_axis(index: int, axis: int)
- set_relative(index: int, enabled: bool)
- set_use_euler(index: int, enabled: bool)
- set_use_secondary_rotation(index: int, enabled: bool)

