## CollisionObject2D <- Node2D

Abstract base class for 2D physics objects. CollisionObject2D can hold any number of Shape2Ds for collision. Each shape must be assigned to a *shape owner*. Shape owners are not nodes and do not appear in the editor, but are accessible through code using the `shape_owner_*` methods. **Note:** Only collisions between objects within the same canvas (Viewport canvas or CanvasLayer) are supported. The behavior of collisions between objects in different canvases is undefined.

**Props:**
- collision_layer: int = 1
- collision_mask: int = 1
- collision_priority: float = 1.0
- disable_mode: int (CollisionObject2D.DisableMode) = 0
- input_pickable: bool = true

**Methods:**
- create_shape_owner(owner: Object) -> int
- get_collision_layer_value(layer_number: int) -> bool
- get_collision_mask_value(layer_number: int) -> bool
- get_rid() -> RID
- get_shape_owner_one_way_collision_direction(owner_id: int) -> Vector2
- get_shape_owner_one_way_collision_margin(owner_id: int) -> float
- get_shape_owners() -> PackedInt32Array
- is_shape_owner_disabled(owner_id: int) -> bool
- is_shape_owner_one_way_collision_enabled(owner_id: int) -> bool
- remove_shape_owner(owner_id: int)
- set_collision_layer_value(layer_number: int, value: bool)
- set_collision_mask_value(layer_number: int, value: bool)
- shape_find_owner(shape_index: int) -> int
- shape_owner_add_shape(owner_id: int, shape: Shape2D)
- shape_owner_clear_shapes(owner_id: int)
- shape_owner_get_owner(owner_id: int) -> Object
- shape_owner_get_shape(owner_id: int, shape_id: int) -> Shape2D
- shape_owner_get_shape_count(owner_id: int) -> int
- shape_owner_get_shape_index(owner_id: int, shape_id: int) -> int
- shape_owner_get_transform(owner_id: int) -> Transform2D
- shape_owner_remove_shape(owner_id: int, shape_id: int)
- shape_owner_set_disabled(owner_id: int, disabled: bool)
- shape_owner_set_one_way_collision(owner_id: int, enable: bool)
- shape_owner_set_one_way_collision_direction(owner_id: int, p_direction: Vector2)
- shape_owner_set_one_way_collision_margin(owner_id: int, margin: float)
- shape_owner_set_transform(owner_id: int, transform: Transform2D)

**Signals:**
- input_event(viewport: Node, event: InputEvent, shape_idx: int)
- mouse_entered
- mouse_exited
- mouse_shape_entered(shape_idx: int)
- mouse_shape_exited(shape_idx: int)

**Enums:**
**DisableMode:** DISABLE_MODE_REMOVE=0, DISABLE_MODE_MAKE_STATIC=1, DISABLE_MODE_KEEP_ACTIVE=2

