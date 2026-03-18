## ImmediateMesh <- Mesh

A mesh type optimized for creating geometry manually, similar to OpenGL 1.x immediate mode. Here's a sample on how to generate a triangular face: **Note:** Generating complex geometries with ImmediateMesh is highly inefficient. Instead, it is designed to generate simple geometry that changes often.

**Methods:**
- clear_surfaces()
- surface_add_vertex(vertex: Vector3)
- surface_add_vertex_2d(vertex: Vector2)
- surface_begin(primitive: int, material: Material = null)
- surface_end()
- surface_set_color(color: Color)
- surface_set_normal(normal: Vector3)
- surface_set_tangent(tangent: Plane)
- surface_set_uv(uv: Vector2)
- surface_set_uv2(uv2: Vector2)

