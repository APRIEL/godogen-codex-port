## RetargetModifier3D <- SkeletonModifier3D

Retrieves the pose (or global pose) relative to the parent Skeleton's rest in model space and transfers it to the child Skeleton. This modifier rewrites the pose of the child skeleton directly in the parent skeleton's update process. This means that it overwrites the mapped bone pose set in the normal process on the target skeleton. If you want to set the target skeleton bone pose after retargeting, you will need to add a SkeletonModifier3D child to the target skeleton and thereby modify the pose. **Note:** When the `use_global_pose` is enabled, even if it is an unmapped bone, it can cause visual problems because the global pose is applied ignoring the parent bone's pose **if it has mapped bone children**. See also `use_global_pose`.

**Props:**
- enable: int (RetargetModifier3D.TransformFlag) = 7
- profile: SkeletonProfile
- use_global_pose: bool = false

**Methods:**
- is_position_enabled() -> bool
- is_rotation_enabled() -> bool
- is_scale_enabled() -> bool
- set_position_enabled(enabled: bool)
- set_rotation_enabled(enabled: bool)
- set_scale_enabled(enabled: bool)

**Enums:**
**TransformFlag:** TRANSFORM_FLAG_POSITION=1, TRANSFORM_FLAG_ROTATION=2, TRANSFORM_FLAG_SCALE=4, TRANSFORM_FLAG_ALL=7

