## SceneState <- RefCounted

Maintains a list of resources, nodes, exported and overridden properties, and built-in scripts associated with a scene. They cannot be modified from a SceneState, only accessed. Useful for peeking into what a PackedScene contains without instantiating it. This class cannot be instantiated directly, it is retrieved for a given scene as the result of `PackedScene.get_state`.

**Methods:**
- get_base_scene_state() -> SceneState
- get_connection_binds(idx: int) -> Array
- get_connection_count() -> int
- get_connection_flags(idx: int) -> int
- get_connection_method(idx: int) -> StringName
- get_connection_signal(idx: int) -> StringName
- get_connection_source(idx: int) -> NodePath
- get_connection_target(idx: int) -> NodePath
- get_connection_unbinds(idx: int) -> int
- get_node_count() -> int
- get_node_groups(idx: int) -> PackedStringArray
- get_node_index(idx: int) -> int
- get_node_instance(idx: int) -> PackedScene
- get_node_instance_placeholder(idx: int) -> String
- get_node_name(idx: int) -> StringName
- get_node_owner_path(idx: int) -> NodePath
- get_node_path(idx: int, for_parent: bool = false) -> NodePath
- get_node_property_count(idx: int) -> int
- get_node_property_name(idx: int, prop_idx: int) -> StringName
- get_node_property_value(idx: int, prop_idx: int) -> Variant
- get_node_type(idx: int) -> StringName
- get_path() -> String
- is_node_instance_placeholder(idx: int) -> bool

**Enums:**
**GenEditState:** GEN_EDIT_STATE_DISABLED=0, GEN_EDIT_STATE_INSTANCE=1, GEN_EDIT_STATE_MAIN=2, GEN_EDIT_STATE_MAIN_INHERITED=3

