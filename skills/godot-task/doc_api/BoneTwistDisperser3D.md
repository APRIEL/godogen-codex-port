## BoneTwistDisperser3D <- SkeletonModifier3D

This BoneTwistDisperser3D allows for smooth twist interpolation between multiple bones by dispersing the end bone's twist to the parents. This only changes the twist without changing the global position of each joint. This is useful for smoothly twisting bones in combination with CopyTransformModifier3D and IK. **Note:** If an extracted twist is greater than 180 degrees, flipping occurs. This is similar to ConvertTransformModifier3D.

**Props:**
- mutable_bone_axes: bool = true
- setting_count: int = 0

**Methods:**
- clear_settings()
- get_damping_curve(index: int) -> Curve
- get_disperse_mode(index: int) -> int
- get_end_bone(index: int) -> int
- get_end_bone_direction(index: int) -> int
- get_end_bone_name(index: int) -> String
- get_joint_bone(index: int, joint: int) -> int
- get_joint_bone_name(index: int, joint: int) -> String
- get_joint_count(index: int) -> int
- get_joint_twist_amount(index: int, joint: int) -> float
- get_reference_bone(index: int) -> int
- get_reference_bone_name(index: int) -> String
- get_root_bone(index: int) -> int
- get_root_bone_name(index: int) -> String
- get_twist_from(index: int) -> Quaternion
- get_weight_position(index: int) -> float
- is_end_bone_extended(index: int) -> bool
- is_twist_from_rest(index: int) -> bool
- set_damping_curve(index: int, curve: Curve)
- set_disperse_mode(index: int, disperse_mode: int)
- set_end_bone(index: int, bone: int)
- set_end_bone_direction(index: int, bone_direction: int)
- set_end_bone_name(index: int, bone_name: String)
- set_extend_end_bone(index: int, enabled: bool)
- set_joint_twist_amount(index: int, joint: int, twist_amount: float)
- set_root_bone(index: int, bone: int)
- set_root_bone_name(index: int, bone_name: String)
- set_twist_from(index: int, from: Quaternion)
- set_twist_from_rest(index: int, enabled: bool)
- set_weight_position(index: int, weight_position: float)

**Enums:**
**DisperseMode:** DISPERSE_MODE_EVEN=0, DISPERSE_MODE_WEIGHTED=1, DISPERSE_MODE_CUSTOM=2

