## SpringArm3D <- Node3D

SpringArm3D casts a ray or a shape along its Z axis and moves all its direct children to the collision point, with an optional margin. This is useful for 3rd person cameras that move closer to the player when inside a tight space (you may need to exclude the player's collider from the SpringArm3D's collision check).

**Props:**
- collision_mask: int = 1
- margin: float = 0.01
- shape: Shape3D
- spring_length: float = 1.0

**Methods:**
- add_excluded_object(RID: RID)
- clear_excluded_objects()
- get_hit_length() -> float
- remove_excluded_object(RID: RID) -> bool

