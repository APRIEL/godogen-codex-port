## AudioEffectSpectrumAnalyzer <- AudioEffect

This audio effect does not affect sound output, but can be used for real-time audio visualizations. This resource configures an AudioEffectSpectrumAnalyzerInstance, which performs the actual analysis at runtime. An instance can be obtained with `AudioServer.get_bus_effect_instance`. See also AudioStreamGenerator for procedurally generating sounds.

**Props:**
- buffer_length: float = 2.0
- fft_size: int (AudioEffectSpectrumAnalyzer.FFTSize) = 2

**Enums:**
**FFTSize:** FFT_SIZE_256=0, FFT_SIZE_512=1, FFT_SIZE_1024=2, FFT_SIZE_2048=3, FFT_SIZE_4096=4, FFT_SIZE_MAX=5

