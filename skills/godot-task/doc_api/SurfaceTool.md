## SurfaceTool <- RefCounted

The SurfaceTool is used to construct a Mesh by specifying vertex attributes individually. It can be used to construct a Mesh from a script. All properties except indices need to be added before calling `add_vertex`. For example, to add vertex colors and UVs: The above SurfaceTool now contains one vertex of a triangle which has a UV coordinate and a specified Color. If another vertex were added without calling `set_uv` or `set_color`, then the last values would be used. Vertex attributes must be passed **before** calling `add_vertex`. Failure to do so will result in an error when committing the vertex information to a mesh. Additionally, the attributes used before the first vertex is added determine the format of the mesh. For example, if you only add UVs to the first vertex, you cannot add color to any of the subsequent vertices. See also ArrayMesh, ImmediateMesh and MeshDataTool for procedural geometry generation. **Note:** Godot uses clockwise for front faces of triangle primitive modes.

**Methods:**
- add_index(index: int)
- add_triangle_fan(vertices: PackedVector3Array, uvs: PackedVector2Array = PackedVector2Array(), colors: PackedColorArray = PackedColorArray(), uv2s: PackedVector2Array = PackedVector2Array(), normals: PackedVector3Array = PackedVector3Array(), tangents: Plane[] = [])
- add_vertex(vertex: Vector3)
- append_from(existing: Mesh, surface: int, transform: Transform3D)
- begin(primitive: int)
- clear()
- commit(existing: ArrayMesh = null, flags: int = 0) -> ArrayMesh
- commit_to_arrays() -> Array
- create_from(existing: Mesh, surface: int)
- create_from_arrays(arrays: Array, primitive_type: int = 3)
- create_from_blend_shape(existing: Mesh, surface: int, blend_shape: String)
- deindex()
- generate_lod(nd_threshold: float, target_index_count: int = 3) -> PackedInt32Array
- generate_normals(flip: bool = false)
- generate_tangents()
- get_aabb() -> AABB
- get_custom_format(channel_index: int) -> int
- get_primitive_type() -> int
- get_skin_weight_count() -> int
- index()
- optimize_indices_for_cache()
- set_bones(bones: PackedInt32Array)
- set_color(color: Color)
- set_custom(channel_index: int, custom_color: Color)
- set_custom_format(channel_index: int, format: int)
- set_material(material: Material)
- set_normal(normal: Vector3)
- set_skin_weight_count(count: int)
- set_smooth_group(index: int)
- set_tangent(tangent: Plane)
- set_uv(uv: Vector2)
- set_uv2(uv2: Vector2)
- set_weights(weights: PackedFloat32Array)

**Enums:**
**CustomFormat:** CUSTOM_RGBA8_UNORM=0, CUSTOM_RGBA8_SNORM=1, CUSTOM_RG_HALF=2, CUSTOM_RGBA_HALF=3, CUSTOM_R_FLOAT=4, CUSTOM_RG_FLOAT=5, CUSTOM_RGB_FLOAT=6, CUSTOM_RGBA_FLOAT=7, CUSTOM_MAX=8
**SkinWeightCount:** SKIN_4_WEIGHTS=0, SKIN_8_WEIGHTS=1

