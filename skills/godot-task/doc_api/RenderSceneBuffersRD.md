## RenderSceneBuffersRD <- RenderSceneBuffers

This object manages all 3D rendering buffers for the rendering device based renderers. An instance of this object is created for every viewport that has 3D rendering enabled. See also RenderSceneBuffers. All buffers are organized in **contexts**. The default context is called **render_buffers** and can contain amongst others the color buffer, depth buffer, velocity buffers, VRS density map and MSAA variants of these buffers. Buffers are only guaranteed to exist during rendering of the viewport. **Note:** This is an internal rendering server object. Do not instantiate this class from a script.

**Methods:**
- clear_context(context: StringName)
- create_texture(context: StringName, name: StringName, data_format: int, usage_bits: int, texture_samples: int, size: Vector2i, layers: int, mipmaps: int, unique: bool, discardable: bool) -> RID
- create_texture_from_format(context: StringName, name: StringName, format: RDTextureFormat, view: RDTextureView, unique: bool) -> RID
- create_texture_view(context: StringName, name: StringName, view_name: StringName, view: RDTextureView) -> RID
- get_color_layer(layer: int, msaa: bool = false) -> RID
- get_color_texture(msaa: bool = false) -> RID
- get_depth_layer(layer: int, msaa: bool = false) -> RID
- get_depth_texture(msaa: bool = false) -> RID
- get_fsr_sharpness() -> float
- get_internal_size() -> Vector2i
- get_msaa_3d() -> int
- get_render_target() -> RID
- get_scaling_3d_mode() -> int
- get_screen_space_aa() -> int
- get_target_size() -> Vector2i
- get_texture(context: StringName, name: StringName) -> RID
- get_texture_format(context: StringName, name: StringName) -> RDTextureFormat
- get_texture_samples() -> int
- get_texture_slice(context: StringName, name: StringName, layer: int, mipmap: int, layers: int, mipmaps: int) -> RID
- get_texture_slice_size(context: StringName, name: StringName, mipmap: int) -> Vector2i
- get_texture_slice_view(context: StringName, name: StringName, layer: int, mipmap: int, layers: int, mipmaps: int, view: RDTextureView) -> RID
- get_use_debanding() -> bool
- get_use_taa() -> bool
- get_velocity_layer(layer: int, msaa: bool = false) -> RID
- get_velocity_texture(msaa: bool = false) -> RID
- get_view_count() -> int
- has_texture(context: StringName, name: StringName) -> bool

