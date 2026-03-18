## CollisionPolygon2D <- Node2D

A node that provides a polygon shape to a CollisionObject2D parent and allows it to be edited. The polygon can be concave or convex. This can give a detection shape to an Area2D, turn a PhysicsBody2D into a solid object, or give a hollow shape to a StaticBody2D. **Warning:** A non-uniformly scaled CollisionPolygon2D will likely not behave as expected. Make sure to keep its scale the same on all axes and adjust its polygon instead.

**Props:**
- build_mode: int (CollisionPolygon2D.BuildMode) = 0
- disabled: bool = false
- one_way_collision: bool = false
- one_way_collision_direction: Vector2 = Vector2(0, 1)
- one_way_collision_margin: float = 1.0
- polygon: PackedVector2Array = PackedVector2Array()

**Enums:**
**BuildMode:** BUILD_SOLIDS=0, BUILD_SEGMENTS=1

