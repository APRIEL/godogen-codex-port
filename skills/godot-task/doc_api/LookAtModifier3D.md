## LookAtModifier3D <- SkeletonModifier3D

This SkeletonModifier3D rotates a bone to look at a target. This is helpful for moving a character's head to look at the player, rotating a turret to look at a target, or any other case where you want to make a bone rotate towards something quickly and easily. When applying multiple LookAtModifier3Ds, the LookAtModifier3D assigned to the parent bone must be put above the LookAtModifier3D assigned to the child bone in the list in order for the child bone results to be correct.

**Props:**
- bone: int = -1
- bone_name: String = ""
- duration: float = 0.0
- ease_type: int (Tween.EaseType) = 0
- forward_axis: int (SkeletonModifier3D.BoneAxis) = 4
- origin_bone: int
- origin_bone_name: String
- origin_external_node: NodePath
- origin_from: int (LookAtModifier3D.OriginFrom) = 0
- origin_offset: Vector3 = Vector3(0, 0, 0)
- origin_safe_margin: float = 0.1
- primary_damp_threshold: float
- primary_limit_angle: float
- primary_negative_damp_threshold: float
- primary_negative_limit_angle: float
- primary_positive_damp_threshold: float
- primary_positive_limit_angle: float
- primary_rotation_axis: int (Vector3.Axis) = 1
- relative: bool = false
- secondary_damp_threshold: float
- secondary_limit_angle: float
- secondary_negative_damp_threshold: float
- secondary_negative_limit_angle: float
- secondary_positive_damp_threshold: float
- secondary_positive_limit_angle: float
- symmetry_limitation: bool
- target_node: NodePath = NodePath("")
- transition_type: int (Tween.TransitionType) = 0
- use_angle_limitation: bool = false
- use_secondary_rotation: bool = true

**Methods:**
- get_interpolation_remaining() -> float
- is_interpolating() -> bool
- is_target_within_limitation() -> bool

**Enums:**
**OriginFrom:** ORIGIN_FROM_SELF=0, ORIGIN_FROM_SPECIFIC_BONE=1, ORIGIN_FROM_EXTERNAL_NODE=2

