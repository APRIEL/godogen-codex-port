## PhysicsDirectSpaceState3D <- Object

Provides direct access to a physics space in the PhysicsServer3D. It's used mainly to do queries against objects and areas residing in a given space. **Note:** This class is not meant to be instantiated directly. Use `World3D.direct_space_state` to get the world's physics 3D space state.

**Methods:**
- cast_motion(parameters: PhysicsShapeQueryParameters3D) -> PackedFloat32Array
- collide_shape(parameters: PhysicsShapeQueryParameters3D, max_results: int = 32) -> Vector3[]
- get_rest_info(parameters: PhysicsShapeQueryParameters3D) -> Dictionary
- intersect_point(parameters: PhysicsPointQueryParameters3D, max_results: int = 32) -> Dictionary[]
- intersect_ray(parameters: PhysicsRayQueryParameters3D) -> Dictionary
- intersect_shape(parameters: PhysicsShapeQueryParameters3D, max_results: int = 32) -> Dictionary[]

