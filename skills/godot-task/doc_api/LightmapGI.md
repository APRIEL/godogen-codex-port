## LightmapGI <- VisualInstance3D

The LightmapGI node is used to compute and store baked lightmaps. Lightmaps are used to provide high-quality indirect lighting with very little light leaking. LightmapGI can also provide rough reflections using spherical harmonics if `directional` is enabled. Dynamic objects can receive indirect lighting thanks to *light probes*, which can be automatically placed by setting `generate_probes_subdiv` to a value other than `GENERATE_PROBES_DISABLED`. Additional lightmap probes can also be added by creating LightmapProbe nodes. The downside is that lightmaps are fully static and cannot be baked in an exported project. Baking a LightmapGI node is also slower compared to VoxelGI. **Procedural generation:** Lightmap baking functionality is only available in the editor. This means LightmapGI is not suited to procedurally generated or user-built levels. For procedurally generated or user-built levels, use VoxelGI or SDFGI instead (see `Environment.sdfgi_enabled`). **Performance:** LightmapGI provides the best possible run-time performance for global illumination. It is suitable for low-end hardware including integrated graphics and mobile devices. **Note:** Due to how lightmaps work, most properties only have a visible effect once lightmaps are baked again. **Note:** Lightmap baking on CSGShape3Ds and PrimitiveMeshes is not supported, as these cannot store UV2 data required for baking. **Note:** If no custom lightmappers are installed, LightmapGI can only be baked from devices that support the Forward+ or Mobile renderers. **Note:** The LightmapGI node only bakes light data for child nodes of its parent. Nodes further up the hierarchy of the scene will not be baked.

**Props:**
- bias: float = 0.0005
- bounce_indirect_energy: float = 1.0
- bounces: int = 3
- camera_attributes: CameraAttributes
- denoiser_range: int = 10
- denoiser_strength: float = 0.1
- directional: bool = false
- environment_custom_color: Color = Color(1, 1, 1, 1)
- environment_custom_energy: float = 1.0
- environment_custom_sky: Sky
- environment_mode: int (LightmapGI.EnvironmentMode) = 1
- generate_probes_subdiv: int (LightmapGI.GenerateProbes) = 2
- interior: bool = false
- light_data: LightmapGIData
- max_texture_size: int = 16384
- quality: int (LightmapGI.BakeQuality) = 1
- shadowmask_mode: int (LightmapGIData.ShadowmaskMode) = 0
- supersampling: bool = false
- supersampling_factor: float = 2.0
- texel_scale: float = 1.0
- use_denoiser: bool = true
- use_texture_for_bounces: bool = true

**Enums:**
**BakeQuality:** BAKE_QUALITY_LOW=0, BAKE_QUALITY_MEDIUM=1, BAKE_QUALITY_HIGH=2, BAKE_QUALITY_ULTRA=3
**GenerateProbes:** GENERATE_PROBES_DISABLED=0, GENERATE_PROBES_SUBDIV_4=1, GENERATE_PROBES_SUBDIV_8=2, GENERATE_PROBES_SUBDIV_16=3, GENERATE_PROBES_SUBDIV_32=4
**BakeError:** BAKE_ERROR_OK=0, BAKE_ERROR_NO_SCENE_ROOT=1, BAKE_ERROR_FOREIGN_DATA=2, BAKE_ERROR_NO_LIGHTMAPPER=3, BAKE_ERROR_NO_SAVE_PATH=4, BAKE_ERROR_NO_MESHES=5, BAKE_ERROR_MESHES_INVALID=6, BAKE_ERROR_CANT_CREATE_IMAGE=7, BAKE_ERROR_USER_ABORTED=8, BAKE_ERROR_TEXTURE_SIZE_TOO_SMALL=9, ...
**EnvironmentMode:** ENVIRONMENT_MODE_DISABLED=0, ENVIRONMENT_MODE_SCENE=1, ENVIRONMENT_MODE_CUSTOM_SKY=2, ENVIRONMENT_MODE_CUSTOM_COLOR=3

