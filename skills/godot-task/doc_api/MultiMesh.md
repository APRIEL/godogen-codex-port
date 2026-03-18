## MultiMesh <- Resource

MultiMesh provides low-level mesh instancing. Drawing thousands of MeshInstance3D nodes can be slow, since each object is submitted to the GPU then drawn individually. MultiMesh is much faster as it can draw thousands of instances with a single draw call, resulting in less API overhead. As a drawback, if the instances are too far away from each other, performance may be reduced as every single instance will always render (they are spatially indexed as one, for the whole object). Since instances may have any behavior, the AABB used for visibility must be provided by the user. **Note:** A MultiMesh is a single object, therefore the same maximum lights per object restriction applies. This means, that once the maximum lights are consumed by one or more instances, the rest of the MultiMesh instances will **not** receive any lighting. **Note:** Blend Shapes will be ignored if used in a MultiMesh.

**Props:**
- buffer: PackedFloat32Array = PackedFloat32Array()
- color_array: PackedColorArray
- custom_aabb: AABB = AABB(0, 0, 0, 0, 0, 0)
- custom_data_array: PackedColorArray
- instance_count: int = 0
- mesh: Mesh
- physics_interpolation_quality: int (MultiMesh.PhysicsInterpolationQuality) = 0
- transform_2d_array: PackedVector2Array
- transform_array: PackedVector3Array
- transform_format: int (MultiMesh.TransformFormat) = 0
- use_colors: bool = false
- use_custom_data: bool = false
- visible_instance_count: int = -1

**Methods:**
- get_aabb() -> AABB
- get_instance_color(instance: int) -> Color
- get_instance_custom_data(instance: int) -> Color
- get_instance_transform(instance: int) -> Transform3D
- get_instance_transform_2d(instance: int) -> Transform2D
- reset_instance_physics_interpolation(instance: int)
- reset_instances_physics_interpolation()
- set_buffer_interpolated(buffer_curr: PackedFloat32Array, buffer_prev: PackedFloat32Array)
- set_instance_color(instance: int, color: Color)
- set_instance_custom_data(instance: int, custom_data: Color)
- set_instance_transform(instance: int, transform: Transform3D)
- set_instance_transform_2d(instance: int, transform: Transform2D)

**Enums:**
**TransformFormat:** TRANSFORM_2D=0, TRANSFORM_3D=1
**PhysicsInterpolationQuality:** INTERP_QUALITY_FAST=0, INTERP_QUALITY_HIGH=1

