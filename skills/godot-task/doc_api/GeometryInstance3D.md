## GeometryInstance3D <- VisualInstance3D

Base node for geometry-based visual instances. Shares some common functionality like visibility and custom materials.

**Props:**
- cast_shadow: int (GeometryInstance3D.ShadowCastingSetting) = 1
- custom_aabb: AABB = AABB(0, 0, 0, 0, 0, 0)
- extra_cull_margin: float = 0.0
- gi_lightmap_scale: int (GeometryInstance3D.LightmapScale) = 0
- gi_lightmap_texel_scale: float = 1.0
- gi_mode: int (GeometryInstance3D.GIMode) = 1
- ignore_occlusion_culling: bool = false
- lod_bias: float = 1.0
- material_overlay: Material
- material_override: Material
- transparency: float = 0.0
- visibility_range_begin: float = 0.0
- visibility_range_begin_margin: float = 0.0
- visibility_range_end: float = 0.0
- visibility_range_end_margin: float = 0.0
- visibility_range_fade_mode: int (GeometryInstance3D.VisibilityRangeFadeMode) = 0

**Methods:**
- get_instance_shader_parameter(name: StringName) -> Variant
- set_instance_shader_parameter(name: StringName, value: Variant)

**Enums:**
**ShadowCastingSetting:** SHADOW_CASTING_SETTING_OFF=0, SHADOW_CASTING_SETTING_ON=1, SHADOW_CASTING_SETTING_DOUBLE_SIDED=2, SHADOW_CASTING_SETTING_SHADOWS_ONLY=3
**GIMode:** GI_MODE_DISABLED=0, GI_MODE_STATIC=1, GI_MODE_DYNAMIC=2
**LightmapScale:** LIGHTMAP_SCALE_1X=0, LIGHTMAP_SCALE_2X=1, LIGHTMAP_SCALE_4X=2, LIGHTMAP_SCALE_8X=3, LIGHTMAP_SCALE_MAX=4
**VisibilityRangeFadeMode:** VISIBILITY_RANGE_FADE_DISABLED=0, VISIBILITY_RANGE_FADE_SELF=1, VISIBILITY_RANGE_FADE_DEPENDENCIES=2

