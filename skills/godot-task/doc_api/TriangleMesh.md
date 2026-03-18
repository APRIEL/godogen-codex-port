## TriangleMesh <- RefCounted

Creates a bounding volume hierarchy (BVH) tree structure around triangle geometry. The triangle BVH tree can be used for efficient intersection queries without involving a physics engine. For example, this can be used in editor tools to select objects with complex shapes based on the mouse cursor position. **Performance:** Creating the BVH tree for complex geometry is a slow process and best done in a background thread.

**Methods:**
- create_from_faces(faces: PackedVector3Array) -> bool
- get_faces() -> PackedVector3Array
- intersect_ray(begin: Vector3, dir: Vector3) -> Dictionary
- intersect_segment(begin: Vector3, end: Vector3) -> Dictionary

