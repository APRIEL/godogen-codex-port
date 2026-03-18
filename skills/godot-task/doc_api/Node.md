## Node <- Object

Nodes are Godot's building blocks. They can be assigned as the child of another node, resulting in a tree arrangement. A given node can contain any number of nodes as children with the requirement that all siblings (direct children of a node) should have unique names. A tree of nodes is called a *scene*. Scenes can be saved to the disk and then instantiated into other scenes. This allows for very high flexibility in the architecture and data model of Godot projects. **Scene tree:** The SceneTree contains the active tree of nodes. When a node is added to the scene tree, it receives the `NOTIFICATION_ENTER_TREE` notification and its `_enter_tree` callback is triggered. Child nodes are always added *after* their parent node, i.e. the `_enter_tree` callback of a parent node will be triggered before its child's. Once all nodes have been added in the scene tree, they receive the `NOTIFICATION_READY` notification and their respective `_ready` callbacks are triggered. For groups of nodes, the `_ready` callback is called in reverse order, starting with the children and moving up to the parent nodes. This means that when adding a node to the scene tree, the following order will be used for the callbacks: `_enter_tree` of the parent, `_enter_tree` of the children, `_ready` of the children and finally `_ready` of the parent (recursively for the entire scene tree). **Processing:** Nodes can override the "process" state, so that they receive a callback on each frame requesting them to process (do something). Normal processing (callback `_process`, toggled with `set_process`) happens as fast as possible and is dependent on the frame rate, so the processing time *delta* (in seconds) is passed as an argument. Physics processing (callback `_physics_process`, toggled with `set_physics_process`) happens a fixed number of times per second (60 by default) and is useful for code related to the physics engine. Nodes can also process input events. When present, the `_input` function will be called for each input that the program receives. In many cases, this can be overkill (unless used for simple projects), and the `_unhandled_input` function might be preferred; it is called when the input event was not handled by anyone else (typically, GUI Control nodes), ensuring that the node only receives the events that were meant for it. To keep track of the scene hierarchy (especially when instantiating scenes into other scenes), an "owner" can be set for the node with the `owner` property. This keeps track of who instantiated what. This is mostly useful when writing editors and tools, though. Finally, when a node is freed with `Object.free` or `queue_free`, it will also free all its children. **Groups:** Nodes can be added to as many groups as you want to be easy to manage, you could create groups like "enemies" or "collectables" for example, depending on your game. See `add_to_group`, `is_in_group` and `remove_from_group`. You can then retrieve all nodes in these groups, iterate them and even call methods on groups via the methods on SceneTree. **Networking with nodes:** After connecting to a server (or making one, see ENetMultiplayerPeer), it is possible to use the built-in RPC (remote procedure call) system to communicate over the network. By calling `rpc` with a method name, it will be called locally and in all connected peers (peers = clients and the server that accepts connections). To identify which node receives the RPC call, Godot will use its NodePath (make sure node names are the same on all peers). Also, take a look at the high-level networking tutorial and corresponding demos. **Note:** The `script` property is part of the Object class, not Node. It isn't exposed like most properties but does have a setter and getter (see `Object.set_script` and `Object.get_script`).

**Props:**
- auto_translate_mode: int (Node.AutoTranslateMode) = 0
- editor_description: String = ""
- multiplayer: MultiplayerAPI
- name: StringName
- owner: Node
- physics_interpolation_mode: int (Node.PhysicsInterpolationMode) = 0
- process_mode: int (Node.ProcessMode) = 0
- process_physics_priority: int = 0
- process_priority: int = 0
- process_thread_group: int (Node.ProcessThreadGroup) = 0
- process_thread_group_order: int
- process_thread_messages: int (Node.ProcessThreadMessages)
- scene_file_path: String
- unique_name_in_owner: bool = false

**Methods:**
- add_child(node: Node, force_readable_name: bool = false, internal: int = 0)
- add_sibling(sibling: Node, force_readable_name: bool = false)
- add_to_group(group: StringName, persistent: bool = false)
- atr(message: String, context: StringName = "") -> String
- atr_n(message: String, plural_message: StringName, n: int, context: StringName = "") -> String
- call_deferred_thread_group(method: StringName) -> Variant
- call_thread_safe(method: StringName) -> Variant
- can_auto_translate() -> bool
- can_process() -> bool
- create_tween() -> Tween
- duplicate(flags: int = 15) -> Node
- find_child(pattern: String, recursive: bool = true, owned: bool = true) -> Node
- find_children(pattern: String, type: String = "", recursive: bool = true, owned: bool = true) -> Node[]
- find_parent(pattern: String) -> Node
- get_accessibility_element() -> RID
- get_child(idx: int, include_internal: bool = false) -> Node
- get_child_count(include_internal: bool = false) -> int
- get_children(include_internal: bool = false) -> Node[]
- get_groups() -> StringName[]
- get_index(include_internal: bool = false) -> int
- get_last_exclusive_window() -> Window
- get_multiplayer_authority() -> int
- get_node(path: NodePath) -> Node
- get_node_and_resource(path: NodePath) -> Array
- get_node_or_null(path: NodePath) -> Node
- get_node_rpc_config() -> Variant
- get_orphan_node_ids() -> int[]
- get_parent() -> Node
- get_path() -> NodePath
- get_path_to(node: Node, use_unique_path: bool = false) -> NodePath
- get_physics_process_delta_time() -> float
- get_process_delta_time() -> float
- get_scene_instance_load_placeholder() -> bool
- get_tree() -> SceneTree
- get_tree_string() -> String
- get_tree_string_pretty() -> String
- get_viewport() -> Viewport
- get_window() -> Window
- has_node(path: NodePath) -> bool
- has_node_and_resource(path: NodePath) -> bool
- is_ancestor_of(node: Node) -> bool
- is_displayed_folded() -> bool
- is_editable_instance(node: Node) -> bool
- is_greater_than(node: Node) -> bool
- is_in_group(group: StringName) -> bool
- is_inside_tree() -> bool
- is_multiplayer_authority() -> bool
- is_node_ready() -> bool
- is_part_of_edited_scene() -> bool
- is_physics_interpolated() -> bool
- is_physics_interpolated_and_enabled() -> bool
- is_physics_processing() -> bool
- is_physics_processing_internal() -> bool
- is_processing() -> bool
- is_processing_input() -> bool
- is_processing_internal() -> bool
- is_processing_shortcut_input() -> bool
- is_processing_unhandled_input() -> bool
- is_processing_unhandled_key_input() -> bool
- move_child(child_node: Node, to_index: int)
- notify_deferred_thread_group(what: int)
- notify_thread_safe(what: int)
- print_orphan_nodes()
- print_tree()
- print_tree_pretty()
- propagate_call(method: StringName, args: Array = [], parent_first: bool = false)
- propagate_notification(what: int)
- queue_accessibility_update()
- queue_free()
- remove_child(node: Node)
- remove_from_group(group: StringName)
- reparent(new_parent: Node, keep_global_transform: bool = true)
- replace_by(node: Node, keep_groups: bool = false)
- request_ready()
- reset_physics_interpolation()
- rpc(method: StringName) -> int
- rpc_config(method: StringName, config: Variant)
- rpc_id(peer_id: int, method: StringName) -> int
- set_deferred_thread_group(property: StringName, value: Variant)
- set_display_folded(fold: bool)
- set_editable_instance(node: Node, is_editable: bool)
- set_multiplayer_authority(id: int, recursive: bool = true)
- set_physics_process(enable: bool)
- set_physics_process_internal(enable: bool)
- set_process(enable: bool)
- set_process_input(enable: bool)
- set_process_internal(enable: bool)
- set_process_shortcut_input(enable: bool)
- set_process_unhandled_input(enable: bool)
- set_process_unhandled_key_input(enable: bool)
- set_scene_instance_load_placeholder(load_placeholder: bool)
- set_thread_safe(property: StringName, value: Variant)
- set_translation_domain_inherited()
- update_configuration_warnings()

**Signals:**
- child_entered_tree(node: Node)
- child_exiting_tree(node: Node)
- child_order_changed
- editor_description_changed(node: Node)
- editor_state_changed
- ready
- renamed
- replacing_by(node: Node)
- tree_entered
- tree_exited
- tree_exiting

**Enums:**
**Constants:** NOTIFICATION_ENTER_TREE=10, NOTIFICATION_EXIT_TREE=11, NOTIFICATION_MOVED_IN_PARENT=12, NOTIFICATION_READY=13, NOTIFICATION_PAUSED=14, NOTIFICATION_UNPAUSED=15, NOTIFICATION_PHYSICS_PROCESS=16, NOTIFICATION_PROCESS=17, NOTIFICATION_PARENTED=18, NOTIFICATION_UNPARENTED=19, ...
**ProcessMode:** PROCESS_MODE_INHERIT=0, PROCESS_MODE_PAUSABLE=1, PROCESS_MODE_WHEN_PAUSED=2, PROCESS_MODE_ALWAYS=3, PROCESS_MODE_DISABLED=4
**ProcessThreadGroup:** PROCESS_THREAD_GROUP_INHERIT=0, PROCESS_THREAD_GROUP_MAIN_THREAD=1, PROCESS_THREAD_GROUP_SUB_THREAD=2
**ProcessThreadMessages:** FLAG_PROCESS_THREAD_MESSAGES=1, FLAG_PROCESS_THREAD_MESSAGES_PHYSICS=2, FLAG_PROCESS_THREAD_MESSAGES_ALL=3
**PhysicsInterpolationMode:** PHYSICS_INTERPOLATION_MODE_INHERIT=0, PHYSICS_INTERPOLATION_MODE_ON=1, PHYSICS_INTERPOLATION_MODE_OFF=2
**DuplicateFlags:** DUPLICATE_SIGNALS=1, DUPLICATE_GROUPS=2, DUPLICATE_SCRIPTS=4, DUPLICATE_USE_INSTANTIATION=8, DUPLICATE_INTERNAL_STATE=16, DUPLICATE_DEFAULT=15
**InternalMode:** INTERNAL_MODE_DISABLED=0, INTERNAL_MODE_FRONT=1, INTERNAL_MODE_BACK=2
**AutoTranslateMode:** AUTO_TRANSLATE_MODE_INHERIT=0, AUTO_TRANSLATE_MODE_ALWAYS=1, AUTO_TRANSLATE_MODE_DISABLED=2

