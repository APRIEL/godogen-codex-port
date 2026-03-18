## ShapeCast2D <- Node2D

Shape casting allows to detect collision objects by sweeping its `shape` along the cast direction determined by `target_position`. This is similar to RayCast2D, but it allows for sweeping a region of space, rather than just a straight line. ShapeCast2D can detect multiple collision objects. It is useful for things like wide laser beams or snapping a simple shape to a floor. Immediate collision overlaps can be done with the `target_position` set to `Vector2(0, 0)` and by calling `force_shapecast_update` within the same physics frame. This helps to overcome some limitations of Area2D when used as an instantaneous detection area, as collision information isn't immediately available to it. **Note:** Shape casting is more computationally expensive than ray casting.

**Props:**
- collide_with_areas: bool = false
- collide_with_bodies: bool = true
- collision_mask: int = 1
- collision_result: Array = []
- enabled: bool = true
- exclude_parent: bool = true
- margin: float = 0.0
- max_results: int = 32
- shape: Shape2D
- target_position: Vector2 = Vector2(0, 50)

**Methods:**
- add_exception(node: CollisionObject2D)
- add_exception_rid(rid: RID)
- clear_exceptions()
- force_shapecast_update()
- get_closest_collision_safe_fraction() -> float
- get_closest_collision_unsafe_fraction() -> float
- get_collider(index: int) -> Object
- get_collider_rid(index: int) -> RID
- get_collider_shape(index: int) -> int
- get_collision_count() -> int
- get_collision_mask_value(layer_number: int) -> bool
- get_collision_normal(index: int) -> Vector2
- get_collision_point(index: int) -> Vector2
- is_colliding() -> bool
- remove_exception(node: CollisionObject2D)
- remove_exception_rid(rid: RID)
- set_collision_mask_value(layer_number: int, value: bool)

