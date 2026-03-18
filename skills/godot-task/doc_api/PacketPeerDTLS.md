## PacketPeerDTLS <- PacketPeer

This class represents a DTLS peer connection. It can be used to connect to a DTLS server, and is returned by `DTLSServer.take_connection`. **Note:** When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android. **Warning:** TLS certificate revocation and certificate pinning are currently not supported. Revoked certificates are accepted as long as they are otherwise valid. If this is a concern, you may want to use automatically managed certificates with a short validity period.

**Methods:**
- connect_to_peer(packet_peer: PacketPeerUDP, hostname: String, client_options: TLSOptions = null) -> int
- disconnect_from_peer()
- get_status() -> int
- poll()

**Enums:**
**Status:** STATUS_DISCONNECTED=0, STATUS_HANDSHAKING=1, STATUS_CONNECTED=2, STATUS_ERROR=3, STATUS_ERROR_HOSTNAME_MISMATCH=4

