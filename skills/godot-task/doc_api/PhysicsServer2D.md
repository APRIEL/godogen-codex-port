## PhysicsServer2D <- Object

PhysicsServer2D is the server responsible for all 2D physics. It can directly create and manipulate all physics objects: - A *space* is a self-contained world for a physics simulation. It contains bodies, areas, and joints. Its state can be queried for collision and intersection information, and several parameters of the simulation can be modified. - A *shape* is a geometric shape such as a circle, a rectangle, a capsule, or a polygon. It can be used for collision detection by adding it to a body/area, possibly with an extra transformation relative to the body/area's origin. Bodies/areas can have multiple (transformed) shapes added to them, and a single shape can be added to bodies/areas multiple times with different local transformations. - A *body* is a physical object which can be in static, kinematic, or rigid mode. Its state (such as position and velocity) can be queried and updated. A force integration callback can be set to customize the body's physics. - An *area* is a region in space which can be used to detect bodies and areas entering and exiting it. A body monitoring callback can be set to report entering/exiting body shapes, and similarly an area monitoring callback can be set. Gravity and damping can be overridden within the area by setting area parameters. - A *joint* is a constraint, either between two bodies or on one body relative to a point. Parameters such as the joint bias and the rest length of a spring joint can be adjusted. Physics objects in PhysicsServer2D may be created and manipulated independently; they do not have to be tied to nodes in the scene tree. **Note:** All the 2D physics nodes use the physics server internally. Adding a physics node to the scene tree will cause a corresponding physics object to be created in the physics server. A rigid body node registers a callback that updates the node's transform with the transform of the respective body object in the physics server (every physics update). An area node registers a callback to inform the area node about overlaps with the respective area object in the physics server. The raycast node queries the direct state of the relevant space in the physics server.

**Methods:**
- area_add_shape(area: RID, shape: RID, transform: Transform2D = Transform2D(1, 0, 0, 1, 0, 0), disabled: bool = false)
- area_attach_canvas_instance_id(area: RID, id: int)
- area_attach_object_instance_id(area: RID, id: int)
- area_clear_shapes(area: RID)
- area_create() -> RID
- area_get_canvas_instance_id(area: RID) -> int
- area_get_collision_layer(area: RID) -> int
- area_get_collision_mask(area: RID) -> int
- area_get_object_instance_id(area: RID) -> int
- area_get_param(area: RID, param: int) -> Variant
- area_get_shape(area: RID, shape_idx: int) -> RID
- area_get_shape_count(area: RID) -> int
- area_get_shape_transform(area: RID, shape_idx: int) -> Transform2D
- area_get_space(area: RID) -> RID
- area_get_transform(area: RID) -> Transform2D
- area_remove_shape(area: RID, shape_idx: int)
- area_set_area_monitor_callback(area: RID, callback: Callable)
- area_set_collision_layer(area: RID, layer: int)
- area_set_collision_mask(area: RID, mask: int)
- area_set_monitor_callback(area: RID, callback: Callable)
- area_set_monitorable(area: RID, monitorable: bool)
- area_set_param(area: RID, param: int, value: Variant)
- area_set_shape(area: RID, shape_idx: int, shape: RID)
- area_set_shape_disabled(area: RID, shape_idx: int, disabled: bool)
- area_set_shape_transform(area: RID, shape_idx: int, transform: Transform2D)
- area_set_space(area: RID, space: RID)
- area_set_transform(area: RID, transform: Transform2D)
- body_add_collision_exception(body: RID, excepted_body: RID)
- body_add_constant_central_force(body: RID, force: Vector2)
- body_add_constant_force(body: RID, force: Vector2, position: Vector2 = Vector2(0, 0))
- body_add_constant_torque(body: RID, torque: float)
- body_add_shape(body: RID, shape: RID, transform: Transform2D = Transform2D(1, 0, 0, 1, 0, 0), disabled: bool = false)
- body_apply_central_force(body: RID, force: Vector2)
- body_apply_central_impulse(body: RID, impulse: Vector2)
- body_apply_force(body: RID, force: Vector2, position: Vector2 = Vector2(0, 0))
- body_apply_impulse(body: RID, impulse: Vector2, position: Vector2 = Vector2(0, 0))
- body_apply_torque(body: RID, torque: float)
- body_apply_torque_impulse(body: RID, impulse: float)
- body_attach_canvas_instance_id(body: RID, id: int)
- body_attach_object_instance_id(body: RID, id: int)
- body_clear_shapes(body: RID)
- body_create() -> RID
- body_get_canvas_instance_id(body: RID) -> int
- body_get_collision_layer(body: RID) -> int
- body_get_collision_mask(body: RID) -> int
- body_get_collision_priority(body: RID) -> float
- body_get_constant_force(body: RID) -> Vector2
- body_get_constant_torque(body: RID) -> float
- body_get_continuous_collision_detection_mode(body: RID) -> int
- body_get_direct_state(body: RID) -> PhysicsDirectBodyState2D
- body_get_max_contacts_reported(body: RID) -> int
- body_get_mode(body: RID) -> int
- body_get_object_instance_id(body: RID) -> int
- body_get_param(body: RID, param: int) -> Variant
- body_get_shape(body: RID, shape_idx: int) -> RID
- body_get_shape_count(body: RID) -> int
- body_get_shape_transform(body: RID, shape_idx: int) -> Transform2D
- body_get_space(body: RID) -> RID
- body_get_state(body: RID, state: int) -> Variant
- body_is_omitting_force_integration(body: RID) -> bool
- body_remove_collision_exception(body: RID, excepted_body: RID)
- body_remove_shape(body: RID, shape_idx: int)
- body_reset_mass_properties(body: RID)
- body_set_axis_velocity(body: RID, axis_velocity: Vector2)
- body_set_collision_layer(body: RID, layer: int)
- body_set_collision_mask(body: RID, mask: int)
- body_set_collision_priority(body: RID, priority: float)
- body_set_constant_force(body: RID, force: Vector2)
- body_set_constant_torque(body: RID, torque: float)
- body_set_continuous_collision_detection_mode(body: RID, mode: int)
- body_set_force_integration_callback(body: RID, callable: Callable, userdata: Variant = null)
- body_set_max_contacts_reported(body: RID, amount: int)
- body_set_mode(body: RID, mode: int)
- body_set_omit_force_integration(body: RID, enable: bool)
- body_set_param(body: RID, param: int, value: Variant)
- body_set_shape(body: RID, shape_idx: int, shape: RID)
- body_set_shape_as_one_way_collision(body: RID, shape_idx: int, enable: bool, margin: float, direction: Vector2 = Vector2(0, 1))
- body_set_shape_disabled(body: RID, shape_idx: int, disabled: bool)
- body_set_shape_transform(body: RID, shape_idx: int, transform: Transform2D)
- body_set_space(body: RID, space: RID)
- body_set_state(body: RID, state: int, value: Variant)
- body_set_state_sync_callback(body: RID, callable: Callable)
- body_test_motion(body: RID, parameters: PhysicsTestMotionParameters2D, result: PhysicsTestMotionResult2D = null) -> bool
- capsule_shape_create() -> RID
- circle_shape_create() -> RID
- concave_polygon_shape_create() -> RID
- convex_polygon_shape_create() -> RID
- damped_spring_joint_get_param(joint: RID, param: int) -> float
- damped_spring_joint_set_param(joint: RID, param: int, value: float)
- free_rid(rid: RID)
- get_process_info(process_info: int) -> int
- joint_clear(joint: RID)
- joint_create() -> RID
- joint_disable_collisions_between_bodies(joint: RID, disable: bool)
- joint_get_param(joint: RID, param: int) -> float
- joint_get_type(joint: RID) -> int
- joint_is_disabled_collisions_between_bodies(joint: RID) -> bool
- joint_make_damped_spring(joint: RID, anchor_a: Vector2, anchor_b: Vector2, body_a: RID, body_b: RID = RID())
- joint_make_groove(joint: RID, groove1_a: Vector2, groove2_a: Vector2, anchor_b: Vector2, body_a: RID = RID(), body_b: RID = RID())
- joint_make_pin(joint: RID, anchor: Vector2, body_a: RID, body_b: RID = RID())
- joint_set_param(joint: RID, param: int, value: float)
- pin_joint_get_flag(joint: RID, flag: int) -> bool
- pin_joint_get_param(joint: RID, param: int) -> float
- pin_joint_set_flag(joint: RID, flag: int, enabled: bool)
- pin_joint_set_param(joint: RID, param: int, value: float)
- rectangle_shape_create() -> RID
- segment_shape_create() -> RID
- separation_ray_shape_create() -> RID
- set_active(active: bool)
- shape_get_data(shape: RID) -> Variant
- shape_get_type(shape: RID) -> int
- shape_set_data(shape: RID, data: Variant)
- space_create() -> RID
- space_get_direct_state(space: RID) -> PhysicsDirectSpaceState2D
- space_get_param(space: RID, param: int) -> float
- space_is_active(space: RID) -> bool
- space_set_active(space: RID, active: bool)
- space_set_param(space: RID, param: int, value: float)
- world_boundary_shape_create() -> RID

**Enums:**
**SpaceParameter:** SPACE_PARAM_CONTACT_RECYCLE_RADIUS=0, SPACE_PARAM_CONTACT_MAX_SEPARATION=1, SPACE_PARAM_CONTACT_MAX_ALLOWED_PENETRATION=2, SPACE_PARAM_CONTACT_DEFAULT_BIAS=3, SPACE_PARAM_BODY_LINEAR_VELOCITY_SLEEP_THRESHOLD=4, SPACE_PARAM_BODY_ANGULAR_VELOCITY_SLEEP_THRESHOLD=5, SPACE_PARAM_BODY_TIME_TO_SLEEP=6, SPACE_PARAM_CONSTRAINT_DEFAULT_BIAS=7, SPACE_PARAM_SOLVER_ITERATIONS=8
**ShapeType:** SHAPE_WORLD_BOUNDARY=0, SHAPE_SEPARATION_RAY=1, SHAPE_SEGMENT=2, SHAPE_CIRCLE=3, SHAPE_RECTANGLE=4, SHAPE_CAPSULE=5, SHAPE_CONVEX_POLYGON=6, SHAPE_CONCAVE_POLYGON=7, SHAPE_CUSTOM=8
**AreaParameter:** AREA_PARAM_GRAVITY_OVERRIDE_MODE=0, AREA_PARAM_GRAVITY=1, AREA_PARAM_GRAVITY_VECTOR=2, AREA_PARAM_GRAVITY_IS_POINT=3, AREA_PARAM_GRAVITY_POINT_UNIT_DISTANCE=4, AREA_PARAM_LINEAR_DAMP_OVERRIDE_MODE=5, AREA_PARAM_LINEAR_DAMP=6, AREA_PARAM_ANGULAR_DAMP_OVERRIDE_MODE=7, AREA_PARAM_ANGULAR_DAMP=8, AREA_PARAM_PRIORITY=9
**AreaSpaceOverrideMode:** AREA_SPACE_OVERRIDE_DISABLED=0, AREA_SPACE_OVERRIDE_COMBINE=1, AREA_SPACE_OVERRIDE_COMBINE_REPLACE=2, AREA_SPACE_OVERRIDE_REPLACE=3, AREA_SPACE_OVERRIDE_REPLACE_COMBINE=4
**BodyMode:** BODY_MODE_STATIC=0, BODY_MODE_KINEMATIC=1, BODY_MODE_RIGID=2, BODY_MODE_RIGID_LINEAR=3
**BodyParameter:** BODY_PARAM_BOUNCE=0, BODY_PARAM_FRICTION=1, BODY_PARAM_MASS=2, BODY_PARAM_INERTIA=3, BODY_PARAM_CENTER_OF_MASS=4, BODY_PARAM_GRAVITY_SCALE=5, BODY_PARAM_LINEAR_DAMP_MODE=6, BODY_PARAM_ANGULAR_DAMP_MODE=7, BODY_PARAM_LINEAR_DAMP=8, BODY_PARAM_ANGULAR_DAMP=9, ...
**BodyDampMode:** BODY_DAMP_MODE_COMBINE=0, BODY_DAMP_MODE_REPLACE=1
**BodyState:** BODY_STATE_TRANSFORM=0, BODY_STATE_LINEAR_VELOCITY=1, BODY_STATE_ANGULAR_VELOCITY=2, BODY_STATE_SLEEPING=3, BODY_STATE_CAN_SLEEP=4
**JointType:** JOINT_TYPE_PIN=0, JOINT_TYPE_GROOVE=1, JOINT_TYPE_DAMPED_SPRING=2, JOINT_TYPE_MAX=3
**JointParam:** JOINT_PARAM_BIAS=0, JOINT_PARAM_MAX_BIAS=1, JOINT_PARAM_MAX_FORCE=2
**PinJointParam:** PIN_JOINT_SOFTNESS=0, PIN_JOINT_LIMIT_UPPER=1, PIN_JOINT_LIMIT_LOWER=2, PIN_JOINT_MOTOR_TARGET_VELOCITY=3
**PinJointFlag:** PIN_JOINT_FLAG_ANGULAR_LIMIT_ENABLED=0, PIN_JOINT_FLAG_MOTOR_ENABLED=1
**DampedSpringParam:** DAMPED_SPRING_REST_LENGTH=0, DAMPED_SPRING_STIFFNESS=1, DAMPED_SPRING_DAMPING=2
**CCDMode:** CCD_MODE_DISABLED=0, CCD_MODE_CAST_RAY=1, CCD_MODE_CAST_SHAPE=2
**AreaBodyStatus:** AREA_BODY_ADDED=0, AREA_BODY_REMOVED=1
**ProcessInfo:** INFO_ACTIVE_OBJECTS=0, INFO_COLLISION_PAIRS=1, INFO_ISLAND_COUNT=2

