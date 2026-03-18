## CollisionPolygon3D <- Node3D

A node that provides a thickened polygon shape (a prism) to a CollisionObject3D parent and allows it to be edited. The polygon can be concave or convex. This can give a detection shape to an Area3D or turn a PhysicsBody3D into a solid object. **Warning:** A non-uniformly scaled CollisionShape3D will likely not behave as expected. Make sure to keep its scale the same on all axes and adjust its shape resource instead.

**Props:**
- debug_color: Color = Color(0, 0, 0, 0)
- debug_fill: bool = true
- depth: float = 1.0
- disabled: bool = false
- margin: float = 0.04
- polygon: PackedVector2Array = PackedVector2Array()

