## Node3D <- Node

The Node3D node is the base representation of a node in 3D space. All other 3D nodes inherit from this class. Affine operations (translation, rotation, scale) are calculated in the coordinate system relative to the parent, unless the Node3D's `top_level` is `true`. In this coordinate system, affine operations correspond to direct affine operations on the Node3D's `transform`. The term *parent space* refers to this coordinate system. The coordinate system that is attached to the Node3D itself is referred to as object-local coordinate system, or *local space*. **Note:** Unless otherwise specified, all methods that need angle parameters must receive angles in *radians*. To convert degrees to radians, use `@GlobalScope.deg_to_rad`. **Note:** In Godot 3 and older, Node3D was named *Spatial*.

**Props:**
- basis: Basis
- global_basis: Basis
- global_position: Vector3
- global_rotation: Vector3
- global_rotation_degrees: Vector3
- global_transform: Transform3D
- position: Vector3 = Vector3(0, 0, 0)
- quaternion: Quaternion
- rotation: Vector3 = Vector3(0, 0, 0)
- rotation_degrees: Vector3
- rotation_edit_mode: int (Node3D.RotationEditMode) = 0
- rotation_order: int (EulerOrder) = 2
- scale: Vector3 = Vector3(1, 1, 1)
- top_level: bool = false
- transform: Transform3D = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)
- visibility_parent: NodePath = NodePath("")
- visible: bool = true

**Methods:**
- add_gizmo(gizmo: Node3DGizmo)
- clear_gizmos()
- clear_subgizmo_selection()
- force_update_transform()
- get_gizmos() -> Node3DGizmo[]
- get_global_transform_interpolated() -> Transform3D
- get_parent_node_3d() -> Node3D
- get_world_3d() -> World3D
- global_rotate(axis: Vector3, angle: float)
- global_scale(scale: Vector3)
- global_translate(offset: Vector3)
- hide()
- is_local_transform_notification_enabled() -> bool
- is_scale_disabled() -> bool
- is_transform_notification_enabled() -> bool
- is_visible_in_tree() -> bool
- look_at(target: Vector3, up: Vector3 = Vector3(0, 1, 0), use_model_front: bool = false)
- look_at_from_position(position: Vector3, target: Vector3, up: Vector3 = Vector3(0, 1, 0), use_model_front: bool = false)
- orthonormalize()
- rotate(axis: Vector3, angle: float)
- rotate_object_local(axis: Vector3, angle: float)
- rotate_x(angle: float)
- rotate_y(angle: float)
- rotate_z(angle: float)
- scale_object_local(scale: Vector3)
- set_disable_scale(disable: bool)
- set_identity()
- set_ignore_transform_notification(enabled: bool)
- set_notify_local_transform(enable: bool)
- set_notify_transform(enable: bool)
- set_subgizmo_selection(gizmo: Node3DGizmo, id: int, transform: Transform3D)
- show()
- to_global(local_point: Vector3) -> Vector3
- to_local(global_point: Vector3) -> Vector3
- translate(offset: Vector3)
- translate_object_local(offset: Vector3)
- update_gizmos()

**Signals:**
- visibility_changed

**Enums:**
**Constants:** NOTIFICATION_TRANSFORM_CHANGED=2000, NOTIFICATION_ENTER_WORLD=41, NOTIFICATION_EXIT_WORLD=42, NOTIFICATION_VISIBILITY_CHANGED=43, NOTIFICATION_LOCAL_TRANSFORM_CHANGED=44
**RotationEditMode:** ROTATION_EDIT_MODE_EULER=0, ROTATION_EDIT_MODE_QUATERNION=1, ROTATION_EDIT_MODE_BASIS=2

