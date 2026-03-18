## Animation <- Resource

This resource holds data that can be used to animate anything in the engine. Animations are divided into tracks and each track must be linked to a node. The state of that node can be changed through time, by adding timed keys (events) to the track. Animations are just data containers, and must be added to nodes such as an AnimationPlayer to be played back. Animation tracks have different types, each with its own set of dedicated methods. Check `TrackType` to see available types. **Note:** For 3D position/rotation/scale, using the dedicated `TYPE_POSITION_3D`, `TYPE_ROTATION_3D` and `TYPE_SCALE_3D` track types instead of `TYPE_VALUE` is recommended for performance reasons.

**Props:**
- capture_included: bool = false
- length: float = 1.0
- loop_mode: int (Animation.LoopMode) = 0
- step: float = 0.033333335

**Methods:**
- add_marker(name: StringName, time: float)
- add_track(type: int, at_position: int = -1) -> int
- animation_track_get_key_animation(track_idx: int, key_idx: int) -> StringName
- animation_track_insert_key(track_idx: int, time: float, animation: StringName) -> int
- animation_track_set_key_animation(track_idx: int, key_idx: int, animation: StringName)
- audio_track_get_key_end_offset(track_idx: int, key_idx: int) -> float
- audio_track_get_key_start_offset(track_idx: int, key_idx: int) -> float
- audio_track_get_key_stream(track_idx: int, key_idx: int) -> Resource
- audio_track_insert_key(track_idx: int, time: float, stream: Resource, start_offset: float = 0, end_offset: float = 0) -> int
- audio_track_is_use_blend(track_idx: int) -> bool
- audio_track_set_key_end_offset(track_idx: int, key_idx: int, offset: float)
- audio_track_set_key_start_offset(track_idx: int, key_idx: int, offset: float)
- audio_track_set_key_stream(track_idx: int, key_idx: int, stream: Resource)
- audio_track_set_use_blend(track_idx: int, enable: bool)
- bezier_track_get_key_in_handle(track_idx: int, key_idx: int) -> Vector2
- bezier_track_get_key_out_handle(track_idx: int, key_idx: int) -> Vector2
- bezier_track_get_key_value(track_idx: int, key_idx: int) -> float
- bezier_track_insert_key(track_idx: int, time: float, value: float, in_handle: Vector2 = Vector2(0, 0), out_handle: Vector2 = Vector2(0, 0)) -> int
- bezier_track_interpolate(track_idx: int, time: float) -> float
- bezier_track_set_key_in_handle(track_idx: int, key_idx: int, in_handle: Vector2, balanced_value_time_ratio: float = 1.0)
- bezier_track_set_key_out_handle(track_idx: int, key_idx: int, out_handle: Vector2, balanced_value_time_ratio: float = 1.0)
- bezier_track_set_key_value(track_idx: int, key_idx: int, value: float)
- blend_shape_track_insert_key(track_idx: int, time: float, amount: float) -> int
- blend_shape_track_interpolate(track_idx: int, time_sec: float, backward: bool = false) -> float
- clear()
- compress(page_size: int = 8192, fps: int = 120, split_tolerance: float = 4.0)
- copy_track(track_idx: int, to_animation: Animation)
- find_track(path: NodePath, type: int) -> int
- get_marker_at_time(time: float) -> StringName
- get_marker_color(name: StringName) -> Color
- get_marker_names() -> PackedStringArray
- get_marker_time(name: StringName) -> float
- get_next_marker(time: float) -> StringName
- get_prev_marker(time: float) -> StringName
- get_track_count() -> int
- has_marker(name: StringName) -> bool
- method_track_get_name(track_idx: int, key_idx: int) -> StringName
- method_track_get_params(track_idx: int, key_idx: int) -> Array
- optimize(allowed_velocity_err: float = 0.01, allowed_angular_err: float = 0.01, precision: int = 3)
- position_track_insert_key(track_idx: int, time: float, position: Vector3) -> int
- position_track_interpolate(track_idx: int, time_sec: float, backward: bool = false) -> Vector3
- remove_marker(name: StringName)
- remove_track(track_idx: int)
- rotation_track_insert_key(track_idx: int, time: float, rotation: Quaternion) -> int
- rotation_track_interpolate(track_idx: int, time_sec: float, backward: bool = false) -> Quaternion
- scale_track_insert_key(track_idx: int, time: float, scale: Vector3) -> int
- scale_track_interpolate(track_idx: int, time_sec: float, backward: bool = false) -> Vector3
- set_marker_color(name: StringName, color: Color)
- track_find_key(track_idx: int, time: float, find_mode: int = 0, limit: bool = false, backward: bool = false) -> int
- track_get_interpolation_loop_wrap(track_idx: int) -> bool
- track_get_interpolation_type(track_idx: int) -> int
- track_get_key_count(track_idx: int) -> int
- track_get_key_time(track_idx: int, key_idx: int) -> float
- track_get_key_transition(track_idx: int, key_idx: int) -> float
- track_get_key_value(track_idx: int, key_idx: int) -> Variant
- track_get_path(track_idx: int) -> NodePath
- track_get_type(track_idx: int) -> int
- track_insert_key(track_idx: int, time: float, key: Variant, transition: float = 1) -> int
- track_is_compressed(track_idx: int) -> bool
- track_is_enabled(track_idx: int) -> bool
- track_is_imported(track_idx: int) -> bool
- track_move_down(track_idx: int)
- track_move_to(track_idx: int, to_idx: int)
- track_move_up(track_idx: int)
- track_remove_key(track_idx: int, key_idx: int)
- track_remove_key_at_time(track_idx: int, time: float)
- track_set_enabled(track_idx: int, enabled: bool)
- track_set_imported(track_idx: int, imported: bool)
- track_set_interpolation_loop_wrap(track_idx: int, interpolation: bool)
- track_set_interpolation_type(track_idx: int, interpolation: int)
- track_set_key_time(track_idx: int, key_idx: int, time: float)
- track_set_key_transition(track_idx: int, key_idx: int, transition: float)
- track_set_key_value(track_idx: int, key: int, value: Variant)
- track_set_path(track_idx: int, path: NodePath)
- track_swap(track_idx: int, with_idx: int)
- value_track_get_update_mode(track_idx: int) -> int
- value_track_interpolate(track_idx: int, time_sec: float, backward: bool = false) -> Variant
- value_track_set_update_mode(track_idx: int, mode: int)

**Enums:**
**TrackType:** TYPE_VALUE=0, TYPE_POSITION_3D=1, TYPE_ROTATION_3D=2, TYPE_SCALE_3D=3, TYPE_BLEND_SHAPE=4, TYPE_METHOD=5, TYPE_BEZIER=6, TYPE_AUDIO=7, TYPE_ANIMATION=8
**InterpolationType:** INTERPOLATION_NEAREST=0, INTERPOLATION_LINEAR=1, INTERPOLATION_CUBIC=2, INTERPOLATION_LINEAR_ANGLE=3, INTERPOLATION_CUBIC_ANGLE=4
**UpdateMode:** UPDATE_CONTINUOUS=0, UPDATE_DISCRETE=1, UPDATE_CAPTURE=2
**LoopMode:** LOOP_NONE=0, LOOP_LINEAR=1, LOOP_PINGPONG=2
**LoopedFlag:** LOOPED_FLAG_NONE=0, LOOPED_FLAG_END=1, LOOPED_FLAG_START=2
**FindMode:** FIND_MODE_NEAREST=0, FIND_MODE_APPROX=1, FIND_MODE_EXACT=2

