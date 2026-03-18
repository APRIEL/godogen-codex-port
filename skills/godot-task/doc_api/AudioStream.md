## AudioStream <- Resource

Base class for audio streams. Audio streams are used for sound effects and music playback, and support WAV (via AudioStreamWAV) and Ogg (via AudioStreamOggVorbis) file formats.

**Methods:**
- can_be_sampled() -> bool
- generate_sample() -> AudioSample
- get_length() -> float
- instantiate_playback() -> AudioStreamPlayback
- is_meta_stream() -> bool
- is_monophonic() -> bool

**Signals:**
- parameter_list_changed

