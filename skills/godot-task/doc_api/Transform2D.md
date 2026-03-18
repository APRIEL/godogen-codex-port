## Transform2D

The Transform2D built-in Variant type is a 2×3 representing a transformation in 2D space. It contains three Vector2 values: `x`, `y`, and `origin`. Together, they can represent translation, rotation, scale, and skew. The `x` and `y` axes form a 2×2 matrix, known as the transform's **basis**. The length of each axis (`Vector2.length`) influences the transform's scale, while the direction of all axes influence the rotation. Usually, both axes are perpendicular to one another. However, when you rotate one axis individually, the transform becomes skewed. Applying a skewed transform to a 2D sprite will make the sprite appear distorted. For a general introduction, see the tutorial. **Note:** Unlike Transform3D, there is no 2D equivalent to the Basis type. All mentions of "basis" refer to the `x` and `y` components of Transform2D. **Note:** In a boolean context, a Transform2D will evaluate to `false` if it's equal to `IDENTITY`. Otherwise, a Transform2D will always evaluate to `true`.

**Props:**
- origin: Vector2 = Vector2(0, 0)
- x: Vector2 = Vector2(1, 0)
- y: Vector2 = Vector2(0, 1)

**Methods:**
- affine_inverse() -> Transform2D
- basis_xform(v: Vector2) -> Vector2
- basis_xform_inv(v: Vector2) -> Vector2
- determinant() -> float
- get_origin() -> Vector2
- get_rotation() -> float
- get_scale() -> Vector2
- get_skew() -> float
- interpolate_with(xform: Transform2D, weight: float) -> Transform2D
- inverse() -> Transform2D
- is_conformal() -> bool
- is_equal_approx(xform: Transform2D) -> bool
- is_finite() -> bool
- looking_at(target: Vector2 = Vector2(0, 0)) -> Transform2D
- orthonormalized() -> Transform2D
- rotated(angle: float) -> Transform2D
- rotated_local(angle: float) -> Transform2D
- scaled(scale: Vector2) -> Transform2D
- scaled_local(scale: Vector2) -> Transform2D
- translated(offset: Vector2) -> Transform2D
- translated_local(offset: Vector2) -> Transform2D

**Enums:**
**Constants:** IDENTITY=Transform2D(1, 0, 0, 1, 0, 0), FLIP_X=Transform2D(-1, 0, 0, 1, 0, 0), FLIP_Y=Transform2D(1, 0, 0, -1, 0, 0)

