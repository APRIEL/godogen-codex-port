## MeshConvexDecompositionSettings <- RefCounted

Parameters to be used with a Mesh convex decomposition operation.

**Props:**
- convex_hull_approximation: bool = true
- convex_hull_downsampling: int = 4
- max_concavity: float = 1.0
- max_convex_hulls: int = 1
- max_num_vertices_per_convex_hull: int = 32
- min_volume_per_convex_hull: float = 0.0001
- mode: int (MeshConvexDecompositionSettings.Mode) = 0
- normalize_mesh: bool = false
- plane_downsampling: int = 4
- project_hull_vertices: bool = true
- resolution: int = 10000
- revolution_axes_clipping_bias: float = 0.05
- symmetry_planes_clipping_bias: float = 0.05

**Enums:**
**Mode:** CONVEX_DECOMPOSITION_MODE_VOXEL=0, CONVEX_DECOMPOSITION_MODE_TETRAHEDRON=1

