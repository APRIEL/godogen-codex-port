## VideoStreamPlayer <- Control

A control used for playback of VideoStream resources. Supported video formats are (`.ogv`, VideoStreamTheora) and any format exposed via a GDExtension plugin. **Warning:** On Web, video playback *will* perform poorly due to missing architecture-specific assembly optimizations.

**Props:**
- audio_track: int = 0
- autoplay: bool = false
- buffering_msec: int = 500
- bus: StringName = &"Master"
- expand: bool = false
- loop: bool = false
- paused: bool = false
- speed_scale: float = 1.0
- stream: VideoStream
- stream_position: float
- volume: float
- volume_db: float = 0.0

**Methods:**
- get_stream_length() -> float
- get_stream_name() -> String
- get_video_texture() -> Texture2D
- is_playing() -> bool
- play()
- stop()

**Signals:**
- finished

