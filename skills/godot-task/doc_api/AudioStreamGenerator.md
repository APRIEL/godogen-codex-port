## AudioStreamGenerator <- AudioStream

AudioStreamGenerator is a type of audio stream that does not play back sounds on its own; instead, it expects a script to generate audio data for it. See also AudioStreamGeneratorPlayback. Here's a sample on how to use it to generate a sine wave: In the example above, the "AudioStreamPlayer" node must use an AudioStreamGenerator as its stream. The `fill_buffer` function provides audio data for approximating a sine wave. See also AudioEffectSpectrumAnalyzer for performing real-time audio spectrum analysis. **Note:** Due to performance constraints, this class is best used from C# or from a compiled language via GDExtension. If you still want to use this class from GDScript, consider using a lower `mix_rate` such as 11,025 Hz or 22,050 Hz.

**Props:**
- buffer_length: float = 0.5
- mix_rate: float = 44100.0
- mix_rate_mode: int (AudioStreamGenerator.AudioStreamGeneratorMixRate) = 2

**Enums:**
**AudioStreamGeneratorMixRate:** MIX_RATE_OUTPUT=0, MIX_RATE_INPUT=1, MIX_RATE_CUSTOM=2, MIX_RATE_MAX=3

