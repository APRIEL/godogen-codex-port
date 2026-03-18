## RigidBody2D <- PhysicsBody2D

RigidBody2D implements full 2D physics. It cannot be controlled directly, instead, you must apply forces to it (gravity, impulses, etc.), and the physics simulation will calculate the resulting movement, rotation, react to collisions, and affect other physics bodies in its path. The body's behavior can be adjusted via `lock_rotation`, `freeze`, and `freeze_mode`. By changing various properties of the object, such as `mass`, you can control how the physics simulation acts on it. A rigid body will always maintain its shape and size, even when forces are applied to it. It is useful for objects that can be interacted with in an environment, such as a tree that can be knocked over or a stack of crates that can be pushed around. If you need to directly affect the body, prefer `_integrate_forces` as it allows you to directly access the physics state. If you need to override the default physics behavior, you can write a custom force integration function. See `custom_integrator`. **Note:** Changing the 2D transform or `linear_velocity` of a RigidBody2D very often may lead to some unpredictable behaviors. This also happens when a RigidBody2D is the descendant of a constantly moving node, like another RigidBody2D, as that will cause its global transform to be set whenever its ancestor moves.

**Props:**
- angular_damp: float = 0.0
- angular_damp_mode: int (RigidBody2D.DampMode) = 0
- angular_velocity: float = 0.0
- can_sleep: bool = true
- center_of_mass: Vector2 = Vector2(0, 0)
- center_of_mass_mode: int (RigidBody2D.CenterOfMassMode) = 0
- constant_force: Vector2 = Vector2(0, 0)
- constant_torque: float = 0.0
- contact_monitor: bool = false
- continuous_cd: int (RigidBody2D.CCDMode) = 0
- custom_integrator: bool = false
- freeze: bool = false
- freeze_mode: int (RigidBody2D.FreezeMode) = 0
- gravity_scale: float = 1.0
- inertia: float = 0.0
- linear_damp: float = 0.0
- linear_damp_mode: int (RigidBody2D.DampMode) = 0
- linear_velocity: Vector2 = Vector2(0, 0)
- lock_rotation: bool = false
- mass: float = 1.0
- max_contacts_reported: int = 0
- physics_material_override: PhysicsMaterial
- sleeping: bool = false

**Methods:**
- add_constant_central_force(force: Vector2)
- add_constant_force(force: Vector2, position: Vector2 = Vector2(0, 0))
- add_constant_torque(torque: float)
- apply_central_force(force: Vector2)
- apply_central_impulse(impulse: Vector2 = Vector2(0, 0))
- apply_force(force: Vector2, position: Vector2 = Vector2(0, 0))
- apply_impulse(impulse: Vector2, position: Vector2 = Vector2(0, 0))
- apply_torque(torque: float)
- apply_torque_impulse(torque: float)
- get_colliding_bodies() -> Node2D[]
- get_contact_count() -> int
- set_axis_velocity(axis_velocity: Vector2)

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
**CCDMode:** CCD_MODE_DISABLED=0, CCD_MODE_CAST_RAY=1, CCD_MODE_CAST_SHAPE=2

