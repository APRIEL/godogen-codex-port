## AudioStreamWAV <- AudioStream

AudioStreamWAV stores sound samples loaded from WAV files. To play the stored sound, use an AudioStreamPlayer (for non-positional audio) or AudioStreamPlayer2D/AudioStreamPlayer3D (for positional audio). The sound can be looped. This class can also be used to store dynamically-generated PCM audio data. See also AudioStreamGenerator for procedural audio generation.

**Props:**
- data: PackedByteArray = PackedByteArray()
- format: int (AudioStreamWAV.Format) = 0
- loop_begin: int = 0
- loop_end: int = 0
- loop_mode: int (AudioStreamWAV.LoopMode) = 0
- mix_rate: int = 44100
- stereo: bool = false
- tags: Dictionary = {}

**Methods:**
- load_from_buffer(stream_data: PackedByteArray, options: Dictionary = {}) -> AudioStreamWAV
- load_from_file(path: String, options: Dictionary = {}) -> AudioStreamWAV
- save_to_wav(path: String) -> int

**Enums:**
**Format:** FORMAT_8_BITS=0, FORMAT_16_BITS=1, FORMAT_IMA_ADPCM=2, FORMAT_QOA=3
**LoopMode:** LOOP_DISABLED=0, LOOP_FORWARD=1, LOOP_PINGPONG=2, LOOP_BACKWARD=3

