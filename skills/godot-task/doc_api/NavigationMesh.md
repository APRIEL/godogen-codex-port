## NavigationMesh <- Resource

A navigation mesh is a collection of polygons that define which areas of an environment are traversable to aid agents in pathfinding through complicated spaces.

**Props:**
- agent_height: float = 1.5
- agent_max_climb: float = 0.25
- agent_max_slope: float = 45.0
- agent_radius: float = 0.5
- border_size: float = 0.0
- cell_height: float = 0.25
- cell_size: float = 0.25
- detail_sample_distance: float = 6.0
- detail_sample_max_error: float = 1.0
- edge_max_error: float = 1.3
- edge_max_length: float = 0.0
- filter_baking_aabb: AABB = AABB(0, 0, 0, 0, 0, 0)
- filter_baking_aabb_offset: Vector3 = Vector3(0, 0, 0)
- filter_ledge_spans: bool = false
- filter_low_hanging_obstacles: bool = false
- filter_walkable_low_height_spans: bool = false
- geometry_collision_mask: int = 4294967295
- geometry_parsed_geometry_type: int (NavigationMesh.ParsedGeometryType) = 2
- geometry_source_geometry_mode: int (NavigationMesh.SourceGeometryMode) = 0
- geometry_source_group_name: StringName = &"navigation_mesh_source_group"
- region_merge_size: float = 20.0
- region_min_size: float = 2.0
- sample_partition_type: int (NavigationMesh.SamplePartitionType) = 0
- vertices_per_polygon: float = 6.0

**Methods:**
- add_polygon(polygon: PackedInt32Array)
- clear()
- clear_polygons()
- create_from_mesh(mesh: Mesh)
- get_collision_mask_value(layer_number: int) -> bool
- get_polygon(idx: int) -> PackedInt32Array
- get_polygon_count() -> int
- get_vertices() -> PackedVector3Array
- set_collision_mask_value(layer_number: int, value: bool)
- set_vertices(vertices: PackedVector3Array)

**Enums:**
**SamplePartitionType:** SAMPLE_PARTITION_WATERSHED=0, SAMPLE_PARTITION_MONOTONE=1, SAMPLE_PARTITION_LAYERS=2, SAMPLE_PARTITION_MAX=3
**ParsedGeometryType:** PARSED_GEOMETRY_MESH_INSTANCES=0, PARSED_GEOMETRY_STATIC_COLLIDERS=1, PARSED_GEOMETRY_BOTH=2, PARSED_GEOMETRY_MAX=3
**SourceGeometryMode:** SOURCE_GEOMETRY_ROOT_NODE_CHILDREN=0, SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN=1, SOURCE_GEOMETRY_GROUPS_EXPLICIT=2, SOURCE_GEOMETRY_MAX=3

