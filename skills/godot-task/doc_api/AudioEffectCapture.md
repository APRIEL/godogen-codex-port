## AudioEffectCapture <- AudioEffect

AudioEffectCapture is an AudioEffect which copies all audio frames from the attached audio effect bus into its internal ring buffer. Application code should consume these audio frames from this ring buffer using `get_buffer` and process it as needed, for example to capture data from an AudioStreamMicrophone, implement application-defined effects, or to transmit audio over the network. When capturing audio data from a microphone, the format of the samples will be stereo 32-bit floating-point PCM. Unlike AudioEffectRecord, this effect only returns the raw audio samples instead of encoding them into an AudioStream.

**Props:**
- buffer_length: float = 0.1

**Methods:**
- can_get_buffer(frames: int) -> bool
- clear_buffer()
- get_buffer(frames: int) -> PackedVector2Array
- get_buffer_length_frames() -> int
- get_discarded_frames() -> int
- get_frames_available() -> int
- get_pushed_frames() -> int

