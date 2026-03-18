## ImporterMesh <- Resource

ImporterMesh is a type of Resource analogous to ArrayMesh. It contains vertex array-based geometry, divided in *surfaces*. Each surface contains a completely separate array and a material used to draw it. Design wise, a mesh with multiple surfaces is preferred to a single surface, because objects created in 3D editing software commonly contain multiple materials. Unlike its runtime counterpart, ImporterMesh contains mesh data before various import steps, such as LOD and shadow mesh generation, have taken place. Modify surface data by calling `clear`, followed by `add_surface` for each surface.

**Methods:**
- add_blend_shape(name: String)
- add_surface(primitive: int, arrays: Array, blend_shapes: Array[] = [], lods: Dictionary = {}, material: Material = null, name: String = "", flags: int = 0)
- clear()
- from_mesh(mesh: Mesh) -> ImporterMesh
- generate_lods(normal_merge_angle: float, normal_split_angle: float, bone_transform_array: Array)
- get_blend_shape_count() -> int
- get_blend_shape_mode() -> int
- get_blend_shape_name(blend_shape_idx: int) -> String
- get_lightmap_size_hint() -> Vector2i
- get_mesh(base_mesh: ArrayMesh = null) -> ArrayMesh
- get_surface_arrays(surface_idx: int) -> Array
- get_surface_blend_shape_arrays(surface_idx: int, blend_shape_idx: int) -> Array
- get_surface_count() -> int
- get_surface_format(surface_idx: int) -> int
- get_surface_lod_count(surface_idx: int) -> int
- get_surface_lod_indices(surface_idx: int, lod_idx: int) -> PackedInt32Array
- get_surface_lod_size(surface_idx: int, lod_idx: int) -> float
- get_surface_material(surface_idx: int) -> Material
- get_surface_name(surface_idx: int) -> String
- get_surface_primitive_type(surface_idx: int) -> int
- set_blend_shape_mode(mode: int)
- set_lightmap_size_hint(size: Vector2i)
- set_surface_material(surface_idx: int, material: Material)
- set_surface_name(surface_idx: int, name: String)

