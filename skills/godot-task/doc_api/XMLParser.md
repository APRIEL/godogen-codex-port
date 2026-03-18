## XMLParser <- RefCounted

Provides a low-level interface for creating parsers for files. This class can serve as base to make custom XML parsers. To parse XML, you must open a file with the `open` method or a buffer with the `open_buffer` method. Then, the `read` method must be called to parse the next nodes. Most of the methods take into consideration the currently parsed node. Here is an example of using XMLParser to parse an SVG file (which is based on XML), printing each element and its attributes as a dictionary:

**Methods:**
- get_attribute_count() -> int
- get_attribute_name(idx: int) -> String
- get_attribute_value(idx: int) -> String
- get_current_line() -> int
- get_named_attribute_value(name: String) -> String
- get_named_attribute_value_safe(name: String) -> String
- get_node_data() -> String
- get_node_name() -> String
- get_node_offset() -> int
- get_node_type() -> int
- has_attribute(name: String) -> bool
- is_empty() -> bool
- open(file: String) -> int
- open_buffer(buffer: PackedByteArray) -> int
- read() -> int
- seek(position: int) -> int
- skip_section()

**Enums:**
**NodeType:** NODE_NONE=0, NODE_ELEMENT=1, NODE_ELEMENT_END=2, NODE_TEXT=3, NODE_COMMENT=4, NODE_CDATA=5, NODE_UNKNOWN=6

