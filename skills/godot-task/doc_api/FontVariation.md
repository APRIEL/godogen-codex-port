## FontVariation <- Font

Provides OpenType variations, simulated bold / slant, and additional font settings like OpenType features and extra spacing. To use simulated bold font variant: To set the coordinate of multiple variation axes:

**Props:**
- base_font: Font
- baseline_offset: float = 0.0
- opentype_features: Dictionary = {}
- spacing_bottom: int = 0
- spacing_glyph: int = 0
- spacing_space: int = 0
- spacing_top: int = 0
- variation_embolden: float = 0.0
- variation_face_index: int = 0
- variation_opentype: Dictionary = {}
- variation_transform: Transform2D = Transform2D(1, 0, 0, 1, 0, 0)

**Methods:**
- set_spacing(spacing: int, value: int)

