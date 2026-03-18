## AnimationTree <- AnimationMixer

A node used for advanced animation transitions in an AnimationPlayer. **Note:** When linked with an AnimationPlayer, several properties and methods of the corresponding AnimationPlayer will not function as expected. Playback and transitions should be handled using only the AnimationTree and its constituent AnimationNode(s). The AnimationPlayer node should be used solely for adding, deleting, and editing animations.

**Props:**
- advance_expression_base_node: NodePath = NodePath(".")
- anim_player: NodePath = NodePath("")
- callback_mode_discrete: int (AnimationMixer.AnimationCallbackModeDiscrete) = 2
- deterministic: bool = true
- tree_root: AnimationRootNode

**Methods:**
- get_process_callback() -> int
- set_process_callback(mode: int)

**Signals:**
- animation_player_changed

**Enums:**
**AnimationProcessCallback:** ANIMATION_PROCESS_PHYSICS=0, ANIMATION_PROCESS_IDLE=1, ANIMATION_PROCESS_MANUAL=2

