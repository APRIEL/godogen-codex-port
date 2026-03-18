## ConvertTransformModifier3D <- BoneConstraint3D

Apply the copied transform of the bone set by `BoneConstraint3D.set_reference_bone` to the bone set by `BoneConstraint3D.set_apply_bone` about the specific axis with remapping it with some options. There are 4 ways to apply the transform, depending on the combination of `set_relative` and `set_additive`. **Relative + Additive:** - Extract reference pose relative to the rest and add it to the apply bone's pose. **Relative + Not Additive:** - Extract reference pose relative to the rest and add it to the apply bone's rest. **Not Relative + Additive:** - Extract reference pose absolutely and add it to the apply bone's pose. **Not Relative + Not Additive:** - Extract reference pose absolutely and the apply bone's pose is replaced with it. **Note:** Relative option is available only in the case `BoneConstraint3D.get_reference_type` is `BoneConstraint3D.REFERENCE_TYPE_BONE`. See also `BoneConstraint3D.ReferenceType`. **Note:** If there is a rotation greater than `180` degrees with constrained axes, flipping may occur.

**Props:**
- setting_count: int = 0

**Methods:**
- get_apply_axis(index: int) -> int
- get_apply_range_max(index: int) -> float
- get_apply_range_min(index: int) -> float
- get_apply_transform_mode(index: int) -> int
- get_reference_axis(index: int) -> int
- get_reference_range_max(index: int) -> float
- get_reference_range_min(index: int) -> float
- get_reference_transform_mode(index: int) -> int
- is_additive(index: int) -> bool
- is_relative(index: int) -> bool
- set_additive(index: int, enabled: bool)
- set_apply_axis(index: int, axis: int)
- set_apply_range_max(index: int, range_max: float)
- set_apply_range_min(index: int, range_min: float)
- set_apply_transform_mode(index: int, transform_mode: int)
- set_reference_axis(index: int, axis: int)
- set_reference_range_max(index: int, range_max: float)
- set_reference_range_min(index: int, range_min: float)
- set_reference_transform_mode(index: int, transform_mode: int)
- set_relative(index: int, enabled: bool)

**Enums:**
**TransformMode:** TRANSFORM_MODE_POSITION=0, TRANSFORM_MODE_ROTATION=1, TRANSFORM_MODE_SCALE=2

