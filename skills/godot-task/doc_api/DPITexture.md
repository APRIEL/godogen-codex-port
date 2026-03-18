## DPITexture <- Texture2D

An automatically scalable Texture2D based on an SVG image. DPITextures are used to automatically re-rasterize icons and other texture based UI theme elements to match viewport scale and font oversampling. See also `ProjectSettings.display/window/stretch/mode` ("canvas_items" mode) and `Viewport.oversampling_override`.

**Props:**
- base_scale: float = 1.0
- color_map: Dictionary = {}
- resource_local_to_scene: bool = false
- saturation: float = 1.0

**Methods:**
- create_from_string(source: String, scale: float = 1.0, saturation: float = 1.0, color_map: Dictionary = {}) -> DPITexture
- get_scaled_rid() -> RID
- get_source() -> String
- set_size_override(size: Vector2i)
- set_source(source: String)

