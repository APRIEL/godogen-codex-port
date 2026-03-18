## PhysicsRayQueryParameters2D <- RefCounted

By changing various properties of this object, such as the ray position, you can configure the parameters for `PhysicsDirectSpaceState2D.intersect_ray`.

**Props:**
- collide_with_areas: bool = false
- collide_with_bodies: bool = true
- collision_mask: int = 4294967295
- exclude: RID[] = []
- from: Vector2 = Vector2(0, 0)
- hit_from_inside: bool = false
- to: Vector2 = Vector2(0, 0)

**Methods:**
- create(from: Vector2, to: Vector2, collision_mask: int = 4294967295, exclude: RID[] = []) -> PhysicsRayQueryParameters2D

