## SpringBoneSimulator3D <- SkeletonModifier3D

This SkeletonModifier3D can be used to wiggle hair, cloth, and tails. This modifier behaves differently from PhysicalBoneSimulator3D as it attempts to return the original pose after modification. If you setup `set_root_bone` and `set_end_bone`, it is treated as one bone chain. Note that it does not support a branched chain like Y-shaped chains. When a bone chain is created, an array is generated from the bones that exist in between and listed in the joint list. Several properties can be applied to each joint, such as `set_joint_stiffness`, `set_joint_drag`, and `set_joint_gravity`. For simplicity, you can set values to all joints at the same time by using a Curve. If you want to specify detailed values individually, set `set_individual_config` to `true`. For physical simulation, SpringBoneSimulator3D can have children as self-standing collisions that are not related to PhysicsServer3D, see also SpringBoneCollision3D. **Warning:** A scaled SpringBoneSimulator3D will likely not behave as expected. Make sure that the parent Skeleton3D and its bones are not scaled.

**Props:**
- external_force: Vector3 = Vector3(0, 0, 0)
- mutable_bone_axes: bool = true
- setting_count: int = 0

**Methods:**
- are_all_child_collisions_enabled(index: int) -> bool
- clear_collisions(index: int)
- clear_exclude_collisions(index: int)
- clear_settings()
- get_center_bone(index: int) -> int
- get_center_bone_name(index: int) -> String
- get_center_from(index: int) -> int
- get_center_node(index: int) -> NodePath
- get_collision_count(index: int) -> int
- get_collision_path(index: int, collision: int) -> NodePath
- get_drag(index: int) -> float
- get_drag_damping_curve(index: int) -> Curve
- get_end_bone(index: int) -> int
- get_end_bone_direction(index: int) -> int
- get_end_bone_length(index: int) -> float
- get_end_bone_name(index: int) -> String
- get_exclude_collision_count(index: int) -> int
- get_exclude_collision_path(index: int, collision: int) -> NodePath
- get_gravity(index: int) -> float
- get_gravity_damping_curve(index: int) -> Curve
- get_gravity_direction(index: int) -> Vector3
- get_joint_bone(index: int, joint: int) -> int
- get_joint_bone_name(index: int, joint: int) -> String
- get_joint_count(index: int) -> int
- get_joint_drag(index: int, joint: int) -> float
- get_joint_gravity(index: int, joint: int) -> float
- get_joint_gravity_direction(index: int, joint: int) -> Vector3
- get_joint_radius(index: int, joint: int) -> float
- get_joint_rotation_axis(index: int, joint: int) -> int
- get_joint_rotation_axis_vector(index: int, joint: int) -> Vector3
- get_joint_stiffness(index: int, joint: int) -> float
- get_radius(index: int) -> float
- get_radius_damping_curve(index: int) -> Curve
- get_root_bone(index: int) -> int
- get_root_bone_name(index: int) -> String
- get_rotation_axis(index: int) -> int
- get_rotation_axis_vector(index: int) -> Vector3
- get_stiffness(index: int) -> float
- get_stiffness_damping_curve(index: int) -> Curve
- is_config_individual(index: int) -> bool
- is_end_bone_extended(index: int) -> bool
- reset()
- set_center_bone(index: int, bone: int)
- set_center_bone_name(index: int, bone_name: String)
- set_center_from(index: int, center_from: int)
- set_center_node(index: int, node_path: NodePath)
- set_collision_count(index: int, count: int)
- set_collision_path(index: int, collision: int, node_path: NodePath)
- set_drag(index: int, drag: float)
- set_drag_damping_curve(index: int, curve: Curve)
- set_enable_all_child_collisions(index: int, enabled: bool)
- set_end_bone(index: int, bone: int)
- set_end_bone_direction(index: int, bone_direction: int)
- set_end_bone_length(index: int, length: float)
- set_end_bone_name(index: int, bone_name: String)
- set_exclude_collision_count(index: int, count: int)
- set_exclude_collision_path(index: int, collision: int, node_path: NodePath)
- set_extend_end_bone(index: int, enabled: bool)
- set_gravity(index: int, gravity: float)
- set_gravity_damping_curve(index: int, curve: Curve)
- set_gravity_direction(index: int, gravity_direction: Vector3)
- set_individual_config(index: int, enabled: bool)
- set_joint_drag(index: int, joint: int, drag: float)
- set_joint_gravity(index: int, joint: int, gravity: float)
- set_joint_gravity_direction(index: int, joint: int, gravity_direction: Vector3)
- set_joint_radius(index: int, joint: int, radius: float)
- set_joint_rotation_axis(index: int, joint: int, axis: int)
- set_joint_rotation_axis_vector(index: int, joint: int, vector: Vector3)
- set_joint_stiffness(index: int, joint: int, stiffness: float)
- set_radius(index: int, radius: float)
- set_radius_damping_curve(index: int, curve: Curve)
- set_root_bone(index: int, bone: int)
- set_root_bone_name(index: int, bone_name: String)
- set_rotation_axis(index: int, axis: int)
- set_rotation_axis_vector(index: int, vector: Vector3)
- set_stiffness(index: int, stiffness: float)
- set_stiffness_damping_curve(index: int, curve: Curve)

**Enums:**
**CenterFrom:** CENTER_FROM_WORLD_ORIGIN=0, CENTER_FROM_NODE=1, CENTER_FROM_BONE=2

