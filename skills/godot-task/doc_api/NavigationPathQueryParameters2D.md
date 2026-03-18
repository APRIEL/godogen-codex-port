## NavigationPathQueryParameters2D <- RefCounted

By changing various properties of this object, such as the start and target position, you can configure path queries to the NavigationServer2D.

**Props:**
- excluded_regions: RID[] = []
- included_regions: RID[] = []
- map: RID = RID()
- metadata_flags: int (NavigationPathQueryParameters2D.PathMetadataFlags) = 7
- navigation_layers: int = 1
- path_postprocessing: int (NavigationPathQueryParameters2D.PathPostProcessing) = 0
- path_return_max_length: float = 0.0
- path_return_max_radius: float = 0.0
- path_search_max_distance: float = 0.0
- path_search_max_polygons: int = 4096
- pathfinding_algorithm: int (NavigationPathQueryParameters2D.PathfindingAlgorithm) = 0
- simplify_epsilon: float = 0.0
- simplify_path: bool = false
- start_position: Vector2 = Vector2(0, 0)
- target_position: Vector2 = Vector2(0, 0)

**Enums:**
**PathfindingAlgorithm:** PATHFINDING_ALGORITHM_ASTAR=0
**PathPostProcessing:** PATH_POSTPROCESSING_CORRIDORFUNNEL=0, PATH_POSTPROCESSING_EDGECENTERED=1, PATH_POSTPROCESSING_NONE=2
**PathMetadataFlags:** PATH_METADATA_INCLUDE_NONE=0, PATH_METADATA_INCLUDE_TYPES=1, PATH_METADATA_INCLUDE_RIDS=2, PATH_METADATA_INCLUDE_OWNERS=4, PATH_METADATA_INCLUDE_ALL=7

