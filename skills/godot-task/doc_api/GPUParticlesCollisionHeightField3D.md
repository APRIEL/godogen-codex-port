## GPUParticlesCollisionHeightField3D <- GPUParticlesCollision3D

A real-time heightmap-shaped 3D particle collision shape affecting GPUParticles3D nodes. Heightmap shapes allow for efficiently representing collisions for convex and concave objects with a single "floor" (such as terrain). This is less flexible than GPUParticlesCollisionSDF3D, but it doesn't require a baking step. GPUParticlesCollisionHeightField3D can also be regenerated in real-time when it is moved, when the camera moves, or even continuously. This makes GPUParticlesCollisionHeightField3D a good choice for weather effects such as rain and snow and games with highly dynamic geometry. However, this class is limited since heightmaps cannot represent overhangs (e.g. indoors or caves). **Note:** `ParticleProcessMaterial.collision_mode` must be `true` on the GPUParticles3D's process material for collision to work. **Note:** Particle collision only affects GPUParticles3D, not CPUParticles3D.

**Props:**
- follow_camera_enabled: bool = false
- heightfield_mask: int = 1048575
- resolution: int (GPUParticlesCollisionHeightField3D.Resolution) = 2
- size: Vector3 = Vector3(2, 2, 2)
- update_mode: int (GPUParticlesCollisionHeightField3D.UpdateMode) = 0

**Methods:**
- get_heightfield_mask_value(layer_number: int) -> bool
- set_heightfield_mask_value(layer_number: int, value: bool)

**Enums:**
**Resolution:** RESOLUTION_256=0, RESOLUTION_512=1, RESOLUTION_1024=2, RESOLUTION_2048=3, RESOLUTION_4096=4, RESOLUTION_8192=5, RESOLUTION_MAX=6
**UpdateMode:** UPDATE_MODE_WHEN_MOVED=0, UPDATE_MODE_ALWAYS=1

