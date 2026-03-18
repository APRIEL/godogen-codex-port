## MultiplayerAPI <- RefCounted

Base class for high-level multiplayer API implementations. See also MultiplayerPeer. By default, SceneTree has a reference to an implementation of this class and uses it to provide multiplayer capabilities (i.e. RPCs) across the whole scene. It is possible to override the MultiplayerAPI instance used by specific tree branches by calling the `SceneTree.set_multiplayer` method, effectively allowing to run both client and server in the same scene. It is also possible to extend or replace the default implementation via scripting or native extensions. See MultiplayerAPIExtension for details about extensions, SceneMultiplayer for the details about the default implementation.

**Props:**
- multiplayer_peer: MultiplayerPeer

**Methods:**
- create_default_interface() -> MultiplayerAPI
- get_default_interface() -> StringName
- get_peers() -> PackedInt32Array
- get_remote_sender_id() -> int
- get_unique_id() -> int
- has_multiplayer_peer() -> bool
- is_server() -> bool
- object_configuration_add(object: Object, configuration: Variant) -> int
- object_configuration_remove(object: Object, configuration: Variant) -> int
- poll() -> int
- rpc(peer: int, object: Object, method: StringName, arguments: Array = []) -> int
- set_default_interface(interface_name: StringName)

**Signals:**
- connected_to_server
- connection_failed
- peer_connected(id: int)
- peer_disconnected(id: int)
- server_disconnected

**Enums:**
**RPCMode:** RPC_MODE_DISABLED=0, RPC_MODE_ANY_PEER=1, RPC_MODE_AUTHORITY=2

