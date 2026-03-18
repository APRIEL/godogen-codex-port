## AudioStreamGeneratorPlayback <- AudioStreamPlaybackResampled

This class is meant to be used with AudioStreamGenerator to play back the generated audio in real-time.

**Methods:**
- can_push_buffer(amount: int) -> bool
- clear_buffer()
- get_frames_available() -> int
- get_skips() -> int
- push_buffer(frames: PackedVector2Array) -> bool
- push_frame(frame: Vector2) -> bool

