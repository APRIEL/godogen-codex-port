## NavigationMeshSourceGeometryData2D <- Resource

Container for parsed source geometry data used in navigation mesh baking.

**Methods:**
- add_obstruction_outline(shape_outline: PackedVector2Array)
- add_projected_obstruction(vertices: PackedVector2Array, carve: bool)
- add_traversable_outline(shape_outline: PackedVector2Array)
- append_obstruction_outlines(obstruction_outlines: PackedVector2Array[])
- append_traversable_outlines(traversable_outlines: PackedVector2Array[])
- clear()
- clear_projected_obstructions()
- get_bounds() -> Rect2
- get_obstruction_outlines() -> PackedVector2Array[]
- get_projected_obstructions() -> Array
- get_traversable_outlines() -> PackedVector2Array[]
- has_data() -> bool
- merge(other_geometry: NavigationMeshSourceGeometryData2D)
- set_obstruction_outlines(obstruction_outlines: PackedVector2Array[])
- set_projected_obstructions(projected_obstructions: Array)
- set_traversable_outlines(traversable_outlines: PackedVector2Array[])

