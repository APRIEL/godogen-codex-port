## SkeletonModification2DCCDIK <- SkeletonModification2D

This SkeletonModification2D uses an algorithm called Cyclic Coordinate Descent Inverse Kinematics, or CCDIK, to manipulate a chain of bones in a Skeleton2D so it reaches a defined target. CCDIK works by rotating a set of bones, typically called a "bone chain", on a single axis. Each bone is rotated to face the target from the tip (by default), which over a chain of bones allow it to rotate properly to reach the target. Because the bones only rotate on a single axis, CCDIK *can* look more robotic than other IK solvers. **Note:** The CCDIK modifier has `ccdik_joints`, which are the data objects that hold the data for each joint in the CCDIK chain. This is different from a bone! CCDIK joints hold the data needed for each bone in the bone chain used by CCDIK. CCDIK also fully supports angle constraints, allowing for more control over how a solution is met.

**Props:**
- ccdik_data_chain_length: int = 0
- target_nodepath: NodePath = NodePath("")
- tip_nodepath: NodePath = NodePath("")

**Methods:**
- get_ccdik_joint_bone2d_node(joint_idx: int) -> NodePath
- get_ccdik_joint_bone_index(joint_idx: int) -> int
- get_ccdik_joint_constraint_angle_invert(joint_idx: int) -> bool
- get_ccdik_joint_constraint_angle_max(joint_idx: int) -> float
- get_ccdik_joint_constraint_angle_min(joint_idx: int) -> float
- get_ccdik_joint_enable_constraint(joint_idx: int) -> bool
- get_ccdik_joint_rotate_from_joint(joint_idx: int) -> bool
- set_ccdik_joint_bone2d_node(joint_idx: int, bone2d_nodepath: NodePath)
- set_ccdik_joint_bone_index(joint_idx: int, bone_idx: int)
- set_ccdik_joint_constraint_angle_invert(joint_idx: int, invert: bool)
- set_ccdik_joint_constraint_angle_max(joint_idx: int, angle_max: float)
- set_ccdik_joint_constraint_angle_min(joint_idx: int, angle_min: float)
- set_ccdik_joint_enable_constraint(joint_idx: int, enable_constraint: bool)
- set_ccdik_joint_rotate_from_joint(joint_idx: int, rotate_from_joint: bool)

