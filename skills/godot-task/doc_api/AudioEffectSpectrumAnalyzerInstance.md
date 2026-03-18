## AudioEffectSpectrumAnalyzerInstance <- AudioEffectInstance

The runtime part of an AudioEffectSpectrumAnalyzer, which can be used to query the magnitude of a frequency range on its host bus. An instance of this class can be obtained with `AudioServer.get_bus_effect_instance`.

**Methods:**
- get_magnitude_for_frequency_range(from_hz: float, to_hz: float, mode: int = 1) -> Vector2

**Enums:**
**MagnitudeMode:** MAGNITUDE_AVERAGE=0, MAGNITUDE_MAX=1

