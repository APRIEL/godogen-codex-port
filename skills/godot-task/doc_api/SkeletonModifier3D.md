## SkeletonModifier3D <- Node3D

SkeletonModifier3D retrieves a target Skeleton3D by having a Skeleton3D parent. If there is an AnimationMixer, a modification always performs after playback process of the AnimationMixer. This node should be used to implement custom IK solvers, constraints, or skeleton physics.

**Props:**
- active: bool = true
- influence: float = 1.0

**Methods:**
- get_skeleton() -> Skeleton3D

**Signals:**
- modification_processed

**Enums:**
**BoneAxis:** BONE_AXIS_PLUS_X=0, BONE_AXIS_MINUS_X=1, BONE_AXIS_PLUS_Y=2, BONE_AXIS_MINUS_Y=3, BONE_AXIS_PLUS_Z=4, BONE_AXIS_MINUS_Z=5
**BoneDirection:** BONE_DIRECTION_PLUS_X=0, BONE_DIRECTION_MINUS_X=1, BONE_DIRECTION_PLUS_Y=2, BONE_DIRECTION_MINUS_Y=3, BONE_DIRECTION_PLUS_Z=4, BONE_DIRECTION_MINUS_Z=5, BONE_DIRECTION_FROM_PARENT=6
**SecondaryDirection:** SECONDARY_DIRECTION_NONE=0, SECONDARY_DIRECTION_PLUS_X=1, SECONDARY_DIRECTION_MINUS_X=2, SECONDARY_DIRECTION_PLUS_Y=3, SECONDARY_DIRECTION_MINUS_Y=4, SECONDARY_DIRECTION_PLUS_Z=5, SECONDARY_DIRECTION_MINUS_Z=6, SECONDARY_DIRECTION_CUSTOM=7
**RotationAxis:** ROTATION_AXIS_X=0, ROTATION_AXIS_Y=1, ROTATION_AXIS_Z=2, ROTATION_AXIS_ALL=3, ROTATION_AXIS_CUSTOM=4

