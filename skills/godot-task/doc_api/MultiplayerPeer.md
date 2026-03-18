## MultiplayerPeer <- PacketPeer

Manages the connection with one or more remote peers acting as server or client and assigning unique IDs to each of them. See also MultiplayerAPI. **Note:** The MultiplayerAPI protocol is an implementation detail and isn't meant to be used by non-Godot servers. It may change without notice. **Note:** When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

**Props:**
- refuse_new_connections: bool = false
- transfer_channel: int = 0
- transfer_mode: int (MultiplayerPeer.TransferMode) = 2

**Methods:**
- close()
- disconnect_peer(peer: int, force: bool = false)
- generate_unique_id() -> int
- get_connection_status() -> int
- get_packet_channel() -> int
- get_packet_mode() -> int
- get_packet_peer() -> int
- get_unique_id() -> int
- is_server_relay_supported() -> bool
- poll()
- set_target_peer(id: int)

**Signals:**
- peer_connected(id: int)
- peer_disconnected(id: int)

**Enums:**
**ConnectionStatus:** CONNECTION_DISCONNECTED=0, CONNECTION_CONNECTING=1, CONNECTION_CONNECTED=2
**Constants:** TARGET_PEER_BROADCAST=0, TARGET_PEER_SERVER=1
**TransferMode:** TRANSFER_MODE_UNRELIABLE=0, TRANSFER_MODE_UNRELIABLE_ORDERED=1, TRANSFER_MODE_RELIABLE=2

