## TextMesh <- PrimitiveMesh

Generate a PrimitiveMesh from the text. TextMesh can be generated only when using dynamic fonts with vector glyph contours. Bitmap fonts (including bitmap data in the TrueType/OpenType containers, like color emoji fonts) are not supported. The UV layout is arranged in 4 horizontal strips, top to bottom: 40% of the height for the front face, 40% for the back face, 10% for the outer edges and 10% for the inner edges.

**Props:**
- autowrap_mode: int (TextServer.AutowrapMode) = 0
- curve_step: float = 0.5
- depth: float = 0.05
- font: Font
- font_size: int = 16
- horizontal_alignment: int (HorizontalAlignment) = 1
- justification_flags: int (TextServer.JustificationFlag) = 163
- language: String = ""
- line_spacing: float = 0.0
- offset: Vector2 = Vector2(0, 0)
- pixel_size: float = 0.01
- structured_text_bidi_override: int (TextServer.StructuredTextParser) = 0
- structured_text_bidi_override_options: Array = []
- text: String = ""
- text_direction: int (TextServer.Direction) = 0
- uppercase: bool = false
- vertical_alignment: int (VerticalAlignment) = 1
- width: float = 500.0

