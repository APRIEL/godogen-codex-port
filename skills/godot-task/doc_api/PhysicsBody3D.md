## PhysicsBody3D <- CollisionObject3D

PhysicsBody3D is an abstract base class for 3D game objects affected by physics. All 3D physics bodies inherit from it. **Warning:** With a non-uniform scale, this node will likely not behave as expected. It is advised to keep its scale the same on all axes and adjust its collision shape(s) instead.

**Props:**
- axis_lock_angular_x: bool = false
- axis_lock_angular_y: bool = false
- axis_lock_angular_z: bool = false
- axis_lock_linear_x: bool = false
- axis_lock_linear_y: bool = false
- axis_lock_linear_z: bool = false

**Methods:**
- add_collision_exception_with(body: Node)
- get_axis_lock(axis: int) -> bool
- get_collision_exceptions() -> PhysicsBody3D[]
- get_gravity() -> Vector3
- move_and_collide(motion: Vector3, test_only: bool = false, safe_margin: float = 0.001, recovery_as_collision: bool = false, max_collisions: int = 1) -> KinematicCollision3D
- remove_collision_exception_with(body: Node)
- set_axis_lock(axis: int, lock: bool)
- test_move(from: Transform3D, motion: Vector3, collision: KinematicCollision3D = null, safe_margin: float = 0.001, recovery_as_collision: bool = false, max_collisions: int = 1) -> bool

