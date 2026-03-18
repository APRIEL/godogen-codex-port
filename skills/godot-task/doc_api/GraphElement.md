## GraphElement <- Container

GraphElement allows to create custom elements for a GraphEdit graph. By default such elements can be selected, resized, and repositioned, but they cannot be connected. For a graph element that allows for connections see GraphNode.

**Props:**
- draggable: bool = true
- position_offset: Vector2 = Vector2(0, 0)
- resizable: bool = false
- scaling_menus: bool = false
- selectable: bool = true
- selected: bool = false

**Signals:**
- delete_request
- dragged(from: Vector2, to: Vector2)
- node_deselected
- node_selected
- position_offset_changed
- raise_request
- resize_end(new_size: Vector2)
- resize_request(new_size: Vector2)

