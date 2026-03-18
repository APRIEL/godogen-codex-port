## Camera3D <- Node3D

Camera3D is a special node that displays what is visible from its current location. Cameras register themselves in the nearest Viewport node (when ascending the tree). Only one camera can be active per viewport. If no viewport is available ascending the tree, the camera will register in the global viewport. In other words, a camera just provides 3D display capabilities to a Viewport, and, without one, a scene registered in that Viewport (or higher viewports) can't be displayed.

**Props:**
- attributes: CameraAttributes
- compositor: Compositor
- cull_mask: int = 1048575
- current: bool = false
- doppler_tracking: int (Camera3D.DopplerTracking) = 0
- environment: Environment
- far: float = 4000.0
- fov: float = 75.0
- frustum_offset: Vector2 = Vector2(0, 0)
- h_offset: float = 0.0
- keep_aspect: int (Camera3D.KeepAspect) = 1
- near: float = 0.05
- projection: int (Camera3D.ProjectionType) = 0
- size: float = 1.0
- v_offset: float = 0.0

**Methods:**
- clear_current(enable_next: bool = true)
- get_camera_projection() -> Projection
- get_camera_rid() -> RID
- get_camera_transform() -> Transform3D
- get_cull_mask_value(layer_number: int) -> bool
- get_frustum() -> Plane[]
- get_pyramid_shape_rid() -> RID
- is_position_behind(world_point: Vector3) -> bool
- is_position_in_frustum(world_point: Vector3) -> bool
- make_current()
- project_local_ray_normal(screen_point: Vector2) -> Vector3
- project_position(screen_point: Vector2, z_depth: float) -> Vector3
- project_ray_normal(screen_point: Vector2) -> Vector3
- project_ray_origin(screen_point: Vector2) -> Vector3
- set_cull_mask_value(layer_number: int, value: bool)
- set_frustum(size: float, offset: Vector2, z_near: float, z_far: float)
- set_orthogonal(size: float, z_near: float, z_far: float)
- set_perspective(fov: float, z_near: float, z_far: float)
- unproject_position(world_point: Vector3) -> Vector2

**Enums:**
**ProjectionType:** PROJECTION_PERSPECTIVE=0, PROJECTION_ORTHOGONAL=1, PROJECTION_FRUSTUM=2
**KeepAspect:** KEEP_WIDTH=0, KEEP_HEIGHT=1
**DopplerTracking:** DOPPLER_TRACKING_DISABLED=0, DOPPLER_TRACKING_IDLE_STEP=1, DOPPLER_TRACKING_PHYSICS_STEP=2

