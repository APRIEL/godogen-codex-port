## NavigationMeshSourceGeometryData3D <- Resource

Container for parsed source geometry data used in navigation mesh baking.

**Methods:**
- add_faces(faces: PackedVector3Array, xform: Transform3D)
- add_mesh(mesh: Mesh, xform: Transform3D)
- add_mesh_array(mesh_array: Array, xform: Transform3D)
- add_projected_obstruction(vertices: PackedVector3Array, elevation: float, height: float, carve: bool)
- append_arrays(vertices: PackedFloat32Array, indices: PackedInt32Array)
- clear()
- clear_projected_obstructions()
- get_bounds() -> AABB
- get_indices() -> PackedInt32Array
- get_projected_obstructions() -> Array
- get_vertices() -> PackedFloat32Array
- has_data() -> bool
- merge(other_geometry: NavigationMeshSourceGeometryData3D)
- set_indices(indices: PackedInt32Array)
- set_projected_obstructions(projected_obstructions: Array)
- set_vertices(vertices: PackedFloat32Array)

