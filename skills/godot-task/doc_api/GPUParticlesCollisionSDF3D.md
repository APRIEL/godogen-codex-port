## GPUParticlesCollisionSDF3D <- GPUParticlesCollision3D

A baked signed distance field 3D particle collision shape affecting GPUParticles3D nodes. Signed distance fields (SDF) allow for efficiently representing approximate collision shapes for convex and concave objects of any shape. This is more flexible than GPUParticlesCollisionHeightField3D, but it requires a baking step. **Baking:** The signed distance field texture can be baked by selecting the GPUParticlesCollisionSDF3D node in the editor, then clicking **Bake SDF** at the top of the 3D viewport. Any *visible* MeshInstance3Ds within the `size` will be taken into account for baking, regardless of their `GeometryInstance3D.gi_mode`. **Note:** Baking a GPUParticlesCollisionSDF3D's `texture` is only possible within the editor, as there is no bake method exposed for use in exported projects. However, it's still possible to load pre-baked Texture3Ds into its `texture` property in an exported project. **Note:** `ParticleProcessMaterial.collision_mode` must be `ParticleProcessMaterial.COLLISION_RIGID` or `ParticleProcessMaterial.COLLISION_HIDE_ON_CONTACT` on the GPUParticles3D's process material for collision to work. **Note:** Particle collision only affects GPUParticles3D, not CPUParticles3D.

**Props:**
- bake_mask: int = 4294967295
- resolution: int (GPUParticlesCollisionSDF3D.Resolution) = 2
- size: Vector3 = Vector3(2, 2, 2)
- texture: Texture3D
- thickness: float = 1.0

**Methods:**
- get_bake_mask_value(layer_number: int) -> bool
- set_bake_mask_value(layer_number: int, value: bool)

**Enums:**
**Resolution:** RESOLUTION_16=0, RESOLUTION_32=1, RESOLUTION_64=2, RESOLUTION_128=3, RESOLUTION_256=4, RESOLUTION_512=5, RESOLUTION_MAX=6

