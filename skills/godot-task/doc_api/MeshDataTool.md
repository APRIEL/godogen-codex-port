## MeshDataTool <- RefCounted

MeshDataTool provides access to individual vertices in a Mesh. It allows users to read and edit vertex data of meshes. It also creates an array of faces and edges. To use MeshDataTool, load a mesh with `create_from_surface`. When you are finished editing the data commit the data to a mesh with `commit_to_surface`. Below is an example of how MeshDataTool may be used. See also ArrayMesh, ImmediateMesh and SurfaceTool for procedural geometry generation. **Note:** Godot uses clockwise for front faces of triangle primitive modes.

**Methods:**
- clear()
- commit_to_surface(mesh: ArrayMesh, compression_flags: int = 0) -> int
- create_from_surface(mesh: ArrayMesh, surface: int) -> int
- get_edge_count() -> int
- get_edge_faces(idx: int) -> PackedInt32Array
- get_edge_meta(idx: int) -> Variant
- get_edge_vertex(idx: int, vertex: int) -> int
- get_face_count() -> int
- get_face_edge(idx: int, edge: int) -> int
- get_face_meta(idx: int) -> Variant
- get_face_normal(idx: int) -> Vector3
- get_face_vertex(idx: int, vertex: int) -> int
- get_format() -> int
- get_material() -> Material
- get_vertex(idx: int) -> Vector3
- get_vertex_bones(idx: int) -> PackedInt32Array
- get_vertex_color(idx: int) -> Color
- get_vertex_count() -> int
- get_vertex_edges(idx: int) -> PackedInt32Array
- get_vertex_faces(idx: int) -> PackedInt32Array
- get_vertex_meta(idx: int) -> Variant
- get_vertex_normal(idx: int) -> Vector3
- get_vertex_tangent(idx: int) -> Plane
- get_vertex_uv(idx: int) -> Vector2
- get_vertex_uv2(idx: int) -> Vector2
- get_vertex_weights(idx: int) -> PackedFloat32Array
- set_edge_meta(idx: int, meta: Variant)
- set_face_meta(idx: int, meta: Variant)
- set_material(material: Material)
- set_vertex(idx: int, vertex: Vector3)
- set_vertex_bones(idx: int, bones: PackedInt32Array)
- set_vertex_color(idx: int, color: Color)
- set_vertex_meta(idx: int, meta: Variant)
- set_vertex_normal(idx: int, normal: Vector3)
- set_vertex_tangent(idx: int, tangent: Plane)
- set_vertex_uv(idx: int, uv: Vector2)
- set_vertex_uv2(idx: int, uv2: Vector2)
- set_vertex_weights(idx: int, weights: PackedFloat32Array)

