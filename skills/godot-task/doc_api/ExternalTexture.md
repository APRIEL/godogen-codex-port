## ExternalTexture <- Texture2D

Displays the content of an external buffer provided by the platform. Requires the extension (OpenGL) or extension (Vulkan). **Note:** This is currently only supported in Android builds.

**Props:**
- resource_local_to_scene: bool = false
- size: Vector2 = Vector2(256, 256)

**Methods:**
- get_external_texture_id() -> int
- set_external_buffer_id(external_buffer_id: int)

