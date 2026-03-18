## StreamPeer <- RefCounted

StreamPeer is an abstract base class mostly used for stream-based protocols (such as TCP). It provides an API for sending and receiving data through streams as raw data or strings. **Note:** When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

**Props:**
- big_endian: bool = false

**Methods:**
- get_8() -> int
- get_16() -> int
- get_32() -> int
- get_64() -> int
- get_available_bytes() -> int
- get_data(bytes: int) -> Array
- get_double() -> float
- get_float() -> float
- get_half() -> float
- get_partial_data(bytes: int) -> Array
- get_string(bytes: int = -1) -> String
- get_u8() -> int
- get_u16() -> int
- get_u32() -> int
- get_u64() -> int
- get_utf8_string(bytes: int = -1) -> String
- get_var(allow_objects: bool = false) -> Variant
- put_8(value: int)
- put_16(value: int)
- put_32(value: int)
- put_64(value: int)
- put_data(data: PackedByteArray) -> int
- put_double(value: float)
- put_float(value: float)
- put_half(value: float)
- put_partial_data(data: PackedByteArray) -> Array
- put_string(value: String)
- put_u8(value: int)
- put_u16(value: int)
- put_u32(value: int)
- put_u64(value: int)
- put_utf8_string(value: String)
- put_var(value: Variant, full_objects: bool = false)

