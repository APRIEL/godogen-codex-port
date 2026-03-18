## CopyTransformModifier3D <- BoneConstraint3D

Apply the copied transform of the bone set by `BoneConstraint3D.set_reference_bone` to the bone set by `BoneConstraint3D.set_apply_bone` with processing it with some masks and options. There are 4 ways to apply the transform, depending on the combination of `set_relative` and `set_additive`. **Relative + Additive:** - Extract reference pose relative to the rest and add it to the apply bone's pose. **Relative + Not Additive:** - Extract reference pose relative to the rest and add it to the apply bone's rest. **Not Relative + Additive:** - Extract reference pose absolutely and add it to the apply bone's pose. **Not Relative + Not Additive:** - Extract reference pose absolutely and the apply bone's pose is replaced with it. **Note:** Relative option is available only in the case `BoneConstraint3D.get_reference_type` is `BoneConstraint3D.REFERENCE_TYPE_BONE`. See also `BoneConstraint3D.ReferenceType`.

**Props:**
- setting_count: int = 0

**Methods:**
- get_axis_flags(index: int) -> int
- get_copy_flags(index: int) -> int
- get_invert_flags(index: int) -> int
- is_additive(index: int) -> bool
- is_axis_x_enabled(index: int) -> bool
- is_axis_x_inverted(index: int) -> bool
- is_axis_y_enabled(index: int) -> bool
- is_axis_y_inverted(index: int) -> bool
- is_axis_z_enabled(index: int) -> bool
- is_axis_z_inverted(index: int) -> bool
- is_position_copying(index: int) -> bool
- is_relative(index: int) -> bool
- is_rotation_copying(index: int) -> bool
- is_scale_copying(index: int) -> bool
- set_additive(index: int, enabled: bool)
- set_axis_flags(index: int, axis_flags: int)
- set_axis_x_enabled(index: int, enabled: bool)
- set_axis_x_inverted(index: int, enabled: bool)
- set_axis_y_enabled(index: int, enabled: bool)
- set_axis_y_inverted(index: int, enabled: bool)
- set_axis_z_enabled(index: int, enabled: bool)
- set_axis_z_inverted(index: int, enabled: bool)
- set_copy_flags(index: int, copy_flags: int)
- set_copy_position(index: int, enabled: bool)
- set_copy_rotation(index: int, enabled: bool)
- set_copy_scale(index: int, enabled: bool)
- set_invert_flags(index: int, axis_flags: int)
- set_relative(index: int, enabled: bool)

**Enums:**
**TransformFlag:** TRANSFORM_FLAG_POSITION=1, TRANSFORM_FLAG_ROTATION=2, TRANSFORM_FLAG_SCALE=4, TRANSFORM_FLAG_ALL=7
**AxisFlag:** AXIS_FLAG_X=1, AXIS_FLAG_Y=2, AXIS_FLAG_Z=4, AXIS_FLAG_ALL=7

