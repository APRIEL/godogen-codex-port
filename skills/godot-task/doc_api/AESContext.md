## AESContext <- RefCounted

This class holds the context information required for encryption and decryption operations with AES (Advanced Encryption Standard). Both AES-ECB and AES-CBC modes are supported.

**Methods:**
- finish()
- get_iv_state() -> PackedByteArray
- start(mode: int, key: PackedByteArray, iv: PackedByteArray = PackedByteArray()) -> int
- update(src: PackedByteArray) -> PackedByteArray

**Enums:**
**Mode:** MODE_ECB_ENCRYPT=0, MODE_ECB_DECRYPT=1, MODE_CBC_ENCRYPT=2, MODE_CBC_DECRYPT=3, MODE_MAX=4

