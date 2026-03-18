## Plane

Represents a normalized plane equation. `normal` is the normal of the plane (a, b, c normalized), and `d` is the distance from the origin to the plane (in the direction of "normal"). "Over" or "Above" the plane is considered the side of the plane towards where the normal is pointing. **Note:** In a boolean context, a plane will evaluate to `false` if all its components equal `0`. Otherwise, a plane will always evaluate to `true`.

**Props:**
- d: float = 0.0
- normal: Vector3 = Vector3(0, 0, 0)
- x: float = 0.0
- y: float = 0.0
- z: float = 0.0

**Methods:**
- distance_to(point: Vector3) -> float
- get_center() -> Vector3
- has_point(point: Vector3, tolerance: float = 1e-05) -> bool
- intersect_3(b: Plane, c: Plane) -> Variant
- intersects_ray(from: Vector3, dir: Vector3) -> Variant
- intersects_segment(from: Vector3, to: Vector3) -> Variant
- is_equal_approx(to_plane: Plane) -> bool
- is_finite() -> bool
- is_point_over(point: Vector3) -> bool
- normalized() -> Plane
- project(point: Vector3) -> Vector3

**Enums:**
**Constants:** PLANE_YZ=Plane(1, 0, 0, 0), PLANE_XZ=Plane(0, 1, 0, 0), PLANE_XY=Plane(0, 0, 1, 0)

