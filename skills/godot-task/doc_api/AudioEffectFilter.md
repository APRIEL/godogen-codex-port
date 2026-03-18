## AudioEffectFilter <- AudioEffect

Allows frequencies other than the `cutoff_hz` to pass.

**Props:**
- cutoff_hz: float = 2000.0
- db: int (AudioEffectFilter.FilterDB) = 0
- gain: float = 1.0
- resonance: float = 0.5

**Enums:**
**FilterDB:** FILTER_6DB=0, FILTER_12DB=1, FILTER_18DB=2, FILTER_24DB=3

