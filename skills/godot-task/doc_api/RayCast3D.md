## RayCast3D <- Node3D

A raycast represents a ray from its origin to its `target_position` that finds the closest object along its path, if it intersects any. RayCast3D can ignore some objects by adding them to an exception list, by making its detection reporting ignore Area3Ds (`collide_with_areas`) or PhysicsBody3Ds (`collide_with_bodies`), or by configuring physics layers. RayCast3D calculates intersection every physics frame, and it holds the result until the next physics frame. For an immediate raycast, or if you want to configure a RayCast3D multiple times within the same physics frame, use `force_raycast_update`. To sweep over a region of 3D space, you can approximate the region with multiple RayCast3Ds or use ShapeCast3D.

**Props:**
- collide_with_areas: bool = false
- collide_with_bodies: bool = true
- collision_mask: int = 1
- debug_shape_custom_color: Color = Color(0, 0, 0, 1)
- debug_shape_thickness: int = 2
- enabled: bool = true
- exclude_parent: bool = true
- hit_back_faces: bool = true
- hit_from_inside: bool = false
- target_position: Vector3 = Vector3(0, -1, 0)

**Methods:**
- add_exception(node: CollisionObject3D)
- add_exception_rid(rid: RID)
- clear_exceptions()
- force_raycast_update()
- get_collider() -> Object
- get_collider_rid() -> RID
- get_collider_shape() -> int
- get_collision_face_index() -> int
- get_collision_mask_value(layer_number: int) -> bool
- get_collision_normal() -> Vector3
- get_collision_point() -> Vector3
- is_colliding() -> bool
- remove_exception(node: CollisionObject3D)
- remove_exception_rid(rid: RID)
- set_collision_mask_value(layer_number: int, value: bool)

