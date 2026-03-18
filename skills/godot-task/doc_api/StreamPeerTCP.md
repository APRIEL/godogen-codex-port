## StreamPeerTCP <- StreamPeerSocket

A stream peer that handles TCP connections. This object can be used to connect to TCP servers, or also is returned by a TCP server. **Note:** When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

**Methods:**
- bind(port: int, host: String = "*") -> int
- connect_to_host(host: String, port: int) -> int
- get_connected_host() -> String
- get_connected_port() -> int
- get_local_port() -> int
- set_no_delay(enabled: bool)

