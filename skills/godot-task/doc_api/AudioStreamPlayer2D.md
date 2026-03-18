## AudioStreamPlayer2D <- Node2D

Plays audio that is attenuated with distance to the listener. By default, audio is heard from the screen center. This can be changed by adding an AudioListener2D node to the scene and enabling it by calling `AudioListener2D.make_current` on it. See also AudioStreamPlayer to play a sound non-positionally. **Note:** Hiding an AudioStreamPlayer2D node does not disable its audio output. To temporarily disable an AudioStreamPlayer2D's audio output, set `volume_db` to a very low value like `-100` (which isn't audible to human hearing).

**Props:**
- area_mask: int = 1
- attenuation: float = 1.0
- autoplay: bool = false
- bus: StringName = &"Master"
- max_distance: float = 2000.0
- max_polyphony: int = 1
- panning_strength: float = 1.0
- pitch_scale: float = 1.0
- playback_type: int (AudioServer.PlaybackType) = 0
- playing: bool = false
- stream: AudioStream
- stream_paused: bool = false
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

