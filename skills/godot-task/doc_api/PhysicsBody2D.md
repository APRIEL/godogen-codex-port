## PhysicsBody2D <- CollisionObject2D

PhysicsBody2D is an abstract base class for 2D game objects affected by physics. All 2D physics bodies inherit from it.

**Props:**
- input_pickable: bool = false

**Methods:**
- add_collision_exception_with(body: Node)
- get_collision_exceptions() -> PhysicsBody2D[]
- get_gravity() -> Vector2
- move_and_collide(motion: Vector2, test_only: bool = false, safe_margin: float = 0.08, recovery_as_collision: bool = false) -> KinematicCollision2D
- remove_collision_exception_with(body: Node)
- test_move(from: Transform2D, motion: Vector2, collision: KinematicCollision2D = null, safe_margin: float = 0.08, recovery_as_collision: bool = false) -> bool

