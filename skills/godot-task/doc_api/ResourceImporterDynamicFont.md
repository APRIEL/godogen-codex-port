## ResourceImporterDynamicFont <- ResourceImporter

Unlike bitmap fonts, dynamic fonts can be resized to any size and still look crisp. Dynamic fonts also optionally support MSDF font rendering, which allows for run-time scale changes with no re-rasterization cost. While WOFF and especially WOFF2 tend to result in smaller file sizes, there is no universally "better" font format. In most situations, it's recommended to use the font format that was shipped on the font developer's website. See also ResourceImporterBMFont and ResourceImporterImageFont.

**Props:**
- allow_system_fallback: bool = true
- antialiasing: int = 1
- compress: bool = true
- disable_embedded_bitmaps: bool = true
- fallbacks: Array = []
- force_autohinter: bool = false
- generate_mipmaps: bool = false
- hinting: int = 3
- keep_rounding_remainders: bool = true
- language_support: Dictionary = {}
- modulate_color_glyphs: bool = false
- msdf_pixel_range: int = 8
- msdf_size: int = 48
- multichannel_signed_distance_field: bool = false
- opentype_features: Dictionary = {}
- oversampling: float = 0.0
- preload: Array = []
- script_support: Dictionary = {}
- subpixel_positioning: int = 4

