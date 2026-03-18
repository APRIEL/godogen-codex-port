## PhysicsDirectBodyState2D <- Object

Provides direct access to a physics body in the PhysicsServer2D, allowing safe changes to physics properties. This object is passed via the direct state callback of RigidBody2D, and is intended for changing the direct state of that body. See `RigidBody2D._integrate_forces`.

**Props:**
- angular_velocity: float
- center_of_mass: Vector2
- center_of_mass_local: Vector2
- collision_layer: int
- collision_mask: int
- inverse_inertia: float
- inverse_mass: float
- linear_velocity: Vector2
- sleeping: bool
- step: float
- total_angular_damp: float
- total_gravity: Vector2
- total_linear_damp: float
- transform: Transform2D

**Methods:**
- add_constant_central_force(force: Vector2 = Vector2(0, 0))
- add_constant_force(force: Vector2, position: Vector2 = Vector2(0, 0))
- add_constant_torque(torque: float)
- apply_central_force(force: Vector2 = Vector2(0, 0))
- apply_central_impulse(impulse: Vector2)
- apply_force(force: Vector2, position: Vector2 = Vector2(0, 0))
- apply_impulse(impulse: Vector2, position: Vector2 = Vector2(0, 0))
- apply_torque(torque: float)
- apply_torque_impulse(impulse: float)
- get_constant_force() -> Vector2
- get_constant_torque() -> float
- get_contact_collider(contact_idx: int) -> RID
- get_contact_collider_id(contact_idx: int) -> int
- get_contact_collider_object(contact_idx: int) -> Object
- get_contact_collider_position(contact_idx: int) -> Vector2
- get_contact_collider_shape(contact_idx: int) -> int
- get_contact_collider_velocity_at_position(contact_idx: int) -> Vector2
- get_contact_count() -> int
- get_contact_impulse(contact_idx: int) -> Vector2
- get_contact_local_normal(contact_idx: int) -> Vector2
- get_contact_local_position(contact_idx: int) -> Vector2
- get_contact_local_shape(contact_idx: int) -> int
- get_contact_local_velocity_at_position(contact_idx: int) -> Vector2
- get_space_state() -> PhysicsDirectSpaceState2D
- get_velocity_at_local_position(local_position: Vector2) -> Vector2
- integrate_forces()
- set_constant_force(force: Vector2)
- set_constant_torque(torque: float)

