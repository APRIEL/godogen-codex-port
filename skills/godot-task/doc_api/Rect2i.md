## Rect2i

The Rect2i built-in Variant type represents an axis-aligned rectangle in a 2D space, using integer coordinates. It is defined by its `position` and `size`, which are Vector2i. Because it does not rotate, it is frequently used for fast overlap tests (see `intersects`). For floating-point coordinates, see Rect2. **Note:** Negative values for `size` are not supported. With negative size, most Rect2i methods do not work correctly. Use `abs` to get an equivalent Rect2i with a non-negative size. **Note:** In a boolean context, a Rect2i evaluates to `false` if both `position` and `size` are zero (equal to `Vector2i.ZERO`). Otherwise, it always evaluates to `true`.

**Props:**
- end: Vector2i = Vector2i(0, 0)
- position: Vector2i = Vector2i(0, 0)
- size: Vector2i = Vector2i(0, 0)

**Methods:**
- abs() -> Rect2i
- encloses(b: Rect2i) -> bool
- expand(to: Vector2i) -> Rect2i
- get_area() -> int
- get_center() -> Vector2i
- grow(amount: int) -> Rect2i
- grow_individual(left: int, top: int, right: int, bottom: int) -> Rect2i
- grow_side(side: int, amount: int) -> Rect2i
- has_area() -> bool
- has_point(point: Vector2i) -> bool
- intersection(b: Rect2i) -> Rect2i
- intersects(b: Rect2i) -> bool
- merge(b: Rect2i) -> Rect2i

