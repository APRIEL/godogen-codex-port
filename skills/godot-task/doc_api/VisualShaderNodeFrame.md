## VisualShaderNodeFrame <- VisualShaderNodeResizableBase

A rectangular frame that can be used to group visual shader nodes together to improve organization. Nodes attached to the frame will move with it when it is dragged and it can automatically resize to enclose all attached nodes. Its title, description and color can be customized.

**Props:**
- attached_nodes: PackedInt32Array = PackedInt32Array()
- autoshrink: bool = true
- tint_color: Color = Color(0.3, 0.3, 0.3, 0.75)
- tint_color_enabled: bool = false
- title: String = "Title"

**Methods:**
- add_attached_node(node: int)
- remove_attached_node(node: int)

