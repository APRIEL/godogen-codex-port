## AudioStreamPlayer3D <- Node3D

Plays audio with positional sound effects, based on the relative position of the audio listener. Positional effects include distance attenuation, directionality, and the Doppler effect. For greater realism, a low-pass filter is applied to distant sounds. This can be disabled by setting `attenuation_filter_cutoff_hz` to `20500`. By default, audio is heard from the camera position. This can be changed by adding an AudioListener3D node to the scene and enabling it by calling `AudioListener3D.make_current` on it. See also AudioStreamPlayer to play a sound non-positionally. **Note:** Hiding an AudioStreamPlayer3D node does not disable its audio output. To temporarily disable an AudioStreamPlayer3D's audio output, set `volume_db` to a very low value like `-100` (which isn't audible to human hearing).

**Props:**
- area_mask: int = 1
- attenuation_filter_cutoff_hz: float = 5000.0
- attenuation_filter_db: float = -24.0
- attenuation_model: int (AudioStreamPlayer3D.AttenuationModel) = 0
- autoplay: bool = false
- bus: StringName = &"Master"
- doppler_tracking: int (AudioStreamPlayer3D.DopplerTracking) = 0
- emission_angle_degrees: float = 45.0
- emission_angle_enabled: bool = false
- emission_angle_filter_attenuation_db: float = -12.0
- max_db: float = 3.0
- max_distance: float = 0.0
- max_polyphony: int = 1
- panning_strength: float = 1.0
- pitch_scale: float = 1.0
- playback_type: int (AudioServer.PlaybackType) = 0
- playing: bool = false
- stream: AudioStream
- stream_paused: bool = false
- unit_size: float = 10.0
- volume_db: float = 0.0
- volume_linear: float

**Methods:**
- get_playback_position() -> float
- get_stream_playback() -> AudioStreamPlayback
- has_stream_playback() -> bool
- play(from_position: float = 0.0)
- seek(to_position: float)
- stop()

**Signals:**
- finished

**Enums:**
**AttenuationModel:** ATTENUATION_INVERSE_DISTANCE=0, ATTENUATION_INVERSE_SQUARE_DISTANCE=1, ATTENUATION_LOGARITHMIC=2, ATTENUATION_DISABLED=3
**DopplerTracking:** DOPPLER_TRACKING_DISABLED=0, DOPPLER_TRACKING_IDLE_STEP=1, DOPPLER_TRACKING_PHYSICS_STEP=2

