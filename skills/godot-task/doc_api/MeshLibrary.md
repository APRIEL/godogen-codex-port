## MeshLibrary <- Resource

A library of meshes. Contains a list of Mesh resources, each with a name and ID. Each item can also include collision and navigation shapes. This resource is used in GridMap.

**Methods:**
- clear()
- create_item(id: int)
- find_item_by_name(name: String) -> int
- get_item_list() -> PackedInt32Array
- get_item_mesh(id: int) -> Mesh
- get_item_mesh_cast_shadow(id: int) -> int
- get_item_mesh_transform(id: int) -> Transform3D
- get_item_name(id: int) -> String
- get_item_navigation_layers(id: int) -> int
- get_item_navigation_mesh(id: int) -> NavigationMesh
- get_item_navigation_mesh_transform(id: int) -> Transform3D
- get_item_preview(id: int) -> Texture2D
- get_item_shapes(id: int) -> Array
- get_last_unused_item_id() -> int
- remove_item(id: int)
- set_item_mesh(id: int, mesh: Mesh)
- set_item_mesh_cast_shadow(id: int, shadow_casting_setting: int)
- set_item_mesh_transform(id: int, mesh_transform: Transform3D)
- set_item_name(id: int, name: String)
- set_item_navigation_layers(id: int, navigation_layers: int)
- set_item_navigation_mesh(id: int, navigation_mesh: NavigationMesh)
- set_item_navigation_mesh_transform(id: int, navigation_mesh: Transform3D)
- set_item_preview(id: int, texture: Texture2D)
- set_item_shapes(id: int, shapes: Array)

