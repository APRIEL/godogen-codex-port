## ParticleProcessMaterial <- Material

ParticleProcessMaterial defines particle properties and behavior. It is used in the `process_material` of the GPUParticles2D and GPUParticles3D nodes. Some of this material's properties are applied to each particle when emitted, while others can have a CurveTexture or a GradientTexture1D applied to vary numerical or color values over the lifetime of the particle.

**Props:**
- alpha_curve: Texture2D
- angle_curve: Texture2D
- angle_max: float = 0.0
- angle_min: float = 0.0
- angular_velocity_curve: Texture2D
- angular_velocity_max: float = 0.0
- angular_velocity_min: float = 0.0
- anim_offset_curve: Texture2D
- anim_offset_max: float = 0.0
- anim_offset_min: float = 0.0
- anim_speed_curve: Texture2D
- anim_speed_max: float = 0.0
- anim_speed_min: float = 0.0
- attractor_interaction_enabled: bool = true
- collision_bounce: float
- collision_friction: float
- collision_mode: int (ParticleProcessMaterial.CollisionMode) = 0
- collision_use_scale: bool = false
- color: Color = Color(1, 1, 1, 1)
- color_initial_ramp: Texture2D
- color_ramp: Texture2D
- damping_curve: Texture2D
- damping_max: float = 0.0
- damping_min: float = 0.0
- direction: Vector3 = Vector3(1, 0, 0)
- directional_velocity_curve: Texture2D
- directional_velocity_max: float
- directional_velocity_min: float
- emission_box_extents: Vector3
- emission_color_texture: Texture2D
- emission_curve: Texture2D
- emission_normal_texture: Texture2D
- emission_point_count: int
- emission_point_texture: Texture2D
- emission_ring_axis: Vector3
- emission_ring_cone_angle: float
- emission_ring_height: float
- emission_ring_inner_radius: float
- emission_ring_radius: float
- emission_shape: int (ParticleProcessMaterial.EmissionShape) = 0
- emission_shape_offset: Vector3 = Vector3(0, 0, 0)
- emission_shape_scale: Vector3 = Vector3(1, 1, 1)
- emission_sphere_radius: float
- flatness: float = 0.0
- gravity: Vector3 = Vector3(0, -9.8, 0)
- hue_variation_curve: Texture2D
- hue_variation_max: float = 0.0
- hue_variation_min: float = 0.0
- inherit_velocity_ratio: float = 0.0
- initial_velocity_max: float = 0.0
- initial_velocity_min: float = 0.0
- lifetime_randomness: float = 0.0
- linear_accel_curve: Texture2D
- linear_accel_max: float = 0.0
- linear_accel_min: float = 0.0
- orbit_velocity_curve: Texture2D
- orbit_velocity_max: float = 0.0
- orbit_velocity_min: float = 0.0
- particle_flag_align_y: bool = false
- particle_flag_damping_as_friction: bool = false
- particle_flag_disable_z: bool = false
- particle_flag_rotate_y: bool = false
- radial_accel_curve: Texture2D
- radial_accel_max: float = 0.0
- radial_accel_min: float = 0.0
- radial_velocity_curve: Texture2D
- radial_velocity_max: float = 0.0
- radial_velocity_min: float = 0.0
- scale_curve: Texture2D
- scale_max: float = 1.0
- scale_min: float = 1.0
- scale_over_velocity_curve: Texture2D
- scale_over_velocity_max: float = 0.0
- scale_over_velocity_min: float = 0.0
- spread: float = 45.0
- sub_emitter_amount_at_collision: int
- sub_emitter_amount_at_end: int
- sub_emitter_amount_at_start: int
- sub_emitter_frequency: float
- sub_emitter_keep_velocity: bool = false
- sub_emitter_mode: int (ParticleProcessMaterial.SubEmitterMode) = 0
- tangential_accel_curve: Texture2D
- tangential_accel_max: float = 0.0
- tangential_accel_min: float = 0.0
- turbulence_enabled: bool = false
- turbulence_influence_max: float = 0.1
- turbulence_influence_min: float = 0.1
- turbulence_influence_over_life: Texture2D
- turbulence_initial_displacement_max: float = 0.0
- turbulence_initial_displacement_min: float = 0.0
- turbulence_noise_scale: float = 9.0
- turbulence_noise_speed: Vector3 = Vector3(0, 0, 0)
- turbulence_noise_speed_random: float = 0.2
- turbulence_noise_strength: float = 1.0
- velocity_limit_curve: Texture2D
- velocity_pivot: Vector3 = Vector3(0, 0, 0)

**Methods:**
- get_param(param: int) -> Vector2
- get_param_max(param: int) -> float
- get_param_min(param: int) -> float
- get_param_texture(param: int) -> Texture2D
- get_particle_flag(particle_flag: int) -> bool
- set_param(param: int, value: Vector2)
- set_param_max(param: int, value: float)
- set_param_min(param: int, value: float)
- set_param_texture(param: int, texture: Texture2D)
- set_particle_flag(particle_flag: int, enable: bool)

**Signals:**
- emission_shape_changed

**Enums:**
**Parameter:** PARAM_INITIAL_LINEAR_VELOCITY=0, PARAM_ANGULAR_VELOCITY=1, PARAM_ORBIT_VELOCITY=2, PARAM_LINEAR_ACCEL=3, PARAM_RADIAL_ACCEL=4, PARAM_TANGENTIAL_ACCEL=5, PARAM_DAMPING=6, PARAM_ANGLE=7, PARAM_SCALE=8, PARAM_HUE_VARIATION=9, ...
**ParticleFlags:** PARTICLE_FLAG_ALIGN_Y_TO_VELOCITY=0, PARTICLE_FLAG_ROTATE_Y=1, PARTICLE_FLAG_DISABLE_Z=2, PARTICLE_FLAG_DAMPING_AS_FRICTION=3, PARTICLE_FLAG_MAX=4
**EmissionShape:** EMISSION_SHAPE_POINT=0, EMISSION_SHAPE_SPHERE=1, EMISSION_SHAPE_SPHERE_SURFACE=2, EMISSION_SHAPE_BOX=3, EMISSION_SHAPE_POINTS=4, EMISSION_SHAPE_DIRECTED_POINTS=5, EMISSION_SHAPE_RING=6, EMISSION_SHAPE_MAX=7
**SubEmitterMode:** SUB_EMITTER_DISABLED=0, SUB_EMITTER_CONSTANT=1, SUB_EMITTER_AT_END=2, SUB_EMITTER_AT_COLLISION=3, SUB_EMITTER_AT_START=4, SUB_EMITTER_MAX=5
**CollisionMode:** COLLISION_DISABLED=0, COLLISION_RIGID=1, COLLISION_HIDE_ON_CONTACT=2, COLLISION_MAX=3

