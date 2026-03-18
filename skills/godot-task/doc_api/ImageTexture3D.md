## ImageTexture3D <- Texture3D

ImageTexture3D is a 3-dimensional ImageTexture that has a width, height, and depth. See also ImageTextureLayered. 3D textures are typically used to store density maps for FogMaterial, color correction LUTs for Environment, vector fields for GPUParticlesAttractorVectorField3D and collision maps for GPUParticlesCollisionSDF3D. 3D textures can also be used in custom shaders.

**Methods:**
- create(format: int, width: int, height: int, depth: int, use_mipmaps: bool, data: Image[]) -> int
- update(data: Image[])

