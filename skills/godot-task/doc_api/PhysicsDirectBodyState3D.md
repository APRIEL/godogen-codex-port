## PhysicsDirectBodyState3D <- Object

Provides direct access to a physics body in the PhysicsServer3D, allowing safe changes to physics properties. This object is passed via the direct state callback of RigidBody3D, and is intended for changing the direct state of that body. See `RigidBody3D._integrate_forces`.

**Props:**
- angular_velocity: Vector3
- center_of_mass: Vector3
- center_of_mass_local: Vector3
- collision_layer: int
- collision_mask: int
- inverse_inertia: Vector3
- inverse_inertia_tensor: Basis
- inverse_mass: float
- linear_velocity: Vector3
- principal_inertia_axes: Basis
- sleeping: bool
- step: float
- total_angular_damp: float
- total_gravity: Vector3
- total_linear_damp: float
- transform: Transform3D

**Methods:**
- add_constant_central_force(force: Vector3 = Vector3(0, 0, 0))
- add_constant_force(force: Vector3, position: Vector3 = Vector3(0, 0, 0))
- add_constant_torque(torque: Vector3)
- apply_central_force(force: Vector3 = Vector3(0, 0, 0))
- apply_central_impulse(impulse: Vector3 = Vector3(0, 0, 0))
- apply_force(force: Vector3, position: Vector3 = Vector3(0, 0, 0))
- apply_impulse(impulse: Vector3, position: Vector3 = Vector3(0, 0, 0))
- apply_torque(torque: Vector3)
- apply_torque_impulse(impulse: Vector3)
- get_constant_force() -> Vector3
- get_constant_torque() -> Vector3
- get_contact_collider(contact_idx: int) -> RID
- get_contact_collider_id(contact_idx: int) -> int
- get_contact_collider_object(contact_idx: int) -> Object
- get_contact_collider_position(contact_idx: int) -> Vector3
- get_contact_collider_shape(contact_idx: int) -> int
- get_contact_collider_velocity_at_position(contact_idx: int) -> Vector3
- get_contact_count() -> int
- get_contact_impulse(contact_idx: int) -> Vector3
- get_contact_local_normal(contact_idx: int) -> Vector3
- get_contact_local_position(contact_idx: int) -> Vector3
- get_contact_local_shape(contact_idx: int) -> int
- get_contact_local_velocity_at_position(contact_idx: int) -> Vector3
- get_space_state() -> PhysicsDirectSpaceState3D
- get_velocity_at_local_position(local_position: Vector3) -> Vector3
- integrate_forces()
- set_constant_force(force: Vector3)
- set_constant_torque(torque: Vector3)

