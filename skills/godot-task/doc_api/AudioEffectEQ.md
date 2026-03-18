## AudioEffectEQ <- AudioEffect

AudioEffectEQ gives you control over frequencies. Use it to compensate for existing deficiencies in audio. AudioEffectEQs are useful on the Master bus to completely master a mix and give it more character. They are also useful when a game is run on a mobile device, to adjust the mix to that kind of speakers (it can be added but disabled when headphones are plugged).

**Methods:**
- get_band_count() -> int
- get_band_gain_db(band_idx: int) -> float
- set_band_gain_db(band_idx: int, volume_db: float)

