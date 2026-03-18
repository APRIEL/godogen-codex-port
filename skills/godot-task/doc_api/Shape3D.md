## Shape3D <- Resource

Abstract base class for all 3D shapes, intended for use in physics. **Performance:** Primitive shapes, especially SphereShape3D, are fast to check collisions against. ConvexPolygonShape3D and HeightMapShape3D are slower, and ConcavePolygonShape3D is the slowest.

**Props:**
- custom_solver_bias: float = 0.0
- margin: float = 0.04

**Methods:**
- get_debug_mesh() -> ArrayMesh

