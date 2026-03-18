## AudioStreamRandomizer <- AudioStream

Picks a random AudioStream from the pool, depending on the playback mode, and applies random pitch shifting and volume shifting during playback.

**Props:**
- playback_mode: int (AudioStreamRandomizer.PlaybackMode) = 0
- random_pitch: float = 1.0
- random_pitch_semitones: float = 0.0
- random_volume_offset_db: float = 0.0
- streams_count: int = 0

**Methods:**
- add_stream(index: int, stream: AudioStream, weight: float = 1.0)
- get_stream(index: int) -> AudioStream
- get_stream_probability_weight(index: int) -> float
- move_stream(index_from: int, index_to: int)
- remove_stream(index: int)
- set_stream(index: int, stream: AudioStream)
- set_stream_probability_weight(index: int, weight: float)

**Enums:**
**PlaybackMode:** PLAYBACK_RANDOM_NO_REPEATS=0, PLAYBACK_RANDOM=1, PLAYBACK_SEQUENTIAL=2

