## HeightMapShape3D <- Shape3D

A 3D heightmap shape, intended for use in physics to provide a shape for a CollisionShape3D. This type is most commonly used for terrain with vertices placed in a fixed-width grid. The heightmap is represented as a 2D grid of height values, which represent the position of grid points on the Y axis. Grid points are spaced 1 unit apart on the X and Z axes, and the grid is centered on the origin of the CollisionShape3D node. Internally, each grid square is divided into two triangles. Due to the nature of the heightmap, it cannot be used to model overhangs or caves, which would require multiple vertices at the same vertical location. Holes can be punched through the collision by assigning `@GDScript.NAN` to the height of the desired vertices (this is supported in both GodotPhysics3D and Jolt Physics). You could then insert meshes with their own separate collision to provide overhangs, caves, and so on. **Performance:** HeightMapShape3D is faster to check collisions against than ConcavePolygonShape3D, but it is significantly slower than primitive shapes like BoxShape3D. A heightmap collision shape can also be built by using an Image reference: **Note:** If you need to use a spacing different than 1 unit, you can adjust the `Node3D.scale` of the shape. However, keep in mind that GodotPhysics3D does not support non-uniform scaling: you'll need to scale the Y axis by the same amount as the X and Z axes, which means the values in `map_data` will need to be pre-scaled by the inverse of that scale. Also note that GodotPhysics3D does not support scaling at all for dynamic bodies (that is, non-frozen RigidBody3D nodes); to use a scaled HeightMapShape3D with those, you will need to use Jolt Physics.

**Props:**
- map_data: PackedFloat32Array = PackedFloat32Array(0, 0, 0, 0)
- map_depth: int = 2
- map_width: int = 2

**Methods:**
- get_max_height() -> float
- get_min_height() -> float
- update_map_data_from_image(image: Image, height_min: float, height_max: float)

