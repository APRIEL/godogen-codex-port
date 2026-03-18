## SceneTree <- MainLoop

As one of the most important classes, the SceneTree manages the hierarchy of nodes in a scene, as well as scenes themselves. Nodes can be added, fetched and removed. The whole scene tree (and thus the current scene) can be paused. Scenes can be loaded, switched and reloaded. You can also use the SceneTree to organize your nodes into **groups**: every node can be added to as many groups as you want to create, e.g. an "enemy" group. You can then iterate these groups or even call methods and set properties on all the nodes belonging to any given group. SceneTree is the default MainLoop implementation used by the engine, and is thus in charge of the game loop.

**Props:**
- auto_accept_quit: bool = true
- current_scene: Node
- debug_collisions_hint: bool = false
- debug_navigation_hint: bool = false
- debug_paths_hint: bool = false
- edited_scene_root: Node
- multiplayer_poll: bool = true
- paused: bool = false
- physics_interpolation: bool = false
- quit_on_go_back: bool = true
- root: Window

**Methods:**
- call_group(group: StringName, method: StringName)
- call_group_flags(flags: int, group: StringName, method: StringName)
- change_scene_to_file(path: String) -> int
- change_scene_to_node(node: Node) -> int
- change_scene_to_packed(packed_scene: PackedScene) -> int
- create_timer(time_sec: float, process_always: bool = true, process_in_physics: bool = false, ignore_time_scale: bool = false) -> SceneTreeTimer
- create_tween() -> Tween
- get_first_node_in_group(group: StringName) -> Node
- get_frame() -> int
- get_multiplayer(for_path: NodePath = NodePath("")) -> MultiplayerAPI
- get_node_count() -> int
- get_node_count_in_group(group: StringName) -> int
- get_nodes_in_group(group: StringName) -> Node[]
- get_processed_tweens() -> Tween[]
- has_group(name: StringName) -> bool
- is_accessibility_enabled() -> bool
- is_accessibility_supported() -> bool
- notify_group(group: StringName, notification: int)
- notify_group_flags(call_flags: int, group: StringName, notification: int)
- queue_delete(obj: Object)
- quit(exit_code: int = 0)
- reload_current_scene() -> int
- set_group(group: StringName, property: String, value: Variant)
- set_group_flags(call_flags: int, group: StringName, property: String, value: Variant)
- set_multiplayer(multiplayer: MultiplayerAPI, root_path: NodePath = NodePath(""))
- unload_current_scene()

**Signals:**
- node_added(node: Node)
- node_configuration_warning_changed(node: Node)
- node_removed(node: Node)
- node_renamed(node: Node)
- physics_frame
- process_frame
- scene_changed
- tree_changed
- tree_process_mode_changed

**Enums:**
**GroupCallFlags:** GROUP_CALL_DEFAULT=0, GROUP_CALL_REVERSE=1, GROUP_CALL_DEFERRED=2, GROUP_CALL_UNIQUE=4

