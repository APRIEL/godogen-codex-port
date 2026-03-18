## SkeletonModification2DTwoBoneIK <- SkeletonModification2D

This SkeletonModification2D uses an algorithm typically called TwoBoneIK. This algorithm works by leveraging the law of cosines and the lengths of the bones to figure out what rotation the bones currently have, and what rotation they need to make a complete triangle, where the first bone, the second bone, and the target form the three vertices of the triangle. Because the algorithm works by making a triangle, it can only operate on two bones. TwoBoneIK is great for arms, legs, and really any joints that can be represented by just two bones that bend to reach a target. This solver is more lightweight than SkeletonModification2DFABRIK, but gives similar, natural looking results.

**Props:**
- flip_bend_direction: bool = false
- target_maximum_distance: float = 0.0
- target_minimum_distance: float = 0.0
- target_nodepath: NodePath = NodePath("")

**Methods:**
- get_joint_one_bone2d_node() -> NodePath
- get_joint_one_bone_idx() -> int
- get_joint_two_bone2d_node() -> NodePath
- get_joint_two_bone_idx() -> int
- set_joint_one_bone2d_node(bone2d_node: NodePath)
- set_joint_one_bone_idx(bone_idx: int)
- set_joint_two_bone2d_node(bone2d_node: NodePath)
- set_joint_two_bone_idx(bone_idx: int)

