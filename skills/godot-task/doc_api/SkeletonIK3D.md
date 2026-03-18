## SkeletonIK3D <- SkeletonModifier3D

SkeletonIK3D is used to rotate all bones of a Skeleton3D bone chain a way that places the end bone at a desired 3D position. A typical scenario for IK in games is to place a character's feet on the ground or a character's hands on a currently held object. SkeletonIK uses FabrikInverseKinematic internally to solve the bone chain and applies the results to the Skeleton3D `bones_global_pose_override` property for all affected bones in the chain. If fully applied, this overwrites any bone transform from Animations or bone custom poses set by users. The applied amount can be controlled with the `SkeletonModifier3D.influence` property.

**Props:**
- interpolation: float
- magnet: Vector3 = Vector3(0, 0, 0)
- max_iterations: int = 10
- min_distance: float = 0.01
- override_tip_basis: bool = true
- root_bone: StringName = &""
- target: Transform3D = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)
- target_node: NodePath = NodePath("")
- tip_bone: StringName = &""
- use_magnet: bool = false

**Methods:**
- get_parent_skeleton() -> Skeleton3D
- is_running() -> bool
- start(one_time: bool = false)
- stop()

