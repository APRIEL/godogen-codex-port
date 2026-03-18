## RenderSceneBuffersConfiguration <- RefCounted

This configuration object is created and populated by the render engine on a viewport change and used to (re)configure a RenderSceneBuffers object.

**Props:**
- anisotropic_filtering_level: int (RenderingServer.ViewportAnisotropicFiltering) = 2
- fsr_sharpness: float = 0.0
- internal_size: Vector2i = Vector2i(0, 0)
- msaa_3d: int (RenderingServer.ViewportMSAA) = 0
- render_target: RID = RID()
- scaling_3d_mode: int (RenderingServer.ViewportScaling3DMode) = 255
- screen_space_aa: int (RenderingServer.ViewportScreenSpaceAA) = 0
- target_size: Vector2i = Vector2i(0, 0)
- texture_mipmap_bias: float = 0.0
- view_count: int = 1

