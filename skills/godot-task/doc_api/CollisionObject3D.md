## CollisionObject3D <- Node3D

Abstract base class for 3D physics objects. CollisionObject3D can hold any number of Shape3Ds for collision. Each shape must be assigned to a *shape owner*. Shape owners are not nodes and do not appear in the editor, but are accessible through code using the `shape_owner_*` methods. **Warning:** With a non-uniform scale, this node will likely not behave as expected. It is advised to keep its scale the same on all axes and adjust its collision shape(s) instead.

**Props:**
- collision_layer: int = 1
- collision_mask: int = 1
- collision_priority: float = 1.0
- disable_mode: int (CollisionObject3D.DisableMode) = 0
- input_capture_on_drag: bool = false
- input_ray_pickable: bool = true

**Methods:**
- create_shape_owner(owner: Object) -> int
- get_collision_layer_value(layer_number: int) -> bool
- get_collision_mask_value(layer_number: int) -> bool
- get_rid() -> RID
- get_shape_owners() -> PackedInt32Array
- is_shape_owner_disabled(owner_id: int) -> bool
- remove_shape_owner(owner_id: int)
- set_collision_layer_value(layer_number: int, value: bool)
- set_collision_mask_value(layer_number: int, value: bool)
- shape_find_owner(shape_index: int) -> int
- shape_owner_add_shape(owner_id: int, shape: Shape3D)
- shape_owner_clear_shapes(owner_id: int)
- shape_owner_get_owner(owner_id: int) -> Object
- shape_owner_get_shape(owner_id: int, shape_id: int) -> Shape3D
- shape_owner_get_shape_count(owner_id: int) -> int
- shape_owner_get_shape_index(owner_id: int, shape_id: int) -> int
- shape_owner_get_transform(owner_id: int) -> Transform3D
- shape_owner_remove_shape(owner_id: int, shape_id: int)
- shape_owner_set_disabled(owner_id: int, disabled: bool)
- shape_owner_set_transform(owner_id: int, transform: Transform3D)

**Signals:**
- input_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int)
- mouse_entered
- mouse_exited

**Enums:**
**DisableMode:** DISABLE_MODE_REMOVE=0, DISABLE_MODE_MAKE_STATIC=1, DISABLE_MODE_KEEP_ACTIVE=2

