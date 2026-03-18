## PhysicsDirectSpaceState2D <- Object

Provides direct access to a physics space in the PhysicsServer2D. It's used mainly to do queries against objects and areas residing in a given space. **Note:** This class is not meant to be instantiated directly. Use `World2D.direct_space_state` to get the world's physics 2D space state.

**Methods:**
- cast_motion(parameters: PhysicsShapeQueryParameters2D) -> PackedFloat32Array
- collide_shape(parameters: PhysicsShapeQueryParameters2D, max_results: int = 32) -> Vector2[]
- get_rest_info(parameters: PhysicsShapeQueryParameters2D) -> Dictionary
- intersect_point(parameters: PhysicsPointQueryParameters2D, max_results: int = 32) -> Dictionary[]
- intersect_ray(parameters: PhysicsRayQueryParameters2D) -> Dictionary
- intersect_shape(parameters: PhysicsShapeQueryParameters2D, max_results: int = 32) -> Dictionary[]

