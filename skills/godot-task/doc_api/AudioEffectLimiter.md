## AudioEffectLimiter <- AudioEffect

A limiter is similar to a compressor, but it's less flexible and designed to disallow sound going over a given dB threshold. Adding one in the Master bus is always recommended to reduce the effects of clipping. Soft clipping starts to reduce the peaks a little below the threshold level and progressively increases its effect as the input level increases such that the threshold is never exceeded.

**Props:**
- ceiling_db: float = -0.1
- soft_clip_db: float = 2.0
- soft_clip_ratio: float = 10.0
- threshold_db: float = 0.0

