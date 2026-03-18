## GPUParticlesAttractorVectorField3D <- GPUParticlesAttractor3D

A box-shaped attractor with varying directions and strengths defined in it that influences particles from GPUParticles3D nodes. Unlike GPUParticlesAttractorBox3D, GPUParticlesAttractorVectorField3D uses a `texture` to affect attraction strength within the box. This can be used to create complex attraction scenarios where particles travel in different directions depending on their location. This can be useful for weather effects such as sandstorms. Particle attractors work in real-time and can be moved, rotated and scaled during gameplay. Unlike collision shapes, non-uniform scaling of attractors is also supported. **Note:** Particle attractors only affect GPUParticles3D, not CPUParticles3D.

**Props:**
- size: Vector3 = Vector3(2, 2, 2)
- texture: Texture3D

