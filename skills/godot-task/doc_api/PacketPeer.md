## PacketPeer <- RefCounted

PacketPeer is an abstraction and base class for packet-based protocols (such as UDP). It provides an API for sending and receiving packets both as raw data or variables. This makes it easy to transfer data over a protocol, without having to encode data as low-level bytes or having to worry about network ordering. **Note:** When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

**Props:**
- encode_buffer_max_size: int = 8388608

**Methods:**
- get_available_packet_count() -> int
- get_packet() -> PackedByteArray
- get_packet_error() -> int
- get_var(allow_objects: bool = false) -> Variant
- put_packet(buffer: PackedByteArray) -> int
- put_var(var: Variant, full_objects: bool = false) -> int

