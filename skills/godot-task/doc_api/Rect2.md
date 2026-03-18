## Rect2

The Rect2 built-in Variant type represents an axis-aligned rectangle in a 2D space. It is defined by its `position` and `size`, which are Vector2. It is frequently used for fast overlap tests (see `intersects`). Although Rect2 itself is axis-aligned, it can be combined with Transform2D to represent a rotated or skewed rectangle. For integer coordinates, use Rect2i. The 3D equivalent to Rect2 is AABB. **Note:** Negative values for `size` are not supported. With negative size, most Rect2 methods do not work correctly. Use `abs` to get an equivalent Rect2 with a non-negative size. **Note:** In a boolean context, a Rect2 evaluates to `false` if both `position` and `size` are zero (equal to `Vector2.ZERO`). Otherwise, it always evaluates to `true`.

**Props:**
- end: Vector2 = Vector2(0, 0)
- position: Vector2 = Vector2(0, 0)
- size: Vector2 = Vector2(0, 0)

**Methods:**
- abs() -> Rect2
- encloses(b: Rect2) -> bool
- expand(to: Vector2) -> Rect2
- get_area() -> float
- get_center() -> Vector2
- get_support(direction: Vector2) -> Vector2
- grow(amount: float) -> Rect2
- grow_individual(left: float, top: float, right: float, bottom: float) -> Rect2
- grow_side(side: int, amount: float) -> Rect2
- has_area() -> bool
- has_point(point: Vector2) -> bool
- intersection(b: Rect2) -> Rect2
- intersects(b: Rect2, include_borders: bool = false) -> bool
- is_equal_approx(rect: Rect2) -> bool
- is_finite() -> bool
- merge(b: Rect2) -> Rect2

