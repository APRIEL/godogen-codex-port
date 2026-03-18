## StreamPeerTLS <- StreamPeer

A stream peer that handles TLS connections. This object can be used to connect to a TLS server or accept a single TLS client connection. **Note:** When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

**Methods:**
- accept_stream(stream: StreamPeer, server_options: TLSOptions) -> int
- connect_to_stream(stream: StreamPeer, common_name: String, client_options: TLSOptions = null) -> int
- disconnect_from_stream()
- get_status() -> int
- get_stream() -> StreamPeer
- poll()

**Enums:**
**Status:** STATUS_DISCONNECTED=0, STATUS_HANDSHAKING=1, STATUS_CONNECTED=2, STATUS_ERROR=3, STATUS_ERROR_HOSTNAME_MISMATCH=4

