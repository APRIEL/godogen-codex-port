## IterateIK3D <- ChainIK3D

Base class of SkeletonModifier3D to approach the goal by repeating small rotations. Each bone chain (setting) has one effector, which is processed in order of the setting list. You can set some limitations for each joint.

**Props:**
- angular_delta_limit: float = 0.034906585
- deterministic: bool = false
- max_iterations: int = 4
- min_distance: float = 0.001
- setting_count: int = 0

**Methods:**
- get_joint_limitation(index: int, joint: int) -> JointLimitation3D
- get_joint_limitation_right_axis(index: int, joint: int) -> int
- get_joint_limitation_right_axis_vector(index: int, joint: int) -> Vector3
- get_joint_limitation_rotation_offset(index: int, joint: int) -> Quaternion
- get_joint_rotation_axis(index: int, joint: int) -> int
- get_joint_rotation_axis_vector(index: int, joint: int) -> Vector3
- get_target_node(index: int) -> NodePath
- set_joint_limitation(index: int, joint: int, limitation: JointLimitation3D)
- set_joint_limitation_right_axis(index: int, joint: int, direction: int)
- set_joint_limitation_right_axis_vector(index: int, joint: int, vector: Vector3)
- set_joint_limitation_rotation_offset(index: int, joint: int, offset: Quaternion)
- set_joint_rotation_axis(index: int, joint: int, axis: int)
- set_joint_rotation_axis_vector(index: int, joint: int, axis_vector: Vector3)
- set_target_node(index: int, target_node: NodePath)

