## GraphEdit <- Control

GraphEdit provides tools for creation, manipulation, and display of various graphs. Its main purpose in the engine is to power the visual programming systems, such as visual shaders, but it is also available for use in user projects. GraphEdit by itself is only an empty container, representing an infinite grid where GraphNodes can be placed. Each GraphNode represents a node in the graph, a single unit of data in the connected scheme. GraphEdit, in turn, helps to control various interactions with nodes and between nodes. When the user attempts to connect, disconnect, or delete a GraphNode, a signal is emitted in the GraphEdit, but no action is taken by default. It is the responsibility of the programmer utilizing this control to implement the necessary logic to determine how each request should be handled. **Performance:** It is greatly advised to enable low-processor usage mode (see `OS.low_processor_usage_mode`) when using GraphEdits. **Note:** Keep in mind that `Node.get_children` will also return the connection layer node named `_connection_layer` due to technical limitations. This behavior may change in future releases.

**Props:**
- clip_contents: bool = true
- connection_lines_antialiased: bool = true
- connection_lines_curvature: float = 0.5
- connection_lines_thickness: float = 4.0
- connections: Dictionary[] = []
- focus_mode: int (Control.FocusMode) = 2
- grid_pattern: int (GraphEdit.GridPattern) = 0
- minimap_enabled: bool = true
- minimap_opacity: float = 0.65
- minimap_size: Vector2 = Vector2(240, 160)
- panning_scheme: int (GraphEdit.PanningScheme) = 0
- right_disconnects: bool = false
- scroll_offset: Vector2 = Vector2(0, 0)
- show_arrange_button: bool = true
- show_grid: bool = true
- show_grid_buttons: bool = true
- show_menu: bool = true
- show_minimap_button: bool = true
- show_zoom_buttons: bool = true
- show_zoom_label: bool = false
- snapping_distance: int = 20
- snapping_enabled: bool = true
- type_names: Dictionary = {}
- zoom: float = 1.0
- zoom_max: float = 2.0736003
- zoom_min: float = 0.23256795
- zoom_step: float = 1.2

**Methods:**
- add_valid_connection_type(from_type: int, to_type: int)
- add_valid_left_disconnect_type(type: int)
- add_valid_right_disconnect_type(type: int)
- arrange_nodes()
- attach_graph_element_to_frame(element: StringName, frame: StringName)
- clear_connections()
- connect_node(from_node: StringName, from_port: int, to_node: StringName, to_port: int, keep_alive: bool = false) -> int
- detach_graph_element_from_frame(element: StringName)
- disconnect_node(from_node: StringName, from_port: int, to_node: StringName, to_port: int)
- force_connection_drag_end()
- get_attached_nodes_of_frame(frame: StringName) -> StringName[]
- get_closest_connection_at_point(point: Vector2, max_distance: float = 4.0) -> Dictionary
- get_connection_count(from_node: StringName, from_port: int) -> int
- get_connection_line(from_node: Vector2, to_node: Vector2) -> PackedVector2Array
- get_connection_list_from_node(node: StringName) -> Dictionary[]
- get_connections_intersecting_with_rect(rect: Rect2) -> Dictionary[]
- get_element_frame(element: StringName) -> GraphFrame
- get_menu_hbox() -> HBoxContainer
- is_node_connected(from_node: StringName, from_port: int, to_node: StringName, to_port: int) -> bool
- is_valid_connection_type(from_type: int, to_type: int) -> bool
- remove_valid_connection_type(from_type: int, to_type: int)
- remove_valid_left_disconnect_type(type: int)
- remove_valid_right_disconnect_type(type: int)
- set_connection_activity(from_node: StringName, from_port: int, to_node: StringName, to_port: int, amount: float)
- set_selected(node: Node)

**Signals:**
- begin_node_move
- connection_drag_ended
- connection_drag_started(from_node: StringName, from_port: int, is_output: bool)
- connection_from_empty(to_node: StringName, to_port: int, release_position: Vector2)
- connection_request(from_node: StringName, from_port: int, to_node: StringName, to_port: int)
- connection_to_empty(from_node: StringName, from_port: int, release_position: Vector2)
- copy_nodes_request
- cut_nodes_request
- delete_nodes_request(nodes: StringName[])
- disconnection_request(from_node: StringName, from_port: int, to_node: StringName, to_port: int)
- duplicate_nodes_request
- end_node_move
- frame_rect_changed(frame: GraphFrame, new_rect: Rect2)
- graph_elements_linked_to_frame_request(elements: Array, frame: StringName)
- node_deselected(node: Node)
- node_selected(node: Node)
- paste_nodes_request
- popup_request(at_position: Vector2)
- scroll_offset_changed(offset: Vector2)

**Enums:**
**PanningScheme:** SCROLL_ZOOMS=0, SCROLL_PANS=1
**GridPattern:** GRID_PATTERN_LINES=0, GRID_PATTERN_DOTS=1

