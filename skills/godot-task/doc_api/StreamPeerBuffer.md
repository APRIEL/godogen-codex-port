## StreamPeerBuffer <- StreamPeer

A data buffer stream peer that uses a byte array as the stream. This object can be used to handle binary data from network sessions. To handle binary data stored in files, FileAccess can be used directly. A StreamPeerBuffer object keeps an internal cursor which is the offset in bytes to the start of the buffer. Get and put operations are performed at the cursor position and will move the cursor accordingly.

**Props:**
- data_array: PackedByteArray = PackedByteArray()

**Methods:**
- clear()
- duplicate() -> StreamPeerBuffer
- get_position() -> int
- get_size() -> int
- resize(size: int)
- seek(position: int)

