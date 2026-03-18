## SkeletonModification2DLookAt <- SkeletonModification2D

This SkeletonModification2D rotates a bone to look a target. This is extremely helpful for moving character's head to look at the player, rotating a turret to look at a target, or any other case where you want to make a bone rotate towards something quickly and easily.

**Props:**
- bone2d_node: NodePath = NodePath("")
- bone_index: int = -1
- target_nodepath: NodePath = NodePath("")

**Methods:**
- get_additional_rotation() -> float
- get_constraint_angle_invert() -> bool
- get_constraint_angle_max() -> float
- get_constraint_angle_min() -> float
- get_enable_constraint() -> bool
- set_additional_rotation(rotation: float)
- set_constraint_angle_invert(invert: bool)
- set_constraint_angle_max(angle_max: float)
- set_constraint_angle_min(angle_min: float)
- set_enable_constraint(enable_constraint: bool)

