## TwoBoneIK3D <- IKModifier3D

This IKModifier3D requires a pole target. It provides deterministic results by constructing a plane from each joint and pole target and finding the intersection of two circles (disks in 3D). This IK can handle twist by setting the pole direction. If there are more than one bone between each set bone, their rotations are ignored, and the straight line connecting the root-middle and middle-end joints are treated as virtual bones.

**Props:**
- setting_count: int = 0

**Methods:**
- get_end_bone(index: int) -> int
- get_end_bone_direction(index: int) -> int
- get_end_bone_length(index: int) -> float
- get_end_bone_name(index: int) -> String
- get_middle_bone(index: int) -> int
- get_middle_bone_name(index: int) -> String
- get_pole_direction(index: int) -> int
- get_pole_direction_vector(index: int) -> Vector3
- get_pole_node(index: int) -> NodePath
- get_root_bone(index: int) -> int
- get_root_bone_name(index: int) -> String
- get_target_node(index: int) -> NodePath
- is_end_bone_extended(index: int) -> bool
- is_using_virtual_end(index: int) -> bool
- set_end_bone(index: int, bone: int)
- set_end_bone_direction(index: int, bone_direction: int)
- set_end_bone_length(index: int, length: float)
- set_end_bone_name(index: int, bone_name: String)
- set_extend_end_bone(index: int, enabled: bool)
- set_middle_bone(index: int, bone: int)
- set_middle_bone_name(index: int, bone_name: String)
- set_pole_direction(index: int, direction: int)
- set_pole_direction_vector(index: int, vector: Vector3)
- set_pole_node(index: int, pole_node: NodePath)
- set_root_bone(index: int, bone: int)
- set_root_bone_name(index: int, bone_name: String)
- set_target_node(index: int, target_node: NodePath)
- set_use_virtual_end(index: int, enabled: bool)

