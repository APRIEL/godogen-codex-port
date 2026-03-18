## Geometry3D <- Object

Provides a set of helper functions to create geometric shapes, compute intersections between shapes, and process various other geometric operations in 3D.

**Methods:**
- build_box_planes(extents: Vector3) -> Plane[]
- build_capsule_planes(radius: float, height: float, sides: int, lats: int, axis: int = 2) -> Plane[]
- build_cylinder_planes(radius: float, height: float, sides: int, axis: int = 2) -> Plane[]
- clip_polygon(points: PackedVector3Array, plane: Plane) -> PackedVector3Array
- compute_convex_mesh_points(planes: Plane[]) -> PackedVector3Array
- get_closest_point_to_segment(point: Vector3, s1: Vector3, s2: Vector3) -> Vector3
- get_closest_point_to_segment_uncapped(point: Vector3, s1: Vector3, s2: Vector3) -> Vector3
- get_closest_points_between_segments(p1: Vector3, p2: Vector3, q1: Vector3, q2: Vector3) -> PackedVector3Array
- get_triangle_barycentric_coords(point: Vector3, a: Vector3, b: Vector3, c: Vector3) -> Vector3
- ray_intersects_triangle(from: Vector3, dir: Vector3, a: Vector3, b: Vector3, c: Vector3) -> Variant
- segment_intersects_convex(from: Vector3, to: Vector3, planes: Plane[]) -> PackedVector3Array
- segment_intersects_cylinder(from: Vector3, to: Vector3, height: float, radius: float) -> PackedVector3Array
- segment_intersects_sphere(from: Vector3, to: Vector3, sphere_position: Vector3, sphere_radius: float) -> PackedVector3Array
- segment_intersects_triangle(from: Vector3, to: Vector3, a: Vector3, b: Vector3, c: Vector3) -> Variant
- tetrahedralize_delaunay(points: PackedVector3Array) -> PackedInt32Array

