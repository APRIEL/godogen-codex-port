## PhysicsShapeQueryParameters3D <- RefCounted

By changing various properties of this object, such as the shape, you can configure the parameters for PhysicsDirectSpaceState3D's methods.

**Props:**
- collide_with_areas: bool = false
- collide_with_bodies: bool = true
- collision_mask: int = 4294967295
- exclude: RID[] = []
- margin: float = 0.0
- motion: Vector3 = Vector3(0, 0, 0)
- shape: Resource
- shape_rid: RID = RID()
- transform: Transform3D = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)

