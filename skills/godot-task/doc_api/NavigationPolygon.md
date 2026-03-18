## NavigationPolygon <- Resource

A navigation mesh can be created either by baking it with the help of the NavigationServer2D, or by adding vertices and convex polygon indices arrays manually. To bake a navigation mesh at least one outline needs to be added that defines the outer bounds of the baked area. Adding vertices and polygon indices manually.

**Props:**
- agent_radius: float = 10.0
- baking_rect: Rect2 = Rect2(0, 0, 0, 0)
- baking_rect_offset: Vector2 = Vector2(0, 0)
- border_size: float = 0.0
- cell_size: float = 1.0
- parsed_collision_mask: int = 4294967295
- parsed_geometry_type: int (NavigationPolygon.ParsedGeometryType) = 2
- sample_partition_type: int (NavigationPolygon.SamplePartitionType) = 0
- source_geometry_group_name: StringName = &"navigation_polygon_source_geometry_group"
- source_geometry_mode: int (NavigationPolygon.SourceGeometryMode) = 0

**Methods:**
- add_outline(outline: PackedVector2Array)
- add_outline_at_index(outline: PackedVector2Array, index: int)
- add_polygon(polygon: PackedInt32Array)
- clear()
- clear_outlines()
- clear_polygons()
- get_navigation_mesh() -> NavigationMesh
- get_outline(idx: int) -> PackedVector2Array
- get_outline_count() -> int
- get_parsed_collision_mask_value(layer_number: int) -> bool
- get_polygon(idx: int) -> PackedInt32Array
- get_polygon_count() -> int
- get_vertices() -> PackedVector2Array
- make_polygons_from_outlines()
- remove_outline(idx: int)
- set_outline(idx: int, outline: PackedVector2Array)
- set_parsed_collision_mask_value(layer_number: int, value: bool)
- set_vertices(vertices: PackedVector2Array)

**Enums:**
**SamplePartitionType:** SAMPLE_PARTITION_CONVEX_PARTITION=0, SAMPLE_PARTITION_TRIANGULATE=1, SAMPLE_PARTITION_MAX=2
**ParsedGeometryType:** PARSED_GEOMETRY_MESH_INSTANCES=0, PARSED_GEOMETRY_STATIC_COLLIDERS=1, PARSED_GEOMETRY_BOTH=2, PARSED_GEOMETRY_MAX=3
**SourceGeometryMode:** SOURCE_GEOMETRY_ROOT_NODE_CHILDREN=0, SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN=1, SOURCE_GEOMETRY_GROUPS_EXPLICIT=2, SOURCE_GEOMETRY_MAX=3

