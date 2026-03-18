## CollisionShape2D <- Node2D

A node that provides a Shape2D to a CollisionObject2D parent and allows it to be edited. This can give a detection shape to an Area2D or turn a PhysicsBody2D into a solid object.

**Props:**
- debug_color: Color = Color(0, 0, 0, 0)
- disabled: bool = false
- one_way_collision: bool = false
- one_way_collision_direction: Vector2 = Vector2(0, 1)
- one_way_collision_margin: float = 1.0
- shape: Shape2D

