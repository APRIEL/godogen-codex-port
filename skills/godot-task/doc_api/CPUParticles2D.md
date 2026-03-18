## CPUParticles2D <- Node2D

CPU-based 2D particle node used to create a variety of particle systems and effects. See also GPUParticles2D, which provides the same functionality with hardware acceleration, but may not run on older devices.

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
- direction: Vector2 = Vector2(1, 0)
- draw_order: int (CPUParticles2D.DrawOrder) = 0
- emission_colors: PackedColorArray
- emission_normals: PackedVector2Array
- emission_points: PackedVector2Array
- emission_rect_extents: Vector2
- emission_ring_inner_radius: float
- emission_ring_radius: float
- emission_shape: int (CPUParticles2D.EmissionShape) = 0
- emission_sphere_radius: float
- emitting: bool = true
- explosiveness: float = 0.0
- fixed_fps: int = 0
- fract_delta: bool = true
- gravity: Vector2 = Vector2(0, 980)
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
- one_shot: bool = false
- orbit_velocity_curve: Curve
- orbit_velocity_max: float = 0.0
- orbit_velocity_min: float = 0.0
- particle_flag_align_y: bool = false
- physics_interpolation_mode: int (Node.PhysicsInterpolationMode) = 2
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
- seed: int = 0
- speed_scale: float = 1.0
- split_scale: bool = false
- spread: float = 45.0
- tangential_accel_curve: Curve
- tangential_accel_max: float = 0.0
- tangential_accel_min: float = 0.0
- texture: Texture2D
- use_fixed_seed: bool = false

**Methods:**
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
**DrawOrder:** DRAW_ORDER_INDEX=0, DRAW_ORDER_LIFETIME=1
**Parameter:** PARAM_INITIAL_LINEAR_VELOCITY=0, PARAM_ANGULAR_VELOCITY=1, PARAM_ORBIT_VELOCITY=2, PARAM_LINEAR_ACCEL=3, PARAM_RADIAL_ACCEL=4, PARAM_TANGENTIAL_ACCEL=5, PARAM_DAMPING=6, PARAM_ANGLE=7, PARAM_SCALE=8, PARAM_HUE_VARIATION=9, ...
**ParticleFlags:** PARTICLE_FLAG_ALIGN_Y_TO_VELOCITY=0, PARTICLE_FLAG_ROTATE_Y=1, PARTICLE_FLAG_DISABLE_Z=2, PARTICLE_FLAG_MAX=3
**EmissionShape:** EMISSION_SHAPE_POINT=0, EMISSION_SHAPE_SPHERE=1, EMISSION_SHAPE_SPHERE_SURFACE=2, EMISSION_SHAPE_RECTANGLE=3, EMISSION_SHAPE_POINTS=4, EMISSION_SHAPE_DIRECTED_POINTS=5, EMISSION_SHAPE_RING=6, EMISSION_SHAPE_MAX=7

