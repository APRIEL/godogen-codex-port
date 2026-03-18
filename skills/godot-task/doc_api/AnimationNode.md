## AnimationNode <- Resource

Base resource for AnimationTree nodes. In general, it's not used directly, but you can create custom ones with custom blending formulas. Inherit this when creating animation nodes mainly for use in AnimationNodeBlendTree, otherwise AnimationRootNode should be used instead. You can access the time information as read-only parameter which is processed and stored in the previous frame for all nodes except AnimationNodeOutput. **Note:** If multiple inputs exist in the AnimationNode, which time information takes precedence depends on the type of AnimationNode.

**Props:**
- filter_enabled: bool

**Methods:**
- add_input(name: String) -> bool
- blend_animation(animation: StringName, time: float, delta: float, seeked: bool, is_external_seeking: bool, blend: float, looped_flag: int = 0)
- blend_input(input_index: int, time: float, seek: bool, is_external_seeking: bool, blend: float, filter: int = 0, sync: bool = true, test_only: bool = false) -> float
- blend_node(name: StringName, node: AnimationNode, time: float, seek: bool, is_external_seeking: bool, blend: float, filter: int = 0, sync: bool = true, test_only: bool = false) -> float
- find_input(name: String) -> int
- get_input_count() -> int
- get_input_name(input: int) -> String
- get_parameter(name: StringName) -> Variant
- get_processing_animation_tree_instance_id() -> int
- is_path_filtered(path: NodePath) -> bool
- is_process_testing() -> bool
- remove_input(index: int)
- set_filter_path(path: NodePath, enable: bool)
- set_input_name(input: int, name: String) -> bool
- set_parameter(name: StringName, value: Variant)

**Signals:**
- animation_node_removed(object_id: int, name: String)
- animation_node_renamed(object_id: int, old_name: String, new_name: String)
- tree_changed

**Enums:**
**FilterAction:** FILTER_IGNORE=0, FILTER_PASS=1, FILTER_STOP=2, FILTER_BLEND=3

