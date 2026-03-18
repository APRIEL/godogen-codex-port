## StreamPeerUDS <- StreamPeerSocket

A stream peer that handles UNIX Domain Socket (UDS) connections. This object can be used to connect to UDS servers, or also is returned by a UDS server. Unix Domain Sockets provide inter-process communication on the same machine using the filesystem namespace. **Note:** UNIX Domain Sockets are only available on UNIX-like systems (Linux, macOS, etc.) and are not supported on Windows.

**Methods:**
- bind(path: String) -> int
- connect_to_host(path: String) -> int
- get_connected_path() -> String

