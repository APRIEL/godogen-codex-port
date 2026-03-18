## GPUParticlesCollision3D <- VisualInstance3D

Particle collision shapes can be used to make particles stop or bounce against them. Particle collision shapes work in real-time and can be moved, rotated and scaled during gameplay. Unlike attractors, non-uniform scaling of collision shapes is *not* supported. Particle collision shapes can be temporarily disabled by hiding them. **Note:** `ParticleProcessMaterial.collision_mode` must be `ParticleProcessMaterial.COLLISION_RIGID` or `ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT` on the GPUParticles3D's process material for collision to work. **Note:** Particle collision only affects GPUParticles3D, not CPUParticles3D. **Note:** Particles pushed by a collider that is being moved will not be interpolated, which can result in visible stuttering. This can be alleviated by setting `GPUParticles3D.fixed_fps` to `0` or a value that matches or exceeds the target framerate.

**Props:**
- cull_mask: int = 4294967295

