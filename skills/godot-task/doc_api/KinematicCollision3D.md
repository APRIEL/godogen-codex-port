## KinematicCollision3D <- RefCounted

Holds collision data from the movement of a PhysicsBody3D, usually from `PhysicsBody3D.move_and_collide`. When a PhysicsBody3D is moved, it stops if it detects a collision with another body. If a collision is detected, a KinematicCollision3D object is returned. The collision data includes the colliding object, the remaining motion, and the collision position. This data can be used to determine a custom response to the collision.

**Methods:**
- get_angle(collision_index: int = 0, up_direction: Vector3 = Vector3(0, 1, 0)) -> float
- get_collider(collision_index: int = 0) -> Object
- get_collider_id(collision_index: int = 0) -> int
- get_collider_rid(collision_index: int = 0) -> RID
- get_collider_shape(collision_index: int = 0) -> Object
- get_collider_shape_index(collision_index: int = 0) -> int
- get_collider_velocity(collision_index: int = 0) -> Vector3
- get_collision_count() -> int
- get_depth() -> float
- get_local_shape(collision_index: int = 0) -> Object
- get_normal(collision_index: int = 0) -> Vector3
- get_position(collision_index: int = 0) -> Vector3
- get_remainder() -> Vector3
- get_travel() -> Vector3

