## ResourceImporterImageFont <- ResourceImporter

This image-based workflow can be easier to use than ResourceImporterBMFont, but it requires all glyphs to have the same width and height, glyph advances and drawing offsets can be customized. This makes ResourceImporterImageFont most suited to fixed-width fonts. See also ResourceImporterDynamicFont.

**Props:**
- ascent: int = 0
- character_margin: Rect2i = Rect2i(0, 0, 0, 0)
- character_ranges: PackedStringArray = PackedStringArray()
- columns: int = 1
- compress: bool = true
- descent: int = 0
- fallbacks: Array = []
- image_margin: Rect2i = Rect2i(0, 0, 0, 0)
- kerning_pairs: PackedStringArray = PackedStringArray()
- rows: int = 1
- scaling_mode: int = 2

