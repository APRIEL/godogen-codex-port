## ResourceImporterWAV <- ResourceImporter

WAV is an uncompressed format, which can provide higher quality compared to Ogg Vorbis and MP3. It also has the lowest CPU cost to decode. This means high numbers of WAV sounds can be played at the same time, even on low-end devices. By default, Godot imports WAV files using the lossy Quite OK Audio compression. You may change this by setting the `compress/mode` property.

**Props:**
- compress/mode: int = 2
- edit/loop_begin: int = 0
- edit/loop_end: int = -1
- edit/loop_mode: int = 0
- edit/normalize: bool = false
- edit/trim: bool = false
- force/8_bit: bool = false
- force/max_rate: bool = false
- force/max_rate_hz: float = 44100
- force/mono: bool = false

