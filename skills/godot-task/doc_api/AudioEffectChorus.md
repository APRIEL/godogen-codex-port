## AudioEffectChorus <- AudioEffect

Adds a chorus audio effect. The effect applies a filter with voices to duplicate the audio source and manipulate it through the filter.

**Props:**
- dry: float = 1.0
- voice/1/cutoff_hz: float = 8000.0
- voice/1/delay_ms: float = 15.0
- voice/1/depth_ms: float = 2.0
- voice/1/level_db: float = 0.0
- voice/1/pan: float = -0.5
- voice/1/rate_hz: float = 0.8
- voice/2/cutoff_hz: float = 8000.0
- voice/2/delay_ms: float = 20.0
- voice/2/depth_ms: float = 3.0
- voice/2/level_db: float = 0.0
- voice/2/pan: float = 0.5
- voice/2/rate_hz: float = 1.2
- voice/3/cutoff_hz: float
- voice/3/delay_ms: float
- voice/3/depth_ms: float
- voice/3/level_db: float
- voice/3/pan: float
- voice/3/rate_hz: float
- voice/4/cutoff_hz: float
- voice/4/delay_ms: float
- voice/4/depth_ms: float
- voice/4/level_db: float
- voice/4/pan: float
- voice/4/rate_hz: float
- voice_count: int = 2
- wet: float = 0.5

**Methods:**
- get_voice_cutoff_hz(voice_idx: int) -> float
- get_voice_delay_ms(voice_idx: int) -> float
- get_voice_depth_ms(voice_idx: int) -> float
- get_voice_level_db(voice_idx: int) -> float
- get_voice_pan(voice_idx: int) -> float
- get_voice_rate_hz(voice_idx: int) -> float
- set_voice_cutoff_hz(voice_idx: int, cutoff_hz: float)
- set_voice_delay_ms(voice_idx: int, delay_ms: float)
- set_voice_depth_ms(voice_idx: int, depth_ms: float)
- set_voice_level_db(voice_idx: int, level_db: float)
- set_voice_pan(voice_idx: int, pan: float)
- set_voice_rate_hz(voice_idx: int, rate_hz: float)

