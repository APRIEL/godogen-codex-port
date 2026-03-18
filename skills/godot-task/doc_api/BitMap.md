## BitMap <- Resource

A two-dimensional array of boolean values, can be used to efficiently store a binary matrix (every matrix element takes only one bit) and query the values using natural cartesian coordinates.

**Methods:**
- convert_to_image() -> Image
- create(size: Vector2i)
- create_from_image_alpha(image: Image, threshold: float = 0.1)
- get_bit(x: int, y: int) -> bool
- get_bitv(position: Vector2i) -> bool
- get_size() -> Vector2i
- get_true_bit_count() -> int
- grow_mask(pixels: int, rect: Rect2i)
- opaque_to_polygons(rect: Rect2i, epsilon: float = 2.0) -> PackedVector2Array[]
- resize(new_size: Vector2i)
- set_bit(x: int, y: int, bit: bool)
- set_bit_rect(rect: Rect2i, bit: bool)
- set_bitv(position: Vector2i, bit: bool)

