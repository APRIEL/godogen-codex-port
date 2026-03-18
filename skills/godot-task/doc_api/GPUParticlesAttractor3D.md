## GPUParticlesAttractor3D <- VisualInstance3D

Particle attractors can be used to attract particles towards the attractor's origin, or to push them away from the attractor's origin. Particle attractors work in real-time and can be moved, rotated and scaled during gameplay. Unlike collision shapes, non-uniform scaling of attractors is also supported. Attractors can be temporarily disabled by hiding them, or by setting their `strength` to `0.0`. **Note:** Particle attractors only affect GPUParticles3D, not CPUParticles3D.

**Props:**
- attenuation: float = 1.0
- cull_mask: int = 4294967295
- directionality: float = 0.0
- strength: float = 1.0

