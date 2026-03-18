## GraphNode <- GraphElement

GraphNode allows to create nodes for a GraphEdit graph with customizable content based on its child controls. GraphNode is derived from Container and it is responsible for placing its children on screen. This works similar to VBoxContainer. Children, in turn, provide GraphNode with so-called slots, each of which can have a connection port on either side. Each GraphNode slot is defined by its index and can provide the node with up to two ports: one on the left, and one on the right. By convention the left port is also referred to as the **input port** and the right port is referred to as the **output port**. Each port can be enabled and configured individually, using different type and color. The type is an arbitrary value that you can define using your own considerations. The parent GraphEdit will receive this information on each connect and disconnect request. Slots can be configured in the Inspector dock once you add at least one child Control. The properties are grouped by each slot's index in the "Slot" section. **Note:** While GraphNode is set up using slots and slot indices, connections are made between the ports which are enabled. Because of that GraphEdit uses the port's index and not the slot's index. You can use `get_input_port_slot` and `get_output_port_slot` to get the slot index from the port index.

**Props:**
- focus_mode: int (Control.FocusMode) = 3
- ignore_invalid_connection_type: bool = false
- mouse_filter: int (Control.MouseFilter) = 0
- slots_focus_mode: int (Control.FocusMode) = 3
- title: String = ""

**Methods:**
- clear_all_slots()
- clear_slot(slot_index: int)
- get_input_port_color(port_idx: int) -> Color
- get_input_port_count() -> int
- get_input_port_position(port_idx: int) -> Vector2
- get_input_port_slot(port_idx: int) -> int
- get_input_port_type(port_idx: int) -> int
- get_output_port_color(port_idx: int) -> Color
- get_output_port_count() -> int
- get_output_port_position(port_idx: int) -> Vector2
- get_output_port_slot(port_idx: int) -> int
- get_output_port_type(port_idx: int) -> int
- get_slot_color_left(slot_index: int) -> Color
- get_slot_color_right(slot_index: int) -> Color
- get_slot_custom_icon_left(slot_index: int) -> Texture2D
- get_slot_custom_icon_right(slot_index: int) -> Texture2D
- get_slot_metadata_left(slot_index: int) -> Variant
- get_slot_metadata_right(slot_index: int) -> Variant
- get_slot_type_left(slot_index: int) -> int
- get_slot_type_right(slot_index: int) -> int
- get_titlebar_hbox() -> HBoxContainer
- is_slot_draw_stylebox(slot_index: int) -> bool
- is_slot_enabled_left(slot_index: int) -> bool
- is_slot_enabled_right(slot_index: int) -> bool
- set_slot(slot_index: int, enable_left_port: bool, type_left: int, color_left: Color, enable_right_port: bool, type_right: int, color_right: Color, custom_icon_left: Texture2D = null, custom_icon_right: Texture2D = null, draw_stylebox: bool = true)
- set_slot_color_left(slot_index: int, color: Color)
- set_slot_color_right(slot_index: int, color: Color)
- set_slot_custom_icon_left(slot_index: int, custom_icon: Texture2D)
- set_slot_custom_icon_right(slot_index: int, custom_icon: Texture2D)
- set_slot_draw_stylebox(slot_index: int, enable: bool)
- set_slot_enabled_left(slot_index: int, enable: bool)
- set_slot_enabled_right(slot_index: int, enable: bool)
- set_slot_metadata_left(slot_index: int, value: Variant)
- set_slot_metadata_right(slot_index: int, value: Variant)
- set_slot_type_left(slot_index: int, type: int)
- set_slot_type_right(slot_index: int, type: int)

**Signals:**
- slot_sizes_changed
- slot_updated(slot_index: int)

