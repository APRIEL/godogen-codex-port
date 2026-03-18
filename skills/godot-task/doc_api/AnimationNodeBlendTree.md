## AnimationNodeBlendTree <- AnimationRootNode

This animation node may contain a sub-tree of any other type animation nodes, such as AnimationNodeTransition, AnimationNodeBlend2, AnimationNodeBlend3, AnimationNodeOneShot, etc. This is one of the most commonly used animation node roots. An AnimationNodeOutput node named `output` is created by default.

**Props:**
- graph_offset: Vector2 = Vector2(0, 0)

**Methods:**
- add_node(name: StringName, node: AnimationNode, position: Vector2 = Vector2(0, 0))
- connect_node(input_node: StringName, input_index: int, output_node: StringName)
- disconnect_node(input_node: StringName, input_index: int)
- get_node(name: StringName) -> AnimationNode
- get_node_list() -> StringName[]
- get_node_position(name: StringName) -> Vector2
- has_node(name: StringName) -> bool
- remove_node(name: StringName)
- rename_node(name: StringName, new_name: StringName)
- set_node_position(name: StringName, position: Vector2)

**Signals:**
- node_changed(node_name: StringName)

**Enums:**
**Constants:** CONNECTION_OK=0, CONNECTION_ERROR_NO_INPUT=1, CONNECTION_ERROR_NO_INPUT_INDEX=2, CONNECTION_ERROR_NO_OUTPUT=3, CONNECTION_ERROR_SAME_NODE=4, CONNECTION_ERROR_CONNECTION_EXISTS=5

