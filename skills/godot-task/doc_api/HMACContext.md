## HMACContext <- RefCounted

The HMACContext class is useful for advanced HMAC use cases, such as streaming the message as it supports creating the message over time rather than providing it all at once.

**Methods:**
- finish() -> PackedByteArray
- start(hash_type: int, key: PackedByteArray) -> int
- update(data: PackedByteArray) -> int

