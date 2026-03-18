## GPUParticles2D <- Node2D

2D particle node used to create a variety of particle systems and effects. GPUParticles2D features an emitter that generates some number of particles at a given rate. Use the `process_material` property to add a ParticleProcessMaterial to configure particle appearance and behavior. Alternatively, you can add a ShaderMaterial which will be applied to all particles. 2D particles can optionally collide with LightOccluder2D, but they don't collide with PhysicsBody2D nodes.

**Props:**
- amount: int = 8
- amount_ratio: float = 1.0
- collision_base_size: float = 1.0
- draw_order: int (GPUParticles2D.DrawOrder) = 1
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
- texture: Texture2D
- trail_enabled: bool = false
- trail_lifetime: float = 0.3
- trail_section_subdivisions: int = 4
- trail_sections: int = 8
- use_fixed_seed: bool = false
- visibility_rect: Rect2 = Rect2(-100, -100, 200, 200)

**Methods:**
- capture_rect() -> Rect2
- convert_from_particles(particles: Node)
- emit_particle(xform: Transform2D, velocity: Vector2, color: Color, custom: Color, flags: int)
- request_particles_process(process_time: float)
- restart(keep_seed: bool = false)

**Signals:**
- finished

**Enums:**
**DrawOrder:** DRAW_ORDER_INDEX=0, DRAW_ORDER_LIFETIME=1, DRAW_ORDER_REVERSE_LIFETIME=2
**EmitFlags:** EMIT_FLAG_POSITION=1, EMIT_FLAG_ROTATION_SCALE=2, EMIT_FLAG_VELOCITY=4, EMIT_FLAG_COLOR=8, EMIT_FLAG_CUSTOM=16

