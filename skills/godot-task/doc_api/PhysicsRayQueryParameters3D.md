## PhysicsRayQueryParameters3D <- RefCounted

By changing various properties of this object, such as the ray position, you can configure the parameters for `PhysicsDirectSpaceState3D.intersect_ray`.

**Props:**
- collide_with_areas: bool = false
- collide_with_bodies: bool = true
- collision_mask: int = 4294967295
- exclude: RID[] = []
- from: Vector3 = Vector3(0, 0, 0)
- hit_back_faces: bool = true
- hit_from_inside: bool = false
- to: Vector3 = Vector3(0, 0, 0)

**Methods:**
- create(from: Vector3, to: Vector3, collision_mask: int = 4294967295, exclude: RID[] = []) -> PhysicsRayQueryParameters3D

