## XRInterfaceExtension <- XRInterface

External XR interface plugins should inherit from this class.

**Methods:**
- add_blit(render_target: RID, src_rect: Rect2, dst_rect: Rect2i, use_layer: bool, layer: int, apply_lens_distortion: bool, eye_center: Vector2, k1: float, k2: float, upscale: float, aspect_ratio: float)
- get_color_texture() -> RID
- get_depth_texture() -> RID
- get_render_target_texture(render_target: RID) -> RID
- get_velocity_texture() -> RID

