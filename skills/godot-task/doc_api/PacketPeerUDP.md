## PacketPeerUDP <- PacketPeer

UDP packet peer. Can be used to send and receive raw UDP packets as well as Variants. **Example:** Send a packet: **Example:** Listen for packets: **Note:** When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.

**Methods:**
- bind(port: int, bind_address: String = "*", recv_buf_size: int = 65536) -> int
- close()
- connect_to_host(host: String, port: int) -> int
- get_local_port() -> int
- get_packet_ip() -> String
- get_packet_port() -> int
- is_bound() -> bool
- is_socket_connected() -> bool
- join_multicast_group(multicast_address: String, interface_name: String) -> int
- leave_multicast_group(multicast_address: String, interface_name: String) -> int
- set_broadcast_enabled(enabled: bool)
- set_dest_address(host: String, port: int) -> int
- wait() -> int

