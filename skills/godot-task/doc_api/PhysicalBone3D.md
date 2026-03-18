## PhysicalBone3D <- PhysicsBody3D

The PhysicalBone3D node is a physics body that can be used to make bones in a Skeleton3D react to physics. **Note:** In order to detect physical bones with raycasts, the `SkeletonModifier3D.active` property of the parent PhysicalBoneSimulator3D must be `true` and the Skeleton3D's bone must be assigned to PhysicalBone3D correctly; it means that `get_bone_id` should return a valid id (`>= 0`).

**Props:**
- angular_damp: float = 0.0
- angular_damp_mode: int (PhysicalBone3D.DampMode) = 0
- angular_velocity: Vector3 = Vector3(0, 0, 0)
- body_offset: Transform3D = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)
- bounce: float = 0.0
- can_sleep: bool = true
- custom_integrator: bool = false
- friction: float = 1.0
- gravity_scale: float = 1.0
- joint_offset: Transform3D = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)
- joint_rotation: Vector3 = Vector3(0, 0, 0)
- joint_type: int (PhysicalBone3D.JointType) = 0
- linear_damp: float = 0.0
- linear_damp_mode: int (PhysicalBone3D.DampMode) = 0
- linear_velocity: Vector3 = Vector3(0, 0, 0)
- mass: float = 1.0

**Methods:**
- apply_central_impulse(impulse: Vector3)
- apply_impulse(impulse: Vector3, position: Vector3 = Vector3(0, 0, 0))
- get_bone_id() -> int
- get_simulate_physics() -> bool
- is_simulating_physics() -> bool

**Enums:**
**DampMode:** DAMP_MODE_COMBINE=0, DAMP_MODE_REPLACE=1
**JointType:** JOINT_TYPE_NONE=0, JOINT_TYPE_PIN=1, JOINT_TYPE_CONE=2, JOINT_TYPE_HINGE=3, JOINT_TYPE_SLIDER=4, JOINT_TYPE_6DOF=5

