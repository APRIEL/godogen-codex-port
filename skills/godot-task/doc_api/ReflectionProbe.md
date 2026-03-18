## ReflectionProbe <- VisualInstance3D

Captures its surroundings as a cubemap, and stores versions of it with increasing levels of blur to simulate different material roughnesses. The ReflectionProbe is used to create high-quality reflections at a low performance cost (when `update_mode` is `UPDATE_ONCE`). ReflectionProbes can be blended together and with the rest of the scene smoothly. ReflectionProbes can also be combined with VoxelGI, SDFGI (`Environment.sdfgi_enabled`) and screen-space reflections (`Environment.ssr_enabled`) to get more accurate reflections in specific areas. ReflectionProbes render all objects within their `cull_mask`, so updating them can be quite expensive. It is best to update them once with the important static objects and then leave them as-is. **Note:** Unlike VoxelGI and SDFGI, ReflectionProbes only source their environment from a WorldEnvironment node. If you specify an Environment resource within a Camera3D node, it will be ignored by the ReflectionProbe. This can lead to incorrect lighting within the ReflectionProbe. **Note:** When using the Mobile rendering method, only `8` reflection probes can be displayed on each mesh resource, while the Compatibility rendering method only supports up to `2` reflection probes on each mesh. Attempting to display more than `8` reflection probes on a single mesh resource using the Mobile renderer will result in reflection probes flickering in and out as the camera moves, while the Compatibility renderer will not render any additional probes if more than `2` reflection probes are being used. **Note:** When using the Mobile rendering method, reflection probes will only correctly affect meshes whose visibility AABB intersects with the reflection probe's AABB. If using a shader to deform the mesh in a way that makes it go outside its AABB, `GeometryInstance3D.extra_cull_margin` must be increased on the mesh. Otherwise, the reflection probe may not be visible on the mesh.

**Props:**
- ambient_color: Color = Color(0, 0, 0, 1)
- ambient_color_energy: float = 1.0
- ambient_mode: int (ReflectionProbe.AmbientMode) = 1
- blend_distance: float = 1.0
- box_projection: bool = false
- cull_mask: int = 1048575
- enable_shadows: bool = false
- intensity: float = 1.0
- interior: bool = false
- max_distance: float = 0.0
- mesh_lod_threshold: float = 1.0
- origin_offset: Vector3 = Vector3(0, 0, 0)
- reflection_mask: int = 1048575
- size: Vector3 = Vector3(20, 20, 20)
- update_mode: int (ReflectionProbe.UpdateMode) = 0

**Enums:**
**UpdateMode:** UPDATE_ONCE=0, UPDATE_ALWAYS=1
**AmbientMode:** AMBIENT_DISABLED=0, AMBIENT_ENVIRONMENT=1, AMBIENT_COLOR=2

