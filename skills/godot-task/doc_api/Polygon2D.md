## Polygon2D <- Node2D

A Polygon2D is defined by a set of points. Each point is connected to the next, with the final point being connected to the first, resulting in a closed polygon. Polygon2Ds can be filled with color (solid or gradient) or filled with a given texture.

**Props:**
- antialiased: bool = false
- color: Color = Color(1, 1, 1, 1)
- internal_vertex_count: int = 0
- invert_border: float = 100.0
- invert_enabled: bool = false
- offset: Vector2 = Vector2(0, 0)
- polygon: PackedVector2Array = PackedVector2Array()
- polygons: Array = []
- skeleton: NodePath = NodePath("")
- texture: Texture2D
- texture_offset: Vector2 = Vector2(0, 0)
- texture_rotation: float = 0.0
- texture_scale: Vector2 = Vector2(1, 1)
- uv: PackedVector2Array = PackedVector2Array()
- vertex_colors: PackedColorArray = PackedColorArray()

**Methods:**
- add_bone(path: NodePath, weights: PackedFloat32Array)
- clear_bones()
- erase_bone(index: int)
- get_bone_count() -> int
- get_bone_path(index: int) -> NodePath
- get_bone_weights(index: int) -> PackedFloat32Array
- set_bone_path(index: int, path: NodePath)
- set_bone_weights(index: int, weights: PackedFloat32Array)

