## MeshTexture <- Texture2D

Simple texture that uses a mesh to draw itself. It's limited because flags can't be changed and region drawing is not supported.

**Props:**
- base_texture: Texture2D
- image_size: Vector2 = Vector2(0, 0)
- mesh: Mesh
- resource_local_to_scene: bool = false

