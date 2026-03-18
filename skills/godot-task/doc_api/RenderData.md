## RenderData <- Object

Abstract render data object, exists for the duration of rendering a single viewport. See also RenderDataRD, RenderSceneData, and RenderSceneDataRD. **Note:** This is an internal rendering server object. Do not instantiate this class from a script.

**Methods:**
- get_camera_attributes() -> RID
- get_environment() -> RID
- get_render_scene_buffers() -> RenderSceneBuffers
- get_render_scene_data() -> RenderSceneData

