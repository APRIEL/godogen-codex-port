## AudioEffectDistortion <- AudioEffect

Different types are available: clip, tan, lo-fi (bit crushing), overdrive, or waveshape. By distorting the waveform the frequency content changes, which will often make the sound "crunchy" or "abrasive". For games, it can simulate sound coming from some saturated device or speaker very efficiently.

**Props:**
- drive: float = 0.0
- keep_hf_hz: float = 16000.0
- mode: int (AudioEffectDistortion.Mode) = 0
- post_gain: float = 0.0
- pre_gain: float = 0.0

**Enums:**
**Mode:** MODE_CLIP=0, MODE_ATAN=1, MODE_LOFI=2, MODE_OVERDRIVE=3, MODE_WAVESHAPE=4

