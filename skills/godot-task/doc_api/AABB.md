## AABB

The AABB built-in Variant type represents an axis-aligned bounding box in a 3D space. It is defined by its `position` and `size`, which are Vector3. It is frequently used for fast overlap tests (see `intersects`). Although AABB itself is axis-aligned, it can be combined with Transform3D to represent a rotated or skewed bounding box. It uses floating-point coordinates. The 2D counterpart to AABB is Rect2. There is no version of AABB that uses integer coordinates. **Note:** Negative values for `size` are not supported. With negative size, most AABB methods do not work correctly. Use `abs` to get an equivalent AABB with a non-negative size. **Note:** In a boolean context, an AABB evaluates to `false` if both `position` and `size` are zero (equal to `Vector3.ZERO`). Otherwise, it always evaluates to `true`.

**Props:**
- end: Vector3 = Vector3(0, 0, 0)
- position: Vector3 = Vector3(0, 0, 0)
- size: Vector3 = Vector3(0, 0, 0)

**Methods:**
- abs() -> AABB
- encloses(with: AABB) -> bool
- expand(to_point: Vector3) -> AABB
- get_center() -> Vector3
- get_endpoint(idx: int) -> Vector3
- get_longest_axis() -> Vector3
- get_longest_axis_index() -> int
- get_longest_axis_size() -> float
- get_shortest_axis() -> Vector3
- get_shortest_axis_index() -> int
- get_shortest_axis_size() -> float
- get_support(direction: Vector3) -> Vector3
- get_volume() -> float
- grow(by: float) -> AABB
- has_point(point: Vector3) -> bool
- has_surface() -> bool
- has_volume() -> bool
- intersection(with: AABB) -> AABB
- intersects(with: AABB) -> bool
- intersects_plane(plane: Plane) -> bool
- intersects_ray(from: Vector3, dir: Vector3) -> Variant
- intersects_segment(from: Vector3, to: Vector3) -> Variant
- is_equal_approx(aabb: AABB) -> bool
- is_finite() -> bool
- merge(with: AABB) -> AABB

