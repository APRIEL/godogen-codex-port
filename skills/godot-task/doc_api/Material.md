## Material <- Resource

Material is a base resource used for coloring and shading geometry. All materials inherit from it and almost all VisualInstance3D derived nodes carry a Material. A few flags and parameters are shared between all material types and are configured here. Importantly, you can inherit from Material to create your own custom material type in script or in GDExtension.

**Props:**
- next_pass: Material
- render_priority: int

**Methods:**
- create_placeholder() -> Resource
- inspect_native_shader_code()

**Enums:**
**Constants:** RENDER_PRIORITY_MAX=127, RENDER_PRIORITY_MIN=-128

