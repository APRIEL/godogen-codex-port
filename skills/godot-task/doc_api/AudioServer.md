## AudioServer <- Object

AudioServer is a low-level server interface for audio access. It is in charge of creating sample data (playable audio) as well as its playback via a voice interface.

**Props:**
- bus_count: int = 1
- input_device: String = "Default"
- output_device: String = "Default"
- playback_speed_scale: float = 1.0

**Methods:**
- add_bus(at_position: int = -1)
- add_bus_effect(bus_idx: int, effect: AudioEffect, at_position: int = -1)
- generate_bus_layout() -> AudioBusLayout
- get_bus_channels(bus_idx: int) -> int
- get_bus_effect(bus_idx: int, effect_idx: int) -> AudioEffect
- get_bus_effect_count(bus_idx: int) -> int
- get_bus_effect_instance(bus_idx: int, effect_idx: int, channel: int = 0) -> AudioEffectInstance
- get_bus_index(bus_name: StringName) -> int
- get_bus_name(bus_idx: int) -> String
- get_bus_peak_volume_left_db(bus_idx: int, channel: int) -> float
- get_bus_peak_volume_right_db(bus_idx: int, channel: int) -> float
- get_bus_send(bus_idx: int) -> StringName
- get_bus_volume_db(bus_idx: int) -> float
- get_bus_volume_linear(bus_idx: int) -> float
- get_driver_name() -> String
- get_input_buffer_length_frames() -> int
- get_input_device_list() -> PackedStringArray
- get_input_frames(frames: int) -> PackedVector2Array
- get_input_frames_available() -> int
- get_input_mix_rate() -> float
- get_mix_rate() -> float
- get_output_device_list() -> PackedStringArray
- get_output_latency() -> float
- get_speaker_mode() -> int
- get_time_since_last_mix() -> float
- get_time_to_next_mix() -> float
- is_bus_bypassing_effects(bus_idx: int) -> bool
- is_bus_effect_enabled(bus_idx: int, effect_idx: int) -> bool
- is_bus_mute(bus_idx: int) -> bool
- is_bus_solo(bus_idx: int) -> bool
- is_stream_registered_as_sample(stream: AudioStream) -> bool
- lock()
- move_bus(index: int, to_index: int)
- register_stream_as_sample(stream: AudioStream)
- remove_bus(index: int)
- remove_bus_effect(bus_idx: int, effect_idx: int)
- set_bus_bypass_effects(bus_idx: int, enable: bool)
- set_bus_effect_enabled(bus_idx: int, effect_idx: int, enabled: bool)
- set_bus_layout(bus_layout: AudioBusLayout)
- set_bus_mute(bus_idx: int, enable: bool)
- set_bus_name(bus_idx: int, name: String)
- set_bus_send(bus_idx: int, send: StringName)
- set_bus_solo(bus_idx: int, enable: bool)
- set_bus_volume_db(bus_idx: int, volume_db: float)
- set_bus_volume_linear(bus_idx: int, volume_linear: float)
- set_enable_tagging_used_audio_streams(enable: bool)
- set_input_device_active(active: bool) -> int
- swap_bus_effects(bus_idx: int, effect_idx: int, by_effect_idx: int)
- unlock()

**Signals:**
- bus_layout_changed
- bus_renamed(bus_index: int, old_name: StringName, new_name: StringName)

**Enums:**
**SpeakerMode:** SPEAKER_MODE_STEREO=0, SPEAKER_SURROUND_31=1, SPEAKER_SURROUND_51=2, SPEAKER_SURROUND_71=3
**PlaybackType:** PLAYBACK_TYPE_DEFAULT=0, PLAYBACK_TYPE_STREAM=1, PLAYBACK_TYPE_SAMPLE=2, PLAYBACK_TYPE_MAX=3

