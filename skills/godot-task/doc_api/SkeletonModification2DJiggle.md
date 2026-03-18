## SkeletonModification2DJiggle <- SkeletonModification2D

This modification moves a series of bones, typically called a bone chain, towards a target. What makes this modification special is that it calculates the velocity and acceleration for each bone in the bone chain, and runs a very light physics-like calculation using the inputted values. This allows the bones to overshoot the target and "jiggle" around. It can be configured to act more like a spring, or sway around like cloth might. This modification is useful for adding additional motion to things like hair, the edges of clothing, and more. It has several settings to that allow control over how the joint moves when the target moves. **Note:** The Jiggle modifier has `jiggle_joints`, which are the data objects that hold the data for each joint in the Jiggle chain. This is different from than Bone2D nodes! Jiggle joints hold the data needed for each Bone2D in the bone chain used by the Jiggle modification.

**Props:**
- damping: float = 0.75
- gravity: Vector2 = Vector2(0, 6)
- jiggle_data_chain_length: int = 0
- mass: float = 0.75
- stiffness: float = 3.0
- target_nodepath: NodePath = NodePath("")
- use_gravity: bool = false

**Methods:**
- get_collision_mask() -> int
- get_jiggle_joint_bone2d_node(joint_idx: int) -> NodePath
- get_jiggle_joint_bone_index(joint_idx: int) -> int
- get_jiggle_joint_damping(joint_idx: int) -> float
- get_jiggle_joint_gravity(joint_idx: int) -> Vector2
- get_jiggle_joint_mass(joint_idx: int) -> float
- get_jiggle_joint_override(joint_idx: int) -> bool
- get_jiggle_joint_stiffness(joint_idx: int) -> float
- get_jiggle_joint_use_gravity(joint_idx: int) -> bool
- get_use_colliders() -> bool
- set_collision_mask(collision_mask: int)
- set_jiggle_joint_bone2d_node(joint_idx: int, bone2d_node: NodePath)
- set_jiggle_joint_bone_index(joint_idx: int, bone_idx: int)
- set_jiggle_joint_damping(joint_idx: int, damping: float)
- set_jiggle_joint_gravity(joint_idx: int, gravity: Vector2)
- set_jiggle_joint_mass(joint_idx: int, mass: float)
- set_jiggle_joint_override(joint_idx: int, override: bool)
- set_jiggle_joint_stiffness(joint_idx: int, stiffness: float)
- set_jiggle_joint_use_gravity(joint_idx: int, use_gravity: bool)
- set_use_colliders(use_colliders: bool)

