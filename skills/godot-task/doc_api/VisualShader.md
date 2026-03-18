## VisualShader <- Shader

This class provides a graph-like visual editor for creating a Shader. Although VisualShaders do not require coding, they share the same logic with script shaders. They use VisualShaderNodes that can be connected to each other to control the flow of the shader. The visual shader graph is converted to a script shader behind the scenes.

**Props:**
- graph_offset: Vector2

**Methods:**
- add_node(type: int, node: VisualShaderNode, position: Vector2, id: int)
- add_varying(name: String, mode: int, type: int)
- attach_node_to_frame(type: int, id: int, frame: int)
- can_connect_nodes(type: int, from_node: int, from_port: int, to_node: int, to_port: int) -> bool
- connect_nodes(type: int, from_node: int, from_port: int, to_node: int, to_port: int) -> int
- connect_nodes_forced(type: int, from_node: int, from_port: int, to_node: int, to_port: int)
- detach_node_from_frame(type: int, id: int)
- disconnect_nodes(type: int, from_node: int, from_port: int, to_node: int, to_port: int)
- get_node(type: int, id: int) -> VisualShaderNode
- get_node_connections(type: int) -> Dictionary[]
- get_node_list(type: int) -> PackedInt32Array
- get_node_position(type: int, id: int) -> Vector2
- get_valid_node_id(type: int) -> int
- has_varying(name: String) -> bool
- is_node_connection(type: int, from_node: int, from_port: int, to_node: int, to_port: int) -> bool
- remove_node(type: int, id: int)
- remove_varying(name: String)
- replace_node(type: int, id: int, new_class: StringName)
- set_mode(mode: int)
- set_node_position(type: int, id: int, position: Vector2)

**Enums:**
**Type:** TYPE_VERTEX=0, TYPE_FRAGMENT=1, TYPE_LIGHT=2, TYPE_START=3, TYPE_PROCESS=4, TYPE_COLLIDE=5, TYPE_START_CUSTOM=6, TYPE_PROCESS_CUSTOM=7, TYPE_SKY=8, TYPE_FOG=9, ...
**VaryingMode:** VARYING_MODE_VERTEX_TO_FRAG_LIGHT=0, VARYING_MODE_FRAG_TO_LIGHT=1, VARYING_MODE_MAX=2
**VaryingType:** VARYING_TYPE_FLOAT=0, VARYING_TYPE_INT=1, VARYING_TYPE_UINT=2, VARYING_TYPE_VECTOR_2D=3, VARYING_TYPE_VECTOR_3D=4, VARYING_TYPE_VECTOR_4D=5, VARYING_TYPE_BOOLEAN=6, VARYING_TYPE_TRANSFORM=7, VARYING_TYPE_MAX=8
**Constants:** NODE_ID_INVALID=-1, NODE_ID_OUTPUT=0

