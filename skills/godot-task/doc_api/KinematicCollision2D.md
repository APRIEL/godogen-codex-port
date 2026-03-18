## KinematicCollision2D <- RefCounted

Holds collision data from the movement of a PhysicsBody2D, usually from `PhysicsBody2D.move_and_collide`. When a PhysicsBody2D is moved, it stops if it detects a collision with another body. If a collision is detected, a KinematicCollision2D object is returned. The collision data includes the colliding object, the remaining motion, and the collision position. This data can be used to determine a custom response to the collision.

**Methods:**
- get_angle(up_direction: Vector2 = Vector2(0, -1)) -> float
- get_collider() -> Object
- get_collider_id() -> int
- get_collider_rid() -> RID
- get_collider_shape() -> Object
- get_collider_shape_index() -> int
- get_collider_velocity() -> Vector2
- get_depth() -> float
- get_local_shape() -> Object
- get_normal() -> Vector2
- get_position() -> Vector2
- get_remainder() -> Vector2
- get_travel() -> Vector2

