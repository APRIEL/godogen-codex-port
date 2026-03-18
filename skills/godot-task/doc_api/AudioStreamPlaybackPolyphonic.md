## AudioStreamPlaybackPolyphonic <- AudioStreamPlayback

Playback instance for AudioStreamPolyphonic. After setting the `stream` property of AudioStreamPlayer, AudioStreamPlayer2D, or AudioStreamPlayer3D, the playback instance can be obtained by calling `AudioStreamPlayer.get_stream_playback`, `AudioStreamPlayer2D.get_stream_playback` or `AudioStreamPlayer3D.get_stream_playback` methods.

**Methods:**
- is_stream_playing(stream: int) -> bool
- play_stream(stream: AudioStream, from_offset: float = 0, volume_db: float = 0, pitch_scale: float = 1.0, playback_type: int = 0, bus: StringName = &"Master") -> int
- set_stream_pitch_scale(stream: int, pitch_scale: float)
- set_stream_volume(stream: int, volume_db: float)
- stop_stream(stream: int)

**Enums:**
**Constants:** INVALID_ID=-1

