## VoxelGIData <- Resource

VoxelGIData contains baked voxel global illumination for use in a VoxelGI node. VoxelGIData also offers several properties to adjust the final appearance of the global illumination. These properties can be adjusted at run-time without having to bake the VoxelGI node again. **Note:** To prevent text-based scene files (`.tscn`) from growing too much and becoming slow to load and save, always save VoxelGIData to an external binary resource file (`.res`) instead of embedding it within the scene. This can be done by clicking the dropdown arrow next to the VoxelGIData resource, choosing **Edit**, clicking the floppy disk icon at the top of the Inspector then choosing **Save As...**.

**Props:**
- bias: float = 1.5
- dynamic_range: float = 2.0
- energy: float = 1.0
- interior: bool = false
- normal_bias: float = 0.0
- propagation: float = 0.5
- use_two_bounces: bool = true

**Methods:**
- allocate(to_cell_xform: Transform3D, aabb: AABB, octree_size: Vector3, octree_cells: PackedByteArray, data_cells: PackedByteArray, distance_field: PackedByteArray, level_counts: PackedInt32Array)
- get_bounds() -> AABB
- get_data_cells() -> PackedByteArray
- get_level_counts() -> PackedInt32Array
- get_octree_cells() -> PackedByteArray
- get_octree_size() -> Vector3
- get_to_cell_xform() -> Transform3D

