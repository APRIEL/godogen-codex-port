## MeshInstance3D <- GeometryInstance3D

MeshInstance3D is a node that takes a Mesh resource and adds it to the current scenario by creating an instance of it. This is the class most often used to render 3D geometry and can be used to instance a single Mesh in many places. This allows reusing geometry, which can save on resources. When a Mesh has to be instantiated more than thousands of times at close proximity, consider using a MultiMesh in a MultiMeshInstance3D instead.

**Props:**
- mesh: Mesh
- skeleton: NodePath = NodePath("")
- skin: Skin

**Methods:**
- bake_mesh_from_current_blend_shape_mix(existing: ArrayMesh = null) -> ArrayMesh
- bake_mesh_from_current_skeleton_pose(existing: ArrayMesh = null) -> ArrayMesh
- create_convex_collision(clean: bool = true, simplify: bool = false)
- create_debug_tangents()
- create_multiple_convex_collisions(settings: MeshConvexDecompositionSettings = null)
- create_trimesh_collision()
- find_blend_shape_by_name(name: StringName) -> int
- get_active_material(surface: int) -> Material
- get_blend_shape_count() -> int
- get_blend_shape_value(blend_shape_idx: int) -> float
- get_skin_reference() -> SkinReference
- get_surface_override_material(surface: int) -> Material
- get_surface_override_material_count() -> int
- set_blend_shape_value(blend_shape_idx: int, value: float)
- set_surface_override_material(surface: int, material: Material)

