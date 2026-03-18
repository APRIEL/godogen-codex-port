## VisualInstance3D <- Node3D

The VisualInstance3D is used to connect a resource to a visual representation. All visual 3D nodes inherit from the VisualInstance3D. In general, you should not access the VisualInstance3D properties directly as they are accessed and managed by the nodes that inherit from VisualInstance3D. VisualInstance3D is the node representation of the RenderingServer instance.

**Props:**
- layers: int = 1
- sorting_offset: float = 0.0
- sorting_use_aabb_center: bool

**Methods:**
- get_aabb() -> AABB
- get_base() -> RID
- get_instance() -> RID
- get_layer_mask_value(layer_number: int) -> bool
- set_base(base: RID)
- set_layer_mask_value(layer_number: int, value: bool)

