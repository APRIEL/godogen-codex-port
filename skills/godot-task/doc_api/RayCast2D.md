## RayCast2D <- Node2D

A raycast represents a ray from its origin to its `target_position` that finds the closest object along its path, if it intersects any. RayCast2D can ignore some objects by adding them to an exception list, by making its detection reporting ignore Area2Ds (`collide_with_areas`) or PhysicsBody2Ds (`collide_with_bodies`), or by configuring physics layers. RayCast2D calculates intersection every physics frame, and it holds the result until the next physics frame. For an immediate raycast, or if you want to configure a RayCast2D multiple times within the same physics frame, use `force_raycast_update`. To sweep over a region of 2D space, you can approximate the region with multiple RayCast2Ds or use ShapeCast2D.

**Props:**
- collide_with_areas: bool = false
- collide_with_bodies: bool = true
- collision_mask: int = 1
- enabled: bool = true
- exclude_parent: bool = true
- hit_from_inside: bool = false
- target_position: Vector2 = Vector2(0, 50)

**Methods:**
- add_exception(node: CollisionObject2D)
- add_exception_rid(rid: RID)
- clear_exceptions()
- force_raycast_update()
- get_collider() -> Object
- get_collider_rid() -> RID
- get_collider_shape() -> int
- get_collision_mask_value(layer_number: int) -> bool
- get_collision_normal() -> Vector2
- get_collision_point() -> Vector2
- is_colliding() -> bool
- remove_exception(node: CollisionObject2D)
- remove_exception_rid(rid: RID)
- set_collision_mask_value(layer_number: int, value: bool)

