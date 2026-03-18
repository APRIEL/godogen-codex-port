## CPUParticles3D <- GeometryInstance3D

CPU-based 3D particle node used to create a variety of particle systems and effects. See also GPUParticles3D, which provides the same functionality with hardware acceleration, but may not run on older devices.

**Props:**
- amount: int = 8
- angle_curve: Curve
- angle_max: float = 0.0
- angle_min: float = 0.0
- angular_velocity_curve: Curve
- angular_velocity_max: float = 0.0
- angular_velocity_min: float = 0.0
- anim_offset_curve: Curve
- anim_offset_max: float = 0.0
- anim_offset_min: float = 0.0
- anim_speed_curve: Curve
- anim_speed_max: float = 0.0
- anim_speed_min: float = 0.0
- color: Color = Color(1, 1, 1, 1)
- color_initial_ramp: Gradient
- color_ramp: Gradient
- damping_curve: Curve
- damping_max: float = 0.0
- damping_min: float = 0.0
- direction: Vector3 = Vector3(1, 0, 0)
- draw_order: int (CPUParticles3D.DrawOrder) = 0
- emission_box_extents: Vector3
- emission_colors: PackedColorArray = PackedColorArray()
- emission_normals: PackedVector3Array
- emission_points: PackedVector3Array
- emission_ring_axis: Vector3
- emission_ring_cone_angle: float
- emission_ring_height: float
- emission_ring_inner_radius: float
- emission_ring_radius: float
- emission_shape: int (CPUParticles3D.EmissionShape) = 0
- emission_sphere_radius: float
- emitting: bool = true
- explosiveness: float = 0.0
- fixed_fps: int = 0
- flatness: float = 0.0
- fract_delta: bool = true
- gravity: Vector3 = Vector3(0, -9.8, 0)
- hue_variation_curve: Curve
- hue_variation_max: float = 0.0
- hue_variation_min: float = 0.0
- initial_velocity_max: float = 0.0
- initial_velocity_min: float = 0.0
- lifetime: float = 1.0
- lifetime_randomness: float = 0.0
- linear_accel_curve: Curve
- linear_accel_max: float = 0.0
- linear_accel_min: float = 0.0
- local_coords: bool = false
- mesh: Mesh
- one_shot: bool = false
- orbit_velocity_curve: Curve
- orbit_velocity_max: float
- orbit_velocity_min: float
- particle_flag_align_y: bool = false
- particle_flag_disable_z: bool = false
- particle_flag_rotate_y: bool = false
- preprocess: float = 0.0
- radial_accel_curve: Curve
- radial_accel_max: float = 0.0
- radial_accel_min: float = 0.0
- randomness: float = 0.0
- scale_amount_curve: Curve
- scale_amount_max: float = 1.0
- scale_amount_min: float = 1.0
- scale_curve_x: Curve
- scale_curve_y: Curve
- scale_curve_z: Curve
- seed: int = 0
- speed_scale: float = 1.0
- split_scale: bool = false
- spread: float = 45.0
- tangential_accel_curve: Curve
- tangential_accel_max: float = 0.0
- tangential_accel_min: float = 0.0
- use_fixed_seed: bool = false
- visibility_aabb: AABB = AABB(0, 0, 0, 0, 0, 0)

**Methods:**
- capture_aabb() -> AABB
- convert_from_particles(particles: Node)
- get_param_curve(param: int) -> Curve
- get_param_max(param: int) -> float
- get_param_min(param: int) -> float
- get_particle_flag(particle_flag: int) -> bool
- request_particles_process(process_time: float)
- restart(keep_seed: bool = false)
- set_param_curve(param: int, curve: Curve)
- set_param_max(param: int, value: float)
- set_param_min(param: int, value: float)
- set_particle_flag(particle_flag: int, enable: bool)

**Signals:**
- finished

**Enums:**
**DrawOrder:** DRAW_ORDER_INDEX=0, DRAW_ORDER_LIFETIME=1, DRAW_ORDER_VIEW_DEPTH=2
**Parameter:** PARAM_INITIAL_LINEAR_VELOCITY=0, PARAM_ANGULAR_VELOCITY=1, PARAM_ORBIT_VELOCITY=2, PARAM_LINEAR_ACCEL=3, PARAM_RADIAL_ACCEL=4, PARAM_TANGENTIAL_ACCEL=5, PARAM_DAMPING=6, PARAM_ANGLE=7, PARAM_SCALE=8, PARAM_HUE_VARIATION=9, ...
**ParticleFlags:** PARTICLE_FLAG_ALIGN_Y_TO_VELOCITY=0, PARTICLE_FLAG_ROTATE_Y=1, PARTICLE_FLAG_DISABLE_Z=2, PARTICLE_FLAG_MAX=3
**EmissionShape:** EMISSION_SHAPE_POINT=0, EMISSION_SHAPE_SPHERE=1, EMISSION_SHAPE_SPHERE_SURFACE=2, EMISSION_SHAPE_BOX=3, EMISSION_SHAPE_POINTS=4, EMISSION_SHAPE_DIRECTED_POINTS=5, EMISSION_SHAPE_RING=6, EMISSION_SHAPE_MAX=7

