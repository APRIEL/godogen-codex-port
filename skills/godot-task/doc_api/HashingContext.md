## HashingContext <- RefCounted

The HashingContext class provides an interface for computing cryptographic hashes over multiple iterations. Useful for computing hashes of big files (so you don't have to load them all in memory), network streams, and data streams in general (so you don't have to hold buffers). The `HashType` enum shows the supported hashing algorithms.

**Methods:**
- finish() -> PackedByteArray
- start(type: int) -> int
- update(chunk: PackedByteArray) -> int

**Enums:**
**HashType:** HASH_MD5=0, HASH_SHA1=1, HASH_SHA256=2

