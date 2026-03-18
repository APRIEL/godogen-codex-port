## BaseMaterial3D <- Material

This class serves as a default material with a wide variety of rendering features and properties without the need to write shader code. See the tutorial below for details.

**Props:**
- albedo_color: Color = Color(1, 1, 1, 1)
- albedo_texture: Texture2D
- albedo_texture_force_srgb: bool = false
- albedo_texture_msdf: bool = false
- alpha_antialiasing_edge: float
- alpha_antialiasing_mode: int (BaseMaterial3D.AlphaAntiAliasing)
- alpha_hash_scale: float
- alpha_scissor_threshold: float
- anisotropy: float = 0.0
- anisotropy_enabled: bool = false
- anisotropy_flowmap: Texture2D
- ao_enabled: bool = false
- ao_light_affect: float = 0.0
- ao_on_uv2: bool = false
- ao_texture: Texture2D
- ao_texture_channel: int (BaseMaterial3D.TextureChannel) = 0
- backlight: Color = Color(0, 0, 0, 1)
- backlight_enabled: bool = false
- backlight_texture: Texture2D
- bent_normal_enabled: bool = false
- bent_normal_texture: Texture2D
- billboard_keep_scale: bool = false
- billboard_mode: int (BaseMaterial3D.BillboardMode) = 0
- blend_mode: int (BaseMaterial3D.BlendMode) = 0
- clearcoat: float = 1.0
- clearcoat_enabled: bool = false
- clearcoat_roughness: float = 0.5
- clearcoat_texture: Texture2D
- cull_mode: int (BaseMaterial3D.CullMode) = 0
- depth_draw_mode: int (BaseMaterial3D.DepthDrawMode) = 0
- depth_test: int (BaseMaterial3D.DepthTest) = 0
- detail_albedo: Texture2D
- detail_blend_mode: int (BaseMaterial3D.BlendMode) = 0
- detail_enabled: bool = false
- detail_mask: Texture2D
- detail_normal: Texture2D
- detail_uv_layer: int (BaseMaterial3D.DetailUV) = 0
- diffuse_mode: int (BaseMaterial3D.DiffuseMode) = 0
- disable_ambient_light: bool = false
- disable_fog: bool = false
- disable_receive_shadows: bool = false
- disable_specular_occlusion: bool = false
- distance_fade_max_distance: float = 10.0
- distance_fade_min_distance: float = 0.0
- distance_fade_mode: int (BaseMaterial3D.DistanceFadeMode) = 0
- emission: Color = Color(0, 0, 0, 1)
- emission_enabled: bool = false
- emission_energy_multiplier: float = 1.0
- emission_intensity: float
- emission_on_uv2: bool = false
- emission_operator: int (BaseMaterial3D.EmissionOperator) = 0
- emission_texture: Texture2D
- fixed_size: bool = false
- fov_override: float = 75.0
- grow: bool = false
- grow_amount: float = 0.0
- heightmap_deep_parallax: bool = false
- heightmap_enabled: bool = false
- heightmap_flip_binormal: bool = false
- heightmap_flip_tangent: bool = false
- heightmap_flip_texture: bool = false
- heightmap_max_layers: int
- heightmap_min_layers: int
- heightmap_scale: float = 5.0
- heightmap_texture: Texture2D
- metallic: float = 0.0
- metallic_specular: float = 0.5
- metallic_texture: Texture2D
- metallic_texture_channel: int (BaseMaterial3D.TextureChannel) = 0
- msdf_outline_size: float = 0.0
- msdf_pixel_range: float = 4.0
- no_depth_test: bool = false
- normal_enabled: bool = false
- normal_scale: float = 1.0
- normal_texture: Texture2D
- orm_texture: Texture2D
- particles_anim_h_frames: int
- particles_anim_loop: bool
- particles_anim_v_frames: int
- point_size: float = 1.0
- proximity_fade_distance: float = 1.0
- proximity_fade_enabled: bool = false
- refraction_enabled: bool = false
- refraction_scale: float = 0.05
- refraction_texture: Texture2D
- refraction_texture_channel: int (BaseMaterial3D.TextureChannel) = 0
- rim: float = 1.0
- rim_enabled: bool = false
- rim_texture: Texture2D
- rim_tint: float = 0.5
- roughness: float = 1.0
- roughness_texture: Texture2D
- roughness_texture_channel: int (BaseMaterial3D.TextureChannel) = 0
- shading_mode: int (BaseMaterial3D.ShadingMode) = 1
- shadow_to_opacity: bool = false
- specular_mode: int (BaseMaterial3D.SpecularMode) = 0
- stencil_color: Color = Color(0, 0, 0, 1)
- stencil_compare: int (BaseMaterial3D.StencilCompare) = 0
- stencil_flags: int = 0
- stencil_mode: int (BaseMaterial3D.StencilMode) = 0
- stencil_outline_thickness: float = 0.01
- stencil_reference: int = 1
- subsurf_scatter_enabled: bool = false
- subsurf_scatter_skin_mode: bool = false
- subsurf_scatter_strength: float = 0.0
- subsurf_scatter_texture: Texture2D
- subsurf_scatter_transmittance_boost: float = 0.0
- subsurf_scatter_transmittance_color: Color = Color(1, 1, 1, 1)
- subsurf_scatter_transmittance_depth: float = 0.1
- subsurf_scatter_transmittance_enabled: bool = false
- subsurf_scatter_transmittance_texture: Texture2D
- texture_filter: int (BaseMaterial3D.TextureFilter) = 3
- texture_repeat: bool = true
- transparency: int (BaseMaterial3D.Transparency) = 0
- use_fov_override: bool = false
- use_particle_trails: bool = false
- use_point_size: bool = false
- use_z_clip_scale: bool = false
- uv1_offset: Vector3 = Vector3(0, 0, 0)
- uv1_scale: Vector3 = Vector3(1, 1, 1)
- uv1_triplanar: bool = false
- uv1_triplanar_sharpness: float = 1.0
- uv1_world_triplanar: bool = false
- uv2_offset: Vector3 = Vector3(0, 0, 0)
- uv2_scale: Vector3 = Vector3(1, 1, 1)
- uv2_triplanar: bool = false
- uv2_triplanar_sharpness: float = 1.0
- uv2_world_triplanar: bool = false
- vertex_color_is_srgb: bool = false
- vertex_color_use_as_albedo: bool = false
- z_clip_scale: float = 1.0

**Methods:**
- get_feature(feature: int) -> bool
- get_flag(flag: int) -> bool
- get_texture(param: int) -> Texture2D
- set_feature(feature: int, enable: bool)
- set_flag(flag: int, enable: bool)
- set_texture(param: int, texture: Texture2D)

**Enums:**
**TextureParam:** TEXTURE_ALBEDO=0, TEXTURE_METALLIC=1, TEXTURE_ROUGHNESS=2, TEXTURE_EMISSION=3, TEXTURE_NORMAL=4, TEXTURE_BENT_NORMAL=18, TEXTURE_RIM=5, TEXTURE_CLEARCOAT=6, TEXTURE_FLOWMAP=7, TEXTURE_AMBIENT_OCCLUSION=8, ...
**TextureFilter:** TEXTURE_FILTER_NEAREST=0, TEXTURE_FILTER_LINEAR=1, TEXTURE_FILTER_NEAREST_WITH_MIPMAPS=2, TEXTURE_FILTER_LINEAR_WITH_MIPMAPS=3, TEXTURE_FILTER_NEAREST_WITH_MIPMAPS_ANISOTROPIC=4, TEXTURE_FILTER_LINEAR_WITH_MIPMAPS_ANISOTROPIC=5, TEXTURE_FILTER_MAX=6
**DetailUV:** DETAIL_UV_1=0, DETAIL_UV_2=1
**Transparency:** TRANSPARENCY_DISABLED=0, TRANSPARENCY_ALPHA=1, TRANSPARENCY_ALPHA_SCISSOR=2, TRANSPARENCY_ALPHA_HASH=3, TRANSPARENCY_ALPHA_DEPTH_PRE_PASS=4, TRANSPARENCY_MAX=5
**ShadingMode:** SHADING_MODE_UNSHADED=0, SHADING_MODE_PER_PIXEL=1, SHADING_MODE_PER_VERTEX=2, SHADING_MODE_MAX=3
**Feature:** FEATURE_EMISSION=0, FEATURE_NORMAL_MAPPING=1, FEATURE_RIM=2, FEATURE_CLEARCOAT=3, FEATURE_ANISOTROPY=4, FEATURE_AMBIENT_OCCLUSION=5, FEATURE_HEIGHT_MAPPING=6, FEATURE_SUBSURFACE_SCATTERING=7, FEATURE_SUBSURFACE_TRANSMITTANCE=8, FEATURE_BACKLIGHT=9, ...
**BlendMode:** BLEND_MODE_MIX=0, BLEND_MODE_ADD=1, BLEND_MODE_SUB=2, BLEND_MODE_MUL=3, BLEND_MODE_PREMULT_ALPHA=4
**AlphaAntiAliasing:** ALPHA_ANTIALIASING_OFF=0, ALPHA_ANTIALIASING_ALPHA_TO_COVERAGE=1, ALPHA_ANTIALIASING_ALPHA_TO_COVERAGE_AND_TO_ONE=2
**DepthDrawMode:** DEPTH_DRAW_OPAQUE_ONLY=0, DEPTH_DRAW_ALWAYS=1, DEPTH_DRAW_DISABLED=2
**DepthTest:** DEPTH_TEST_DEFAULT=0, DEPTH_TEST_INVERTED=1
**CullMode:** CULL_BACK=0, CULL_FRONT=1, CULL_DISABLED=2
**Flags:** FLAG_DISABLE_DEPTH_TEST=0, FLAG_ALBEDO_FROM_VERTEX_COLOR=1, FLAG_SRGB_VERTEX_COLOR=2, FLAG_USE_POINT_SIZE=3, FLAG_FIXED_SIZE=4, FLAG_BILLBOARD_KEEP_SCALE=5, FLAG_UV1_USE_TRIPLANAR=6, FLAG_UV2_USE_TRIPLANAR=7, FLAG_UV1_USE_WORLD_TRIPLANAR=8, FLAG_UV2_USE_WORLD_TRIPLANAR=9, ...
**DiffuseMode:** DIFFUSE_BURLEY=0, DIFFUSE_LAMBERT=1, DIFFUSE_LAMBERT_WRAP=2, DIFFUSE_TOON=3
**SpecularMode:** SPECULAR_SCHLICK_GGX=0, SPECULAR_TOON=1, SPECULAR_DISABLED=2
**BillboardMode:** BILLBOARD_DISABLED=0, BILLBOARD_ENABLED=1, BILLBOARD_FIXED_Y=2, BILLBOARD_PARTICLES=3
**TextureChannel:** TEXTURE_CHANNEL_RED=0, TEXTURE_CHANNEL_GREEN=1, TEXTURE_CHANNEL_BLUE=2, TEXTURE_CHANNEL_ALPHA=3, TEXTURE_CHANNEL_GRAYSCALE=4
**EmissionOperator:** EMISSION_OP_ADD=0, EMISSION_OP_MULTIPLY=1
**DistanceFadeMode:** DISTANCE_FADE_DISABLED=0, DISTANCE_FADE_PIXEL_ALPHA=1, DISTANCE_FADE_PIXEL_DITHER=2, DISTANCE_FADE_OBJECT_DITHER=3
**StencilMode:** STENCIL_MODE_DISABLED=0, STENCIL_MODE_OUTLINE=1, STENCIL_MODE_XRAY=2, STENCIL_MODE_CUSTOM=3
**StencilFlags:** STENCIL_FLAG_READ=1, STENCIL_FLAG_WRITE=2, STENCIL_FLAG_WRITE_DEPTH_FAIL=4
**StencilCompare:** STENCIL_COMPARE_ALWAYS=0, STENCIL_COMPARE_LESS=1, STENCIL_COMPARE_EQUAL=2, STENCIL_COMPARE_LESS_OR_EQUAL=3, STENCIL_COMPARE_GREATER=4, STENCIL_COMPARE_NOT_EQUAL=5, STENCIL_COMPARE_GREATER_OR_EQUAL=6

