## ChainIK3D <- IKModifier3D

Base class of SkeletonModifier3D that automatically generates a joint list from the bones between the root bone and the end bone.

**Methods:**
- get_end_bone(index: int) -> int
- get_end_bone_direction(index: int) -> int
- get_end_bone_length(index: int) -> float
- get_end_bone_name(index: int) -> String
- get_joint_bone(index: int, joint: int) -> int
- get_joint_bone_name(index: int, joint: int) -> String
- get_joint_count(index: int) -> int
- get_root_bone(index: int) -> int
- get_root_bone_name(index: int) -> String
- is_end_bone_extended(index: int) -> bool
- set_end_bone(index: int, bone: int)
- set_end_bone_direction(index: int, bone_direction: int)
- set_end_bone_length(index: int, length: float)
- set_end_bone_name(index: int, bone_name: String)
- set_extend_end_bone(index: int, enabled: bool)
- set_root_bone(index: int, bone: int)
- set_root_bone_name(index: int, bone_name: String)

