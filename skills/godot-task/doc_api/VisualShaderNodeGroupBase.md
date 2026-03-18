## VisualShaderNodeGroupBase <- VisualShaderNodeResizableBase

Currently, has no direct usage, use the derived classes instead.

**Methods:**
- add_input_port(id: int, type: int, name: String)
- add_output_port(id: int, type: int, name: String)
- clear_input_ports()
- clear_output_ports()
- get_free_input_port_id() -> int
- get_free_output_port_id() -> int
- get_input_port_count() -> int
- get_inputs() -> String
- get_output_port_count() -> int
- get_outputs() -> String
- has_input_port(id: int) -> bool
- has_output_port(id: int) -> bool
- is_valid_port_name(name: String) -> bool
- remove_input_port(id: int)
- remove_output_port(id: int)
- set_input_port_name(id: int, name: String)
- set_input_port_type(id: int, type: int)
- set_inputs(inputs: String)
- set_output_port_name(id: int, name: String)
- set_output_port_type(id: int, type: int)
- set_outputs(outputs: String)

