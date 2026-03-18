## AudioEffectPitchShift <- AudioEffect

Allows modulation of pitch independently of tempo. All frequencies can be increased/decreased with minimal effect on transients.

**Props:**
- fft_size: int (AudioEffectPitchShift.FFTSize) = 3
- oversampling: int = 4
- pitch_scale: float = 1.0

**Enums:**
**FFTSize:** FFT_SIZE_256=0, FFT_SIZE_512=1, FFT_SIZE_1024=2, FFT_SIZE_2048=3, FFT_SIZE_4096=4, FFT_SIZE_MAX=5

