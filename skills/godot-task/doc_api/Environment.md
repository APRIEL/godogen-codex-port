## Environment <- Resource

Resource for environment nodes (like WorldEnvironment) that define multiple environment operations (such as background Sky or Color, ambient light, fog, depth-of-field...). These parameters affect the final render of the scene. The order of these operations is: - Depth of Field Blur - Auto Exposure - Glow - Tonemap - Adjustments

**Props:**
- adjustment_brightness: float = 1.0
- adjustment_color_correction: Texture
- adjustment_contrast: float = 1.0
- adjustment_enabled: bool = false
- adjustment_saturation: float = 1.0
- ambient_light_color: Color = Color(0, 0, 0, 1)
- ambient_light_energy: float = 1.0
- ambient_light_sky_contribution: float = 1.0
- ambient_light_source: int (Environment.AmbientSource) = 0
- background_camera_feed_id: int = 1
- background_canvas_max_layer: int = 0
- background_color: Color = Color(0, 0, 0, 1)
- background_energy_multiplier: float = 1.0
- background_intensity: float = 30000.0
- background_mode: int (Environment.BGMode) = 0
- fog_aerial_perspective: float = 0.0
- fog_density: float = 0.01
- fog_depth_begin: float = 10.0
- fog_depth_curve: float = 1.0
- fog_depth_end: float = 100.0
- fog_enabled: bool = false
- fog_height: float = 0.0
- fog_height_density: float = 0.0
- fog_light_color: Color = Color(0.518, 0.553, 0.608, 1)
- fog_light_energy: float = 1.0
- fog_mode: int (Environment.FogMode) = 0
- fog_sky_affect: float = 1.0
- fog_sun_scatter: float = 0.0
- glow_blend_mode: int (Environment.GlowBlendMode) = 1
- glow_bloom: float = 0.0
- glow_enabled: bool = false
- glow_hdr_luminance_cap: float = 12.0
- glow_hdr_scale: float = 2.0
- glow_hdr_threshold: float = 1.0
- glow_intensity: float = 0.3
- glow_levels/1: float = 0.0
- glow_levels/2: float = 0.8
- glow_levels/3: float = 0.4
- glow_levels/4: float = 0.1
- glow_levels/5: float = 0.0
- glow_levels/6: float = 0.0
- glow_levels/7: float = 0.0
- glow_map: Texture
- glow_map_strength: float = 0.8
- glow_mix: float = 0.05
- glow_normalized: bool = false
- glow_strength: float = 1.0
- reflected_light_source: int (Environment.ReflectionSource) = 0
- sdfgi_bounce_feedback: float = 0.5
- sdfgi_cascade0_distance: float = 12.8
- sdfgi_cascades: int = 4
- sdfgi_enabled: bool = false
- sdfgi_energy: float = 1.0
- sdfgi_max_distance: float = 204.8
- sdfgi_min_cell_size: float = 0.2
- sdfgi_normal_bias: float = 1.1
- sdfgi_probe_bias: float = 1.1
- sdfgi_read_sky_light: bool = true
- sdfgi_use_occlusion: bool = false
- sdfgi_y_scale: int (Environment.SDFGIYScale) = 1
- sky: Sky
- sky_custom_fov: float = 0.0
- sky_rotation: Vector3 = Vector3(0, 0, 0)
- ssao_ao_channel_affect: float = 0.0
- ssao_detail: float = 0.5
- ssao_enabled: bool = false
- ssao_horizon: float = 0.06
- ssao_intensity: float = 2.0
- ssao_light_affect: float = 0.0
- ssao_power: float = 1.5
- ssao_radius: float = 1.0
- ssao_sharpness: float = 0.98
- ssil_enabled: bool = false
- ssil_intensity: float = 1.0
- ssil_normal_rejection: float = 1.0
- ssil_radius: float = 5.0
- ssil_sharpness: float = 0.98
- ssr_depth_tolerance: float = 0.5
- ssr_enabled: bool = false
- ssr_fade_in: float = 0.15
- ssr_fade_out: float = 2.0
- ssr_max_steps: int = 64
- tonemap_agx_contrast: float = 1.25
- tonemap_agx_white: float = 16.29
- tonemap_exposure: float = 1.0
- tonemap_mode: int (Environment.ToneMapper) = 0
- tonemap_white: float = 1.0
- volumetric_fog_albedo: Color = Color(1, 1, 1, 1)
- volumetric_fog_ambient_inject: float = 0.0
- volumetric_fog_anisotropy: float = 0.2
- volumetric_fog_density: float = 0.05
- volumetric_fog_detail_spread: float = 2.0
- volumetric_fog_emission: Color = Color(0, 0, 0, 1)
- volumetric_fog_emission_energy: float = 1.0
- volumetric_fog_enabled: bool = false
- volumetric_fog_gi_inject: float = 1.0
- volumetric_fog_length: float = 64.0
- volumetric_fog_sky_affect: float = 1.0
- volumetric_fog_temporal_reprojection_amount: float = 0.9
- volumetric_fog_temporal_reprojection_enabled: bool = true

**Methods:**
- get_glow_level(idx: int) -> float
- set_glow_level(idx: int, intensity: float)

**Enums:**
**BGMode:** BG_CLEAR_COLOR=0, BG_COLOR=1, BG_SKY=2, BG_CANVAS=3, BG_KEEP=4, BG_CAMERA_FEED=5, BG_MAX=6
**AmbientSource:** AMBIENT_SOURCE_BG=0, AMBIENT_SOURCE_DISABLED=1, AMBIENT_SOURCE_COLOR=2, AMBIENT_SOURCE_SKY=3
**ReflectionSource:** REFLECTION_SOURCE_BG=0, REFLECTION_SOURCE_DISABLED=1, REFLECTION_SOURCE_SKY=2
**ToneMapper:** TONE_MAPPER_LINEAR=0, TONE_MAPPER_REINHARDT=1, TONE_MAPPER_FILMIC=2, TONE_MAPPER_ACES=3, TONE_MAPPER_AGX=4
**GlowBlendMode:** GLOW_BLEND_MODE_ADDITIVE=0, GLOW_BLEND_MODE_SCREEN=1, GLOW_BLEND_MODE_SOFTLIGHT=2, GLOW_BLEND_MODE_REPLACE=3, GLOW_BLEND_MODE_MIX=4
**FogMode:** FOG_MODE_EXPONENTIAL=0, FOG_MODE_DEPTH=1
**SDFGIYScale:** SDFGI_Y_SCALE_50_PERCENT=0, SDFGI_Y_SCALE_75_PERCENT=1, SDFGI_Y_SCALE_100_PERCENT=2

