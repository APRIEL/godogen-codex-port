## XRVRS <- Object

This class is used by various XR interfaces to generate VRS textures that can be used to speed up rendering.

**Props:**
- vrs_min_radius: float = 20.0
- vrs_render_region: Rect2i = Rect2i(0, 0, 0, 0)
- vrs_strength: float = 1.0

**Methods:**
- make_vrs_texture(target_size: Vector2, eye_foci: PackedVector2Array) -> RID

