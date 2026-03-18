## Viewport <- Node

A Viewport creates a different view into the screen, or a sub-view inside another viewport. Child 2D nodes will display on it, and child Camera3D 3D nodes will render on it too. Optionally, a viewport can have its own 2D or 3D world, so it doesn't share what it draws with other viewports. Viewports can also choose to be audio listeners, so they generate positional audio depending on a 2D or 3D camera child of it. Also, viewports can be assigned to different screens in case the devices have multiple screens. Finally, viewports can also behave as render targets, in which case they will not be visible unless the associated texture is used to draw.

**Props:**
- anisotropic_filtering_level: int (Viewport.AnisotropicFiltering) = 2
- audio_listener_enable_2d: bool = false
- audio_listener_enable_3d: bool = false
- canvas_cull_mask: int = 4294967295
- canvas_item_default_texture_filter: int (Viewport.DefaultCanvasItemTextureFilter) = 1
- canvas_item_default_texture_repeat: int (Viewport.DefaultCanvasItemTextureRepeat) = 0
- canvas_transform: Transform2D
- debug_draw: int (Viewport.DebugDraw) = 0
- disable_3d: bool = false
- fsr_sharpness: float = 0.2
- global_canvas_transform: Transform2D
- gui_disable_input: bool = false
- gui_drag_threshold: int = 10
- gui_embed_subwindows: bool = false
- gui_snap_controls_to_pixels: bool = true
- handle_input_locally: bool = true
- mesh_lod_threshold: float = 1.0
- msaa_2d: int (Viewport.MSAA) = 0
- msaa_3d: int (Viewport.MSAA) = 0
- oversampling: bool = true
- oversampling_override: float = 0.0
- own_world_3d: bool = false
- physics_interpolation_mode: int (Node.PhysicsInterpolationMode) = 1
- physics_object_picking: bool = false
- physics_object_picking_first_only: bool = false
- physics_object_picking_sort: bool = false
- positional_shadow_atlas_16_bits: bool = true
- positional_shadow_atlas_quad_0: int (Viewport.PositionalShadowAtlasQuadrantSubdiv) = 2
- positional_shadow_atlas_quad_1: int (Viewport.PositionalShadowAtlasQuadrantSubdiv) = 2
- positional_shadow_atlas_quad_2: int (Viewport.PositionalShadowAtlasQuadrantSubdiv) = 3
- positional_shadow_atlas_quad_3: int (Viewport.PositionalShadowAtlasQuadrantSubdiv) = 4
- positional_shadow_atlas_size: int = 2048
- scaling_3d_mode: int (Viewport.Scaling3DMode) = 0
- scaling_3d_scale: float = 1.0
- screen_space_aa: int (Viewport.ScreenSpaceAA) = 0
- sdf_oversize: int (Viewport.SDFOversize) = 1
- sdf_scale: int (Viewport.SDFScale) = 1
- snap_2d_transforms_to_pixel: bool = false
- snap_2d_vertices_to_pixel: bool = false
- texture_mipmap_bias: float = 0.0
- transparent_bg: bool = false
- use_debanding: bool = false
- use_hdr_2d: bool = false
- use_occlusion_culling: bool = false
- use_taa: bool = false
- use_xr: bool = false
- vrs_mode: int (Viewport.VRSMode) = 0
- vrs_texture: Texture2D
- vrs_update_mode: int (Viewport.VRSUpdateMode) = 1
- world_2d: World2D
- world_3d: World3D

**Methods:**
- find_world_2d() -> World2D
- find_world_3d() -> World3D
- get_audio_listener_2d() -> AudioListener2D
- get_audio_listener_3d() -> AudioListener3D
- get_camera_2d() -> Camera2D
- get_camera_3d() -> Camera3D
- get_canvas_cull_mask_bit(layer: int) -> bool
- get_embedded_subwindows() -> Window[]
- get_final_transform() -> Transform2D
- get_mouse_position() -> Vector2
- get_oversampling() -> float
- get_positional_shadow_atlas_quadrant_subdiv(quadrant: int) -> int
- get_render_info(type: int, info: int) -> int
- get_screen_transform() -> Transform2D
- get_stretch_transform() -> Transform2D
- get_texture() -> ViewportTexture
- get_viewport_rid() -> RID
- get_visible_rect() -> Rect2
- gui_cancel_drag()
- gui_get_drag_data() -> Variant
- gui_get_drag_description() -> String
- gui_get_focus_owner() -> Control
- gui_get_hovered_control() -> Control
- gui_is_drag_successful() -> bool
- gui_is_dragging() -> bool
- gui_release_focus()
- gui_set_drag_description(description: String)
- is_input_handled() -> bool
- notify_mouse_entered()
- notify_mouse_exited()
- push_input(event: InputEvent, in_local_coords: bool = false)
- push_text_input(text: String)
- push_unhandled_input(event: InputEvent, in_local_coords: bool = false)
- set_canvas_cull_mask_bit(layer: int, enable: bool)
- set_input_as_handled()
- set_positional_shadow_atlas_quadrant_subdiv(quadrant: int, subdiv: int)
- update_mouse_cursor_state()
- warp_mouse(position: Vector2)

**Signals:**
- gui_focus_changed(node: Control)
- size_changed

**Enums:**
**PositionalShadowAtlasQuadrantSubdiv:** SHADOW_ATLAS_QUADRANT_SUBDIV_DISABLED=0, SHADOW_ATLAS_QUADRANT_SUBDIV_1=1, SHADOW_ATLAS_QUADRANT_SUBDIV_4=2, SHADOW_ATLAS_QUADRANT_SUBDIV_16=3, SHADOW_ATLAS_QUADRANT_SUBDIV_64=4, SHADOW_ATLAS_QUADRANT_SUBDIV_256=5, SHADOW_ATLAS_QUADRANT_SUBDIV_1024=6, SHADOW_ATLAS_QUADRANT_SUBDIV_MAX=7
**Scaling3DMode:** SCALING_3D_MODE_BILINEAR=0, SCALING_3D_MODE_FSR=1, SCALING_3D_MODE_FSR2=2, SCALING_3D_MODE_METALFX_SPATIAL=3, SCALING_3D_MODE_METALFX_TEMPORAL=4, SCALING_3D_MODE_MAX=5
**MSAA:** MSAA_DISABLED=0, MSAA_2X=1, MSAA_4X=2, MSAA_8X=3, MSAA_MAX=4
**AnisotropicFiltering:** ANISOTROPY_DISABLED=0, ANISOTROPY_2X=1, ANISOTROPY_4X=2, ANISOTROPY_8X=3, ANISOTROPY_16X=4, ANISOTROPY_MAX=5
**ScreenSpaceAA:** SCREEN_SPACE_AA_DISABLED=0, SCREEN_SPACE_AA_FXAA=1, SCREEN_SPACE_AA_SMAA=2, SCREEN_SPACE_AA_MAX=3
**RenderInfo:** RENDER_INFO_OBJECTS_IN_FRAME=0, RENDER_INFO_PRIMITIVES_IN_FRAME=1, RENDER_INFO_DRAW_CALLS_IN_FRAME=2, RENDER_INFO_MAX=3
**RenderInfoType:** RENDER_INFO_TYPE_VISIBLE=0, RENDER_INFO_TYPE_SHADOW=1, RENDER_INFO_TYPE_CANVAS=2, RENDER_INFO_TYPE_MAX=3
**DebugDraw:** DEBUG_DRAW_DISABLED=0, DEBUG_DRAW_UNSHADED=1, DEBUG_DRAW_LIGHTING=2, DEBUG_DRAW_OVERDRAW=3, DEBUG_DRAW_WIREFRAME=4, DEBUG_DRAW_NORMAL_BUFFER=5, DEBUG_DRAW_VOXEL_GI_ALBEDO=6, DEBUG_DRAW_VOXEL_GI_LIGHTING=7, DEBUG_DRAW_VOXEL_GI_EMISSION=8, DEBUG_DRAW_SHADOW_ATLAS=9, ...
**DefaultCanvasItemTextureFilter:** DEFAULT_CANVAS_ITEM_TEXTURE_FILTER_NEAREST=0, DEFAULT_CANVAS_ITEM_TEXTURE_FILTER_LINEAR=1, DEFAULT_CANVAS_ITEM_TEXTURE_FILTER_LINEAR_WITH_MIPMAPS=2, DEFAULT_CANVAS_ITEM_TEXTURE_FILTER_NEAREST_WITH_MIPMAPS=3, DEFAULT_CANVAS_ITEM_TEXTURE_FILTER_MAX=4
**DefaultCanvasItemTextureRepeat:** DEFAULT_CANVAS_ITEM_TEXTURE_REPEAT_DISABLED=0, DEFAULT_CANVAS_ITEM_TEXTURE_REPEAT_ENABLED=1, DEFAULT_CANVAS_ITEM_TEXTURE_REPEAT_MIRROR=2, DEFAULT_CANVAS_ITEM_TEXTURE_REPEAT_MAX=3
**SDFOversize:** SDF_OVERSIZE_100_PERCENT=0, SDF_OVERSIZE_120_PERCENT=1, SDF_OVERSIZE_150_PERCENT=2, SDF_OVERSIZE_200_PERCENT=3, SDF_OVERSIZE_MAX=4
**SDFScale:** SDF_SCALE_100_PERCENT=0, SDF_SCALE_50_PERCENT=1, SDF_SCALE_25_PERCENT=2, SDF_SCALE_MAX=3
**VRSMode:** VRS_DISABLED=0, VRS_TEXTURE=1, VRS_XR=2, VRS_MAX=3
**VRSUpdateMode:** VRS_UPDATE_DISABLED=0, VRS_UPDATE_ONCE=1, VRS_UPDATE_ALWAYS=2, VRS_UPDATE_MAX=3

