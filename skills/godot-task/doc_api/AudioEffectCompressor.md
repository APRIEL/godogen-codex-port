## AudioEffectCompressor <- AudioEffect

Dynamic range compressor reduces the level of the sound when the amplitude goes over a certain threshold in Decibels. One of the main uses of a compressor is to increase the dynamic range by clipping as little as possible (when sound goes over 0dB). Compressor has many uses in the mix: - In the Master bus to compress the whole output (although an AudioEffectHardLimiter is probably better). - In voice channels to ensure they sound as balanced as possible. - Sidechained. This can reduce the sound level sidechained with another audio bus for threshold detection. This technique is common in video game mixing to the level of music and SFX while voices are being heard. - Accentuates transients by using a wider attack, making effects sound more punchy.

**Props:**
- attack_us: float = 20.0
- gain: float = 0.0
- mix: float = 1.0
- ratio: float = 4.0
- release_ms: float = 250.0
- sidechain: StringName = &""
- threshold: float = 0.0

