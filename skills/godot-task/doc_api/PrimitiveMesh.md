## PrimitiveMesh <- Mesh

Base class for all primitive meshes. Handles applying a Material to a primitive mesh. Examples include BoxMesh, CapsuleMesh, CylinderMesh, PlaneMesh, PrismMesh, and SphereMesh.

**Props:**
- add_uv2: bool = false
- custom_aabb: AABB = AABB(0, 0, 0, 0, 0, 0)
- flip_faces: bool = false
- material: Material
- uv2_padding: float = 2.0

**Methods:**
- get_mesh_arrays() -> Array
- request_update()

