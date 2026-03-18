## AnimationNodeStateMachine <- AnimationRootNode

Contains multiple AnimationRootNodes representing animation states, connected in a graph. State transitions can be configured to happen automatically or via code, using a shortest-path algorithm. Retrieve the AnimationNodeStateMachinePlayback object from the AnimationTree node to control it programmatically.

**Props:**
- allow_transition_to_self: bool = false
- reset_ends: bool = false
- state_machine_type: int (AnimationNodeStateMachine.StateMachineType) = 0

**Methods:**
- add_node(name: StringName, node: AnimationNode, position: Vector2 = Vector2(0, 0))
- add_transition(from: StringName, to: StringName, transition: AnimationNodeStateMachineTransition)
- get_graph_offset() -> Vector2
- get_node(name: StringName) -> AnimationNode
- get_node_list() -> StringName[]
- get_node_name(node: AnimationNode) -> StringName
- get_node_position(name: StringName) -> Vector2
- get_transition(idx: int) -> AnimationNodeStateMachineTransition
- get_transition_count() -> int
- get_transition_from(idx: int) -> StringName
- get_transition_to(idx: int) -> StringName
- has_node(name: StringName) -> bool
- has_transition(from: StringName, to: StringName) -> bool
- remove_node(name: StringName)
- remove_transition(from: StringName, to: StringName)
- remove_transition_by_index(idx: int)
- rename_node(name: StringName, new_name: StringName)
- replace_node(name: StringName, node: AnimationNode)
- set_graph_offset(offset: Vector2)
- set_node_position(name: StringName, position: Vector2)

**Enums:**
**StateMachineType:** STATE_MACHINE_TYPE_ROOT=0, STATE_MACHINE_TYPE_NESTED=1, STATE_MACHINE_TYPE_GROUPED=2

