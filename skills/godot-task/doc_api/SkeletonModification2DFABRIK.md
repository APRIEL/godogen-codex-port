## SkeletonModification2DFABRIK <- SkeletonModification2D

This SkeletonModification2D uses an algorithm called Forward And Backward Reaching Inverse Kinematics, or FABRIK, to rotate a bone chain so that it reaches a target. FABRIK works by knowing the positions and lengths of a series of bones, typically called a "bone chain". It first starts by running a forward pass, which places the final bone at the target's position. Then all other bones are moved towards the tip bone, so they stay at the defined bone length away. Then a backwards pass is performed, where the root/first bone in the FABRIK chain is placed back at the origin. Then all other bones are moved so they stay at the defined bone length away. This positions the bone chain so that it reaches the target when possible, but all of the bones stay the correct length away from each other. Because of how FABRIK works, it often gives more natural results than those seen in SkeletonModification2DCCDIK. **Note:** The FABRIK modifier has `fabrik_joints`, which are the data objects that hold the data for each joint in the FABRIK chain. This is different from Bone2D nodes! FABRIK joints hold the data needed for each Bone2D in the bone chain used by FABRIK. To help control how the FABRIK joints move, a magnet vector can be passed, which can nudge the bones in a certain direction prior to solving, giving a level of control over the final result.

**Props:**
- fabrik_data_chain_length: int = 0
- target_nodepath: NodePath = NodePath("")

**Methods:**
- get_fabrik_joint_bone2d_node(joint_idx: int) -> NodePath
- get_fabrik_joint_bone_index(joint_idx: int) -> int
- get_fabrik_joint_magnet_position(joint_idx: int) -> Vector2
- get_fabrik_joint_use_target_rotation(joint_idx: int) -> bool
- set_fabrik_joint_bone2d_node(joint_idx: int, bone2d_nodepath: NodePath)
- set_fabrik_joint_bone_index(joint_idx: int, bone_idx: int)
- set_fabrik_joint_magnet_position(joint_idx: int, magnet_position: Vector2)
- set_fabrik_joint_use_target_rotation(joint_idx: int, use_target_rotation: bool)

