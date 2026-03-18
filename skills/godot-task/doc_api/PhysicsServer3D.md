## PhysicsServer3D <- Object

PhysicsServer3D is the server responsible for all 3D physics. It can directly create and manipulate all physics objects: - A *space* is a self-contained world for a physics simulation. It contains bodies, areas, and joints. Its state can be queried for collision and intersection information, and several parameters of the simulation can be modified. - A *shape* is a geometric shape such as a sphere, a box, a cylinder, or a polygon. It can be used for collision detection by adding it to a body/area, possibly with an extra transformation relative to the body/area's origin. Bodies/areas can have multiple (transformed) shapes added to them, and a single shape can be added to bodies/areas multiple times with different local transformations. - A *body* is a physical object which can be in static, kinematic, or rigid mode. Its state (such as position and velocity) can be queried and updated. A force integration callback can be set to customize the body's physics. - An *area* is a region in space which can be used to detect bodies and areas entering and exiting it. A body monitoring callback can be set to report entering/exiting body shapes, and similarly an area monitoring callback can be set. Gravity and damping can be overridden within the area by setting area parameters. - A *joint* is a constraint, either between two bodies or on one body relative to a point. Parameters such as the joint bias and the rest length of a spring joint can be adjusted. Physics objects in PhysicsServer3D may be created and manipulated independently; they do not have to be tied to nodes in the scene tree. **Note:** All the 3D physics nodes use the physics server internally. Adding a physics node to the scene tree will cause a corresponding physics object to be created in the physics server. A rigid body node registers a callback that updates the node's transform with the transform of the respective body object in the physics server (every physics update). An area node registers a callback to inform the area node about overlaps with the respective area object in the physics server. The raycast node queries the direct state of the relevant space in the physics server.

**Methods:**
- area_add_shape(area: RID, shape: RID, transform: Transform3D = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0), disabled: bool = false)
- area_attach_object_instance_id(area: RID, id: int)
- area_clear_shapes(area: RID)
- area_create() -> RID
- area_get_collision_layer(area: RID) -> int
- area_get_collision_mask(area: RID) -> int
- area_get_object_instance_id(area: RID) -> int
- area_get_param(area: RID, param: int) -> Variant
- area_get_shape(area: RID, shape_idx: int) -> RID
- area_get_shape_count(area: RID) -> int
- area_get_shape_transform(area: RID, shape_idx: int) -> Transform3D
- area_get_space(area: RID) -> RID
- area_get_transform(area: RID) -> Transform3D
- area_remove_shape(area: RID, shape_idx: int)
- area_set_area_monitor_callback(area: RID, callback: Callable)
- area_set_collision_layer(area: RID, layer: int)
- area_set_collision_mask(area: RID, mask: int)
- area_set_monitor_callback(area: RID, callback: Callable)
- area_set_monitorable(area: RID, monitorable: bool)
- area_set_param(area: RID, param: int, value: Variant)
- area_set_ray_pickable(area: RID, enable: bool)
- area_set_shape(area: RID, shape_idx: int, shape: RID)
- area_set_shape_disabled(area: RID, shape_idx: int, disabled: bool)
- area_set_shape_transform(area: RID, shape_idx: int, transform: Transform3D)
- area_set_space(area: RID, space: RID)
- area_set_transform(area: RID, transform: Transform3D)
- body_add_collision_exception(body: RID, excepted_body: RID)
- body_add_constant_central_force(body: RID, force: Vector3)
- body_add_constant_force(body: RID, force: Vector3, position: Vector3 = Vector3(0, 0, 0))
- body_add_constant_torque(body: RID, torque: Vector3)
- body_add_shape(body: RID, shape: RID, transform: Transform3D = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0), disabled: bool = false)
- body_apply_central_force(body: RID, force: Vector3)
- body_apply_central_impulse(body: RID, impulse: Vector3)
- body_apply_force(body: RID, force: Vector3, position: Vector3 = Vector3(0, 0, 0))
- body_apply_impulse(body: RID, impulse: Vector3, position: Vector3 = Vector3(0, 0, 0))
- body_apply_torque(body: RID, torque: Vector3)
- body_apply_torque_impulse(body: RID, impulse: Vector3)
- body_attach_object_instance_id(body: RID, id: int)
- body_clear_shapes(body: RID)
- body_create() -> RID
- body_get_collision_layer(body: RID) -> int
- body_get_collision_mask(body: RID) -> int
- body_get_collision_priority(body: RID) -> float
- body_get_constant_force(body: RID) -> Vector3
- body_get_constant_torque(body: RID) -> Vector3
- body_get_direct_state(body: RID) -> PhysicsDirectBodyState3D
- body_get_max_contacts_reported(body: RID) -> int
- body_get_mode(body: RID) -> int
- body_get_object_instance_id(body: RID) -> int
- body_get_param(body: RID, param: int) -> Variant
- body_get_shape(body: RID, shape_idx: int) -> RID
- body_get_shape_count(body: RID) -> int
- body_get_shape_transform(body: RID, shape_idx: int) -> Transform3D
- body_get_space(body: RID) -> RID
- body_get_state(body: RID, state: int) -> Variant
- body_is_axis_locked(body: RID, axis: int) -> bool
- body_is_continuous_collision_detection_enabled(body: RID) -> bool
- body_is_omitting_force_integration(body: RID) -> bool
- body_remove_collision_exception(body: RID, excepted_body: RID)
- body_remove_shape(body: RID, shape_idx: int)
- body_reset_mass_properties(body: RID)
- body_set_axis_lock(body: RID, axis: int, lock: bool)
- body_set_axis_velocity(body: RID, axis_velocity: Vector3)
- body_set_collision_layer(body: RID, layer: int)
- body_set_collision_mask(body: RID, mask: int)
- body_set_collision_priority(body: RID, priority: float)
- body_set_constant_force(body: RID, force: Vector3)
- body_set_constant_torque(body: RID, torque: Vector3)
- body_set_enable_continuous_collision_detection(body: RID, enable: bool)
- body_set_force_integration_callback(body: RID, callable: Callable, userdata: Variant = null)
- body_set_max_contacts_reported(body: RID, amount: int)
- body_set_mode(body: RID, mode: int)
- body_set_omit_force_integration(body: RID, enable: bool)
- body_set_param(body: RID, param: int, value: Variant)
- body_set_ray_pickable(body: RID, enable: bool)
- body_set_shape(body: RID, shape_idx: int, shape: RID)
- body_set_shape_disabled(body: RID, shape_idx: int, disabled: bool)
- body_set_shape_transform(body: RID, shape_idx: int, transform: Transform3D)
- body_set_space(body: RID, space: RID)
- body_set_state(body: RID, state: int, value: Variant)
- body_set_state_sync_callback(body: RID, callable: Callable)
- body_test_motion(body: RID, parameters: PhysicsTestMotionParameters3D, result: PhysicsTestMotionResult3D = null) -> bool
- box_shape_create() -> RID
- capsule_shape_create() -> RID
- concave_polygon_shape_create() -> RID
- cone_twist_joint_get_param(joint: RID, param: int) -> float
- cone_twist_joint_set_param(joint: RID, param: int, value: float)
- convex_polygon_shape_create() -> RID
- custom_shape_create() -> RID
- cylinder_shape_create() -> RID
- free_rid(rid: RID)
- generic_6dof_joint_get_flag(joint: RID, axis: int, flag: int) -> bool
- generic_6dof_joint_get_param(joint: RID, axis: int, param: int) -> float
- generic_6dof_joint_set_flag(joint: RID, axis: int, flag: int, enable: bool)
- generic_6dof_joint_set_param(joint: RID, axis: int, param: int, value: float)
- get_process_info(process_info: int) -> int
- heightmap_shape_create() -> RID
- hinge_joint_get_flag(joint: RID, flag: int) -> bool
- hinge_joint_get_param(joint: RID, param: int) -> float
- hinge_joint_set_flag(joint: RID, flag: int, enabled: bool)
- hinge_joint_set_param(joint: RID, param: int, value: float)
- joint_clear(joint: RID)
- joint_create() -> RID
- joint_disable_collisions_between_bodies(joint: RID, disable: bool)
- joint_get_solver_priority(joint: RID) -> int
- joint_get_type(joint: RID) -> int
- joint_is_disabled_collisions_between_bodies(joint: RID) -> bool
- joint_make_cone_twist(joint: RID, body_A: RID, local_ref_A: Transform3D, body_B: RID, local_ref_B: Transform3D)
- joint_make_generic_6dof(joint: RID, body_A: RID, local_ref_A: Transform3D, body_B: RID, local_ref_B: Transform3D)
- joint_make_hinge(joint: RID, body_A: RID, hinge_A: Transform3D, body_B: RID, hinge_B: Transform3D)
- joint_make_pin(joint: RID, body_A: RID, local_A: Vector3, body_B: RID, local_B: Vector3)
- joint_make_slider(joint: RID, body_A: RID, local_ref_A: Transform3D, body_B: RID, local_ref_B: Transform3D)
- joint_set_solver_priority(joint: RID, priority: int)
- pin_joint_get_local_a(joint: RID) -> Vector3
- pin_joint_get_local_b(joint: RID) -> Vector3
- pin_joint_get_param(joint: RID, param: int) -> float
- pin_joint_set_local_a(joint: RID, local_A: Vector3)
- pin_joint_set_local_b(joint: RID, local_B: Vector3)
- pin_joint_set_param(joint: RID, param: int, value: float)
- separation_ray_shape_create() -> RID
- set_active(active: bool)
- shape_get_data(shape: RID) -> Variant
- shape_get_margin(shape: RID) -> float
- shape_get_type(shape: RID) -> int
- shape_set_data(shape: RID, data: Variant)
- shape_set_margin(shape: RID, margin: float)
- slider_joint_get_param(joint: RID, param: int) -> float
- slider_joint_set_param(joint: RID, param: int, value: float)
- soft_body_add_collision_exception(body: RID, body_b: RID)
- soft_body_apply_central_force(body: RID, force: Vector3)
- soft_body_apply_central_impulse(body: RID, impulse: Vector3)
- soft_body_apply_point_force(body: RID, point_index: int, force: Vector3)
- soft_body_apply_point_impulse(body: RID, point_index: int, impulse: Vector3)
- soft_body_create() -> RID
- soft_body_get_bounds(body: RID) -> AABB
- soft_body_get_collision_layer(body: RID) -> int
- soft_body_get_collision_mask(body: RID) -> int
- soft_body_get_damping_coefficient(body: RID) -> float
- soft_body_get_drag_coefficient(body: RID) -> float
- soft_body_get_linear_stiffness(body: RID) -> float
- soft_body_get_point_global_position(body: RID, point_index: int) -> Vector3
- soft_body_get_pressure_coefficient(body: RID) -> float
- soft_body_get_shrinking_factor(body: RID) -> float
- soft_body_get_simulation_precision(body: RID) -> int
- soft_body_get_space(body: RID) -> RID
- soft_body_get_state(body: RID, state: int) -> Variant
- soft_body_get_total_mass(body: RID) -> float
- soft_body_is_point_pinned(body: RID, point_index: int) -> bool
- soft_body_move_point(body: RID, point_index: int, global_position: Vector3)
- soft_body_pin_point(body: RID, point_index: int, pin: bool)
- soft_body_remove_all_pinned_points(body: RID)
- soft_body_remove_collision_exception(body: RID, body_b: RID)
- soft_body_set_collision_layer(body: RID, layer: int)
- soft_body_set_collision_mask(body: RID, mask: int)
- soft_body_set_damping_coefficient(body: RID, damping_coefficient: float)
- soft_body_set_drag_coefficient(body: RID, drag_coefficient: float)
- soft_body_set_linear_stiffness(body: RID, stiffness: float)
- soft_body_set_mesh(body: RID, mesh: RID)
- soft_body_set_pressure_coefficient(body: RID, pressure_coefficient: float)
- soft_body_set_ray_pickable(body: RID, enable: bool)
- soft_body_set_shrinking_factor(body: RID, shrinking_factor: float)
- soft_body_set_simulation_precision(body: RID, simulation_precision: int)
- soft_body_set_space(body: RID, space: RID)
- soft_body_set_state(body: RID, state: int, variant: Variant)
- soft_body_set_total_mass(body: RID, total_mass: float)
- soft_body_set_transform(body: RID, transform: Transform3D)
- soft_body_update_rendering_server(body: RID, rendering_server_handler: PhysicsServer3DRenderingServerHandler)
- space_create() -> RID
- space_get_direct_state(space: RID) -> PhysicsDirectSpaceState3D
- space_get_param(space: RID, param: int) -> float
- space_is_active(space: RID) -> bool
- space_set_active(space: RID, active: bool)
- space_set_param(space: RID, param: int, value: float)
- sphere_shape_create() -> RID
- world_boundary_shape_create() -> RID

**Enums:**
**JointType:** JOINT_TYPE_PIN=0, JOINT_TYPE_HINGE=1, JOINT_TYPE_SLIDER=2, JOINT_TYPE_CONE_TWIST=3, JOINT_TYPE_6DOF=4, JOINT_TYPE_MAX=5
**PinJointParam:** PIN_JOINT_BIAS=0, PIN_JOINT_DAMPING=1, PIN_JOINT_IMPULSE_CLAMP=2
**HingeJointParam:** HINGE_JOINT_BIAS=0, HINGE_JOINT_LIMIT_UPPER=1, HINGE_JOINT_LIMIT_LOWER=2, HINGE_JOINT_LIMIT_BIAS=3, HINGE_JOINT_LIMIT_SOFTNESS=4, HINGE_JOINT_LIMIT_RELAXATION=5, HINGE_JOINT_MOTOR_TARGET_VELOCITY=6, HINGE_JOINT_MOTOR_MAX_IMPULSE=7
**HingeJointFlag:** HINGE_JOINT_FLAG_USE_LIMIT=0, HINGE_JOINT_FLAG_ENABLE_MOTOR=1
**SliderJointParam:** SLIDER_JOINT_LINEAR_LIMIT_UPPER=0, SLIDER_JOINT_LINEAR_LIMIT_LOWER=1, SLIDER_JOINT_LINEAR_LIMIT_SOFTNESS=2, SLIDER_JOINT_LINEAR_LIMIT_RESTITUTION=3, SLIDER_JOINT_LINEAR_LIMIT_DAMPING=4, SLIDER_JOINT_LINEAR_MOTION_SOFTNESS=5, SLIDER_JOINT_LINEAR_MOTION_RESTITUTION=6, SLIDER_JOINT_LINEAR_MOTION_DAMPING=7, SLIDER_JOINT_LINEAR_ORTHOGONAL_SOFTNESS=8, SLIDER_JOINT_LINEAR_ORTHOGONAL_RESTITUTION=9, ...
**ConeTwistJointParam:** CONE_TWIST_JOINT_SWING_SPAN=0, CONE_TWIST_JOINT_TWIST_SPAN=1, CONE_TWIST_JOINT_BIAS=2, CONE_TWIST_JOINT_SOFTNESS=3, CONE_TWIST_JOINT_RELAXATION=4
**G6DOFJointAxisParam:** G6DOF_JOINT_LINEAR_LOWER_LIMIT=0, G6DOF_JOINT_LINEAR_UPPER_LIMIT=1, G6DOF_JOINT_LINEAR_LIMIT_SOFTNESS=2, G6DOF_JOINT_LINEAR_RESTITUTION=3, G6DOF_JOINT_LINEAR_DAMPING=4, G6DOF_JOINT_LINEAR_MOTOR_TARGET_VELOCITY=5, G6DOF_JOINT_LINEAR_MOTOR_FORCE_LIMIT=6, G6DOF_JOINT_LINEAR_SPRING_STIFFNESS=7, G6DOF_JOINT_LINEAR_SPRING_DAMPING=8, G6DOF_JOINT_LINEAR_SPRING_EQUILIBRIUM_POINT=9, ...
**G6DOFJointAxisFlag:** G6DOF_JOINT_FLAG_ENABLE_LINEAR_LIMIT=0, G6DOF_JOINT_FLAG_ENABLE_ANGULAR_LIMIT=1, G6DOF_JOINT_FLAG_ENABLE_ANGULAR_SPRING=2, G6DOF_JOINT_FLAG_ENABLE_LINEAR_SPRING=3, G6DOF_JOINT_FLAG_ENABLE_MOTOR=4, G6DOF_JOINT_FLAG_ENABLE_LINEAR_MOTOR=5, G6DOF_JOINT_FLAG_MAX=6
**ShapeType:** SHAPE_WORLD_BOUNDARY=0, SHAPE_SEPARATION_RAY=1, SHAPE_SPHERE=2, SHAPE_BOX=3, SHAPE_CAPSULE=4, SHAPE_CYLINDER=5, SHAPE_CONVEX_POLYGON=6, SHAPE_CONCAVE_POLYGON=7, SHAPE_HEIGHTMAP=8, SHAPE_SOFT_BODY=9, ...
**AreaParameter:** AREA_PARAM_GRAVITY_OVERRIDE_MODE=0, AREA_PARAM_GRAVITY=1, AREA_PARAM_GRAVITY_VECTOR=2, AREA_PARAM_GRAVITY_IS_POINT=3, AREA_PARAM_GRAVITY_POINT_UNIT_DISTANCE=4, AREA_PARAM_LINEAR_DAMP_OVERRIDE_MODE=5, AREA_PARAM_LINEAR_DAMP=6, AREA_PARAM_ANGULAR_DAMP_OVERRIDE_MODE=7, AREA_PARAM_ANGULAR_DAMP=8, AREA_PARAM_PRIORITY=9, ...
**AreaSpaceOverrideMode:** AREA_SPACE_OVERRIDE_DISABLED=0, AREA_SPACE_OVERRIDE_COMBINE=1, AREA_SPACE_OVERRIDE_COMBINE_REPLACE=2, AREA_SPACE_OVERRIDE_REPLACE=3, AREA_SPACE_OVERRIDE_REPLACE_COMBINE=4
**BodyMode:** BODY_MODE_STATIC=0, BODY_MODE_KINEMATIC=1, BODY_MODE_RIGID=2, BODY_MODE_RIGID_LINEAR=3
**BodyParameter:** BODY_PARAM_BOUNCE=0, BODY_PARAM_FRICTION=1, BODY_PARAM_MASS=2, BODY_PARAM_INERTIA=3, BODY_PARAM_CENTER_OF_MASS=4, BODY_PARAM_GRAVITY_SCALE=5, BODY_PARAM_LINEAR_DAMP_MODE=6, BODY_PARAM_ANGULAR_DAMP_MODE=7, BODY_PARAM_LINEAR_DAMP=8, BODY_PARAM_ANGULAR_DAMP=9, ...
**BodyDampMode:** BODY_DAMP_MODE_COMBINE=0, BODY_DAMP_MODE_REPLACE=1
**BodyState:** BODY_STATE_TRANSFORM=0, BODY_STATE_LINEAR_VELOCITY=1, BODY_STATE_ANGULAR_VELOCITY=2, BODY_STATE_SLEEPING=3, BODY_STATE_CAN_SLEEP=4
**AreaBodyStatus:** AREA_BODY_ADDED=0, AREA_BODY_REMOVED=1
**ProcessInfo:** INFO_ACTIVE_OBJECTS=0, INFO_COLLISION_PAIRS=1, INFO_ISLAND_COUNT=2
**SpaceParameter:** SPACE_PARAM_CONTACT_RECYCLE_RADIUS=0, SPACE_PARAM_CONTACT_MAX_SEPARATION=1, SPACE_PARAM_CONTACT_MAX_ALLOWED_PENETRATION=2, SPACE_PARAM_CONTACT_DEFAULT_BIAS=3, SPACE_PARAM_BODY_LINEAR_VELOCITY_SLEEP_THRESHOLD=4, SPACE_PARAM_BODY_ANGULAR_VELOCITY_SLEEP_THRESHOLD=5, SPACE_PARAM_BODY_TIME_TO_SLEEP=6, SPACE_PARAM_SOLVER_ITERATIONS=7
**BodyAxis:** BODY_AXIS_LINEAR_X=1, BODY_AXIS_LINEAR_Y=2, BODY_AXIS_LINEAR_Z=4, BODY_AXIS_ANGULAR_X=8, BODY_AXIS_ANGULAR_Y=16, BODY_AXIS_ANGULAR_Z=32

