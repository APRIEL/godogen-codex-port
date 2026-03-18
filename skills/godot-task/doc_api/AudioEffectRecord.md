## AudioEffectRecord <- AudioEffect

Allows the user to record the sound from an audio bus into an AudioStreamWAV. When used on the "Master" audio bus, this includes all audio output by Godot. Unlike AudioEffectCapture, this effect encodes the recording with the given format (8-bit, 16-bit, or compressed) instead of giving access to the raw audio samples. Can be used (with an AudioStreamMicrophone) to record from a microphone. **Note:** `ProjectSettings.audio/driver/enable_input` must be `true` for audio input to work. See also that setting's description for caveats related to permissions and operating system privacy settings.

**Props:**
- format: int (AudioStreamWAV.Format) = 1

**Methods:**
- get_recording() -> AudioStreamWAV
- is_recording_active() -> bool
- set_recording_active(record: bool)

