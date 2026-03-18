## RenderSceneData <- Object

Abstract scene data object, exists for the duration of rendering a single viewport. See also RenderSceneDataRD, RenderData, and RenderDataRD. **Note:** This is an internal rendering server object. Do not instantiate this class from a script.

**Methods:**
- get_cam_projection() -> Projection
- get_cam_transform() -> Transform3D
- get_uniform_buffer() -> RID
- get_view_count() -> int
- get_view_eye_offset(view: int) -> Vector3
- get_view_projection(view: int) -> Projection

