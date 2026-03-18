## VisualShaderNode <- Resource

Visual shader graphs consist of various nodes. Each node in the graph is a separate object and they are represented as a rectangular boxes with title and a set of properties. Each node also has connection ports that allow to connect it to another nodes and control the flow of the shader.

**Props:**
- linked_parent_graph_frame: int = -1
- output_port_for_preview: int = -1

**Methods:**
- clear_default_input_values()
- get_default_input_port(type: int) -> int
- get_default_input_values() -> Array
- get_input_port_default_value(port: int) -> Variant
- remove_input_port_default_value(port: int)
- set_default_input_values(values: Array)
- set_input_port_default_value(port: int, value: Variant, prev_value: Variant = null)

**Enums:**
**PortType:** PORT_TYPE_SCALAR=0, PORT_TYPE_SCALAR_INT=1, PORT_TYPE_SCALAR_UINT=2, PORT_TYPE_VECTOR_2D=3, PORT_TYPE_VECTOR_3D=4, PORT_TYPE_VECTOR_4D=5, PORT_TYPE_BOOLEAN=6, PORT_TYPE_TRANSFORM=7, PORT_TYPE_SAMPLER=8, PORT_TYPE_MAX=9

