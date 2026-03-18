## LimitAngularVelocityModifier3D <- SkeletonModifier3D

This modifier limits bone rotation angular velocity by comparing poses between previous and current frame. You can add bone chains by specifying their root and end bones, then add the bones between them to a list. Modifier processes either that list or the bones excluding those in the list depending on the option `exclude`.

**Props:**
- chain_count: int = 0
- exclude: bool = false
- joint_count: int = 0
- max_angular_velocity: float = 6.2831855

**Methods:**
- clear_chains()
- get_end_bone(index: int) -> int
- get_end_bone_name(index: int) -> String
- get_root_bone(index: int) -> int
- get_root_bone_name(index: int) -> String
- reset()
- set_end_bone(index: int, bone: int)
- set_end_bone_name(index: int, bone_name: String)
- set_root_bone(index: int, bone: int)
- set_root_bone_name(index: int, bone_name: String)

