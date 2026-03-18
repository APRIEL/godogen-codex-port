## GPUParticles3D <- GeometryInstance3D

3D particle node used to create a variety of particle systems and effects. GPUParticles3D features an emitter that generates some number of particles at a given rate. Use `process_material` to add a ParticleProcessMaterial to configure particle appearance and behavior. Alternatively, you can add a ShaderMaterial which will be applied to all particles.

**Props:**
- amount: int = 8
- amount_ratio: float = 1.0
- collision_base_size: float = 0.01
- draw_order: int (GPUParticles3D.DrawOrder) = 0
- draw_pass_1: Mesh
- draw_pass_2: Mesh
- draw_pass_3: Mesh
- draw_pass_4: Mesh
- draw_passes: int = 1
- draw_skin: Skin
- emitting: bool = true
- explosiveness: float = 0.0
- fixed_fps: int = 30
- fract_delta: bool = true
- interp_to_end: float = 0.0
- interpolate: bool = true
- lifetime: float = 1.0
- local_coords: bool = false
- one_shot: bool = false
- preprocess: float = 0.0
- process_material: Material
- randomness: float = 0.0
- seed: int = 0
- speed_scale: float = 1.0
- sub_emitter: NodePath = NodePath("")
- trail_enabled: bool = false
- trail_lifetime: float = 0.3
- transform_align: int (GPUParticles3D.TransformAlign) = 0
- use_fixed_seed: bool = false
- visibility_aabb: AABB = AABB(-4, -4, -4, 8, 8, 8)

**Methods:**
- capture_aabb() -> AABB
- convert_from_particles(particles: Node)
- emit_particle(xform: Transform3D, velocity: Vector3, color: Color, custom: Color, flags: int)
- get_draw_pass_mesh(pass: int) -> Mesh
- request_particles_process(process_time: float)
- restart(keep_seed: bool = false)
- set_draw_pass_mesh(pass: int, mesh: Mesh)

**Signals:**
- finished

**Enums:**
**DrawOrder:** DRAW_ORDER_INDEX=0, DRAW_ORDER_LIFETIME=1, DRAW_ORDER_REVERSE_LIFETIME=2, DRAW_ORDER_VIEW_DEPTH=3
**EmitFlags:** EMIT_FLAG_POSITION=1, EMIT_FLAG_ROTATION_SCALE=2, EMIT_FLAG_VELOCITY=4, EMIT_FLAG_COLOR=8, EMIT_FLAG_CUSTOM=16
**Constants:** MAX_DRAW_PASSES=4
**TransformAlign:** TRANSFORM_ALIGN_DISABLED=0, TRANSFORM_ALIGN_Z_BILLBOARD=1, TRANSFORM_ALIGN_Y_TO_VELOCITY=2, TRANSFORM_ALIGN_Z_BILLBOARD_Y_TO_VELOCITY=3

