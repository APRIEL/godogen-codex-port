## AnimationNodeExtension <- AnimationNode

AnimationNodeExtension exposes the APIs of AnimationRootNode to allow users to extend it from GDScript, C#, or C++. This class is not meant to be used directly, but to be extended by other classes. It is used to create custom nodes for the AnimationTree system.

**Methods:**
- get_remaining_time(node_info: PackedFloat32Array, break_loop: bool) -> float
- is_looping(node_info: PackedFloat32Array) -> bool

