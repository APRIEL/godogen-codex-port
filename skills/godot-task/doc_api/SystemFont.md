## SystemFont <- Font

SystemFont loads a font from a system font with the first matching name from `font_names`. It will attempt to match font style, but it's not guaranteed. The returned font might be part of a font collection or be a variable font with OpenType "weight", "width" and/or "italic" features set. You can create FontVariation of the system font for precise control over its features. **Note:** This class is implemented on iOS, Linux, macOS and Windows, on other platforms it will fallback to default theme font.

**Props:**
- allow_system_fallback: bool = true
- antialiasing: int (TextServer.FontAntialiasing) = 1
- disable_embedded_bitmaps: bool = true
- font_italic: bool = false
- font_names: PackedStringArray = PackedStringArray()
- font_stretch: int = 100
- font_weight: int = 400
- force_autohinter: bool = false
- generate_mipmaps: bool = false
- hinting: int (TextServer.Hinting) = 1
- keep_rounding_remainders: bool = true
- modulate_color_glyphs: bool = false
- msdf_pixel_range: int = 16
- msdf_size: int = 48
- multichannel_signed_distance_field: bool = false
- oversampling: float = 0.0
- subpixel_positioning: int (TextServer.SubpixelPositioning) = 1

