## Basis

The Basis built-in Variant type is a 3×3 used to represent 3D rotation, scale, and shear. It is frequently used within a Transform3D. A Basis is composed by 3 axis vectors, each representing a column of the matrix: `x`, `y`, and `z`. The length of each axis (`Vector3.length`) influences the basis's scale, while the direction of all axes influence the rotation. Usually, these axes are perpendicular to one another. However, when you rotate any axis individually, the basis becomes sheared. Applying a sheared basis to a 3D model will make the model appear distorted. A Basis is: - **Orthogonal** if its axes are perpendicular to each other. - **Normalized** if the length of every axis is `1.0`. - **Uniform** if all axes share the same length (see `get_scale`). - **Orthonormal** if it is both orthogonal and normalized, which allows it to only represent rotations (see `orthonormalized`). - **Conformal** if it is both orthogonal and uniform, which ensures it is not distorted. For a general introduction, see the tutorial. **Note:** Godot uses a , which is a common standard. For directions, the convention for built-in types like Camera3D is for -Z to point forward (+X is right, +Y is up, and +Z is back). Other objects may use different direction conventions. For more information, see the tutorial. **Note:** The basis matrices are exposed as order, which is the same as OpenGL. However, they are stored internally in row-major order, which is the same as DirectX. **Note:** In a boolean context, a basis will evaluate to `false` if it's equal to `IDENTITY`. Otherwise, a basis will always evaluate to `true`.

**Props:**
- x: Vector3 = Vector3(1, 0, 0)
- y: Vector3 = Vector3(0, 1, 0)
- z: Vector3 = Vector3(0, 0, 1)

**Methods:**
- determinant() -> float
- from_euler(euler: Vector3, order: int = 2) -> Basis
- from_scale(scale: Vector3) -> Basis
- get_euler(order: int = 2) -> Vector3
- get_rotation_quaternion() -> Quaternion
- get_scale() -> Vector3
- inverse() -> Basis
- is_conformal() -> bool
- is_equal_approx(b: Basis) -> bool
- is_finite() -> bool
- looking_at(target: Vector3, up: Vector3 = Vector3(0, 1, 0), use_model_front: bool = false) -> Basis
- orthonormalized() -> Basis
- rotated(axis: Vector3, angle: float) -> Basis
- scaled(scale: Vector3) -> Basis
- scaled_local(scale: Vector3) -> Basis
- slerp(to: Basis, weight: float) -> Basis
- tdotx(with: Vector3) -> float
- tdoty(with: Vector3) -> float
- tdotz(with: Vector3) -> float
- transposed() -> Basis

**Enums:**
**Constants:** IDENTITY=Basis(1, 0, 0, 0, 1, 0, 0, 0, 1), FLIP_X=Basis(-1, 0, 0, 0, 1, 0, 0, 0, 1), FLIP_Y=Basis(1, 0, 0, 0, -1, 0, 0, 0, 1), FLIP_Z=Basis(1, 0, 0, 0, 1, 0, 0, 0, -1)

