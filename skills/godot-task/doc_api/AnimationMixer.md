## AnimationMixer <- Node

Base class for AnimationPlayer and AnimationTree to manage animation lists. It also has general properties and methods for playback and blending. After instantiating the playback information data within the extended class, the blending is processed by the AnimationMixer.

**Props:**
- active: bool = true
- audio_max_polyphony: int = 32
- callback_mode_discrete: int (AnimationMixer.AnimationCallbackModeDiscrete) = 1
- callback_mode_method: int (AnimationMixer.AnimationCallbackModeMethod) = 0
- callback_mode_process: int (AnimationMixer.AnimationCallbackModeProcess) = 1
- deterministic: bool = false
- reset_on_save: bool = true
- root_motion_local: bool = false
- root_motion_track: NodePath = NodePath("")
- root_node: NodePath = NodePath("..")

**Methods:**
- add_animation_library(name: StringName, library: AnimationLibrary) -> int
- advance(delta: float)
- capture(name: StringName, duration: float, trans_type: int = 0, ease_type: int = 0)
- clear_caches()
- find_animation(animation: Animation) -> StringName
- find_animation_library(animation: Animation) -> StringName
- get_animation(name: StringName) -> Animation
- get_animation_library(name: StringName) -> AnimationLibrary
- get_animation_library_list() -> StringName[]
- get_animation_list() -> PackedStringArray
- get_root_motion_position() -> Vector3
- get_root_motion_position_accumulator() -> Vector3
- get_root_motion_rotation() -> Quaternion
- get_root_motion_rotation_accumulator() -> Quaternion
- get_root_motion_scale() -> Vector3
- get_root_motion_scale_accumulator() -> Vector3
- has_animation(name: StringName) -> bool
- has_animation_library(name: StringName) -> bool
- remove_animation_library(name: StringName)
- rename_animation_library(name: StringName, newname: StringName)

**Signals:**
- animation_finished(anim_name: StringName)
- animation_libraries_updated
- animation_list_changed
- animation_started(anim_name: StringName)
- caches_cleared
- mixer_applied
- mixer_updated

**Enums:**
**AnimationCallbackModeProcess:** ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS=0, ANIMATION_CALLBACK_MODE_PROCESS_IDLE=1, ANIMATION_CALLBACK_MODE_PROCESS_MANUAL=2
**AnimationCallbackModeMethod:** ANIMATION_CALLBACK_MODE_METHOD_DEFERRED=0, ANIMATION_CALLBACK_MODE_METHOD_IMMEDIATE=1
**AnimationCallbackModeDiscrete:** ANIMATION_CALLBACK_MODE_DISCRETE_DOMINANT=0, ANIMATION_CALLBACK_MODE_DISCRETE_RECESSIVE=1, ANIMATION_CALLBACK_MODE_DISCRETE_FORCE_CONTINUOUS=2

