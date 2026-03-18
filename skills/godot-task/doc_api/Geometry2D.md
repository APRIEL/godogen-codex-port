## Geometry2D <- Object

Provides a set of helper functions to create geometric shapes, compute intersections between shapes, and process various other geometric operations in 2D.

**Methods:**
- bresenham_line(from: Vector2i, to: Vector2i) -> Vector2i[]
- clip_polygons(polygon_a: PackedVector2Array, polygon_b: PackedVector2Array) -> PackedVector2Array[]
- clip_polyline_with_polygon(polyline: PackedVector2Array, polygon: PackedVector2Array) -> PackedVector2Array[]
- convex_hull(points: PackedVector2Array) -> PackedVector2Array
- decompose_polygon_in_convex(polygon: PackedVector2Array) -> PackedVector2Array[]
- exclude_polygons(polygon_a: PackedVector2Array, polygon_b: PackedVector2Array) -> PackedVector2Array[]
- get_closest_point_to_segment(point: Vector2, s1: Vector2, s2: Vector2) -> Vector2
- get_closest_point_to_segment_uncapped(point: Vector2, s1: Vector2, s2: Vector2) -> Vector2
- get_closest_points_between_segments(p1: Vector2, q1: Vector2, p2: Vector2, q2: Vector2) -> PackedVector2Array
- intersect_polygons(polygon_a: PackedVector2Array, polygon_b: PackedVector2Array) -> PackedVector2Array[]
- intersect_polyline_with_polygon(polyline: PackedVector2Array, polygon: PackedVector2Array) -> PackedVector2Array[]
- is_point_in_circle(point: Vector2, circle_position: Vector2, circle_radius: float) -> bool
- is_point_in_polygon(point: Vector2, polygon: PackedVector2Array) -> bool
- is_polygon_clockwise(polygon: PackedVector2Array) -> bool
- line_intersects_line(from_a: Vector2, dir_a: Vector2, from_b: Vector2, dir_b: Vector2) -> Variant
- make_atlas(sizes: PackedVector2Array) -> Dictionary
- merge_polygons(polygon_a: PackedVector2Array, polygon_b: PackedVector2Array) -> PackedVector2Array[]
- offset_polygon(polygon: PackedVector2Array, delta: float, join_type: int = 0) -> PackedVector2Array[]
- offset_polyline(polyline: PackedVector2Array, delta: float, join_type: int = 0, end_type: int = 3) -> PackedVector2Array[]
- point_is_inside_triangle(point: Vector2, a: Vector2, b: Vector2, c: Vector2) -> bool
- segment_intersects_circle(segment_from: Vector2, segment_to: Vector2, circle_position: Vector2, circle_radius: float) -> float
- segment_intersects_segment(from_a: Vector2, to_a: Vector2, from_b: Vector2, to_b: Vector2) -> Variant
- triangulate_delaunay(points: PackedVector2Array) -> PackedInt32Array
- triangulate_polygon(polygon: PackedVector2Array) -> PackedInt32Array

**Enums:**
**PolyBooleanOperation:** OPERATION_UNION=0, OPERATION_DIFFERENCE=1, OPERATION_INTERSECTION=2, OPERATION_XOR=3
**PolyJoinType:** JOIN_SQUARE=0, JOIN_ROUND=1, JOIN_MITER=2
**PolyEndType:** END_POLYGON=0, END_JOINED=1, END_BUTT=2, END_SQUARE=3, END_ROUND=4

