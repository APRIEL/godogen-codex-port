## ArrayMesh <- Mesh

The ArrayMesh is used to construct a Mesh by specifying the attributes as arrays. The most basic example is the creation of a single triangle: The MeshInstance3D is ready to be added to the SceneTree to be shown. See also ImmediateMesh, MeshDataTool and SurfaceTool for procedural geometry generation. **Note:** Godot uses clockwise for front faces of triangle primitive modes.

**Props:**
- blend_shape_mode: int (Mesh.BlendShapeMode) = 1
- custom_aabb: AABB = AABB(0, 0, 0, 0, 0, 0)
- shadow_mesh: ArrayMesh

**Methods:**
- add_blend_shape(name: StringName)
- add_surface_from_arrays(primitive: int, arrays: Array, blend_shapes: Array[] = [], lods: Dictionary = {}, flags: int = 0)
- clear_blend_shapes()
- clear_surfaces()
- get_blend_shape_count() -> int
- get_blend_shape_name(index: int) -> StringName
- lightmap_unwrap(transform: Transform3D, texel_size: float) -> int
- regen_normal_maps()
- set_blend_shape_name(index: int, name: StringName)
- surface_find_by_name(name: String) -> int
- surface_get_array_index_len(surf_idx: int) -> int
- surface_get_array_len(surf_idx: int) -> int
- surface_get_format(surf_idx: int) -> int
- surface_get_name(surf_idx: int) -> String
- surface_get_primitive_type(surf_idx: int) -> int
- surface_remove(surf_idx: int)
- surface_set_name(surf_idx: int, name: String)
- surface_update_attribute_region(surf_idx: int, offset: int, data: PackedByteArray)
- surface_update_skin_region(surf_idx: int, offset: int, data: PackedByteArray)
- surface_update_vertex_region(surf_idx: int, offset: int, data: PackedByteArray)

