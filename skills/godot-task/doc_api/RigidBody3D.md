## RigidBody3D <- PhysicsBody3D

RigidBody3D implements full 3D physics. It cannot be controlled directly, instead, you must apply forces to it (gravity, impulses, etc.), and the physics simulation will calculate the resulting movement, rotation, react to collisions, and affect other physics bodies in its path. The body's behavior can be adjusted via `lock_rotation`, `freeze`, and `freeze_mode`. By changing various properties of the object, such as `mass`, you can control how the physics simulation acts on it. A rigid body will always maintain its shape and size, even when forces are applied to it. It is useful for objects that can be interacted with in an environment, such as a tree that can be knocked over or a stack of crates that can be pushed around. If you need to directly affect the body, prefer `_integrate_forces` as it allows you to directly access the physics state. If you need to override the default physics behavior, you can write a custom force integration function. See `custom_integrator`. **Note:** Changing the 3D transform or `linear_velocity` of a RigidBody3D very often may lead to some unpredictable behaviors. This also happens when a RigidBody3D is the descendant of a constantly moving node, like another RigidBody3D, as that will cause its global transform to be set whenever its ancestor moves.

**Props:**
- angular_damp: float = 0.0
- angular_damp_mode: int (RigidBody3D.DampMode) = 0
- angular_velocity: Vector3 = Vector3(0, 0, 0)
- can_sleep: bool = true
- center_of_mass: Vector3 = Vector3(0, 0, 0)
- center_of_mass_mode: int (RigidBody3D.CenterOfMassMode) = 0
- constant_force: Vector3 = Vector3(0, 0, 0)
- constant_torque: Vector3 = Vector3(0, 0, 0)
- contact_monitor: bool = false
- continuous_cd: bool = false
- custom_integrator: bool = false
- freeze: bool = false
- freeze_mode: int (RigidBody3D.FreezeMode) = 0
- gravity_scale: float = 1.0
- inertia: Vector3 = Vector3(0, 0, 0)
- linear_damp: float = 0.0
- linear_damp_mode: int (RigidBody3D.DampMode) = 0
- linear_velocity: Vector3 = Vector3(0, 0, 0)
- lock_rotation: bool = false
- mass: float = 1.0
- max_contacts_reported: int = 0
- physics_material_override: PhysicsMaterial
- sleeping: bool = false

**Methods:**
- add_constant_central_force(force: Vector3)
- add_constant_force(force: Vector3, position: Vector3 = Vector3(0, 0, 0))
- add_constant_torque(torque: Vector3)
- apply_central_force(force: Vector3)
- apply_central_impulse(impulse: Vector3)
- apply_force(force: Vector3, position: Vector3 = Vector3(0, 0, 0))
- apply_impulse(impulse: Vector3, position: Vector3 = Vector3(0, 0, 0))
- apply_torque(torque: Vector3)
- apply_torque_impulse(impulse: Vector3)
- get_colliding_bodies() -> Node3D[]
- get_contact_count() -> int
- get_inverse_inertia_tensor() -> Basis
- set_axis_velocity(axis_velocity: Vector3)

**Signals:**
- body_entered(body: Node)
- body_exited(body: Node)
- body_shape_entered(body_rid: RID, body: Node, body_shape_index: int, local_shape_index: int)
- body_shape_exited(body_rid: RID, body: Node, body_shape_index: int, local_shape_index: int)
- sleeping_state_changed

**Enums:**
**FreezeMode:** FREEZE_MODE_STATIC=0, FREEZE_MODE_KINEMATIC=1
**CenterOfMassMode:** CENTER_OF_MASS_MODE_AUTO=0, CENTER_OF_MASS_MODE_CUSTOM=1
**DampMode:** DAMP_MODE_COMBINE=0, DAMP_MODE_REPLACE=1

