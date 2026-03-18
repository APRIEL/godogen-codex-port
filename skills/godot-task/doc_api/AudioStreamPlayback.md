## AudioStreamPlayback <- RefCounted

Can play, loop, pause a scroll through audio. See AudioStream and AudioStreamOggVorbis for usage.

**Methods:**
- get_loop_count() -> int
- get_playback_position() -> float
- get_sample_playback() -> AudioSamplePlayback
- is_playing() -> bool
- mix_audio(rate_scale: float, frames: int) -> PackedVector2Array
- seek(time: float = 0.0)
- set_sample_playback(playback_sample: AudioSamplePlayback)
- start(from_pos: float = 0.0)
- stop()

