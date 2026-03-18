## StreamPeerSocket <- StreamPeer

StreamPeerSocket is an abstract base class that defines common behavior for socket-based streams.

**Methods:**
- disconnect_from_host()
- get_status() -> int
- poll() -> int

**Enums:**
**Status:** STATUS_NONE=0, STATUS_CONNECTING=1, STATUS_CONNECTED=2, STATUS_ERROR=3

