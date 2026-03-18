## AudioEffectHardLimiter <- AudioEffect

A limiter is an effect designed to disallow sound from going over a given dB threshold. Hard limiters predict volume peaks, and will smoothly apply gain reduction when a peak crosses the ceiling threshold to prevent clipping and distortion. It preserves the waveform and prevents it from crossing the ceiling threshold. Adding one in the Master bus is recommended as a safety measure to prevent sudden volume peaks from occurring, and to prevent distortion caused by clipping.

**Props:**
- ceiling_db: float = -0.3
- pre_gain_db: float = 0.0
- release: float = 0.1

