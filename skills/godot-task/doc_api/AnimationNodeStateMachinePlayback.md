## AnimationNodeStateMachinePlayback <- Resource

Allows control of AnimationTree state machines created with AnimationNodeStateMachine. Retrieve with `$AnimationTree.get("parameters/playback")`.

**Props:**
- resource_local_to_scene: bool = true

**Methods:**
- get_current_length() -> float
- get_current_node() -> StringName
- get_current_play_position() -> float
- get_fading_from_length() -> float
- get_fading_from_node() -> StringName
- get_fading_from_play_position() -> float
- get_fading_length() -> float
- get_fading_position() -> float
- get_travel_path() -> StringName[]
- is_playing() -> bool
- next()
- start(node: StringName, reset: bool = true)
- stop()
- travel(to_node: StringName, reset_on_teleport: bool = true)

**Signals:**
- state_finished(state: StringName)
- state_started(state: StringName)

