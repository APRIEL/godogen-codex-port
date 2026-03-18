## Color

A color represented in RGBA format by a red (`r`), green (`g`), blue (`b`), and alpha (`a`) component. Each component is a 32-bit floating-point value, usually ranging from `0.0` to `1.0`. Some properties (such as `CanvasItem.modulate`) may support values greater than `1.0`, for overbright or HDR (High Dynamic Range) colors. Colors can be created in a number of ways: By the various Color constructors, by static methods such as `from_hsv`, and by using a name from the set of standardized colors based on with the addition of `TRANSPARENT`. Although Color may be used to store values of any encoding, the red (`r`), green (`g`), and blue (`b`) properties of Color are expected by Godot to be encoded using the unless otherwise stated. This color encoding is used by many traditional art and web tools, making it easy to match colors between Godot and these tools. Godot uses color primaries, which are used by the sRGB standard. All physical simulation, such as lighting calculations, and colorimetry transformations, such as `get_luminance`, must be performed on linearly encoded values to produce correct results. When performing these calculations, convert Color to and from linear encoding using `srgb_to_linear` and `linear_to_srgb`. **Note:** In a boolean context, a Color will evaluate to `false` if it is equal to `Color(0, 0, 0, 1)` (opaque black). Otherwise, a Color will always evaluate to `true`.

**Props:**
- a: float = 1.0
- a8: int = 255
- b: float = 0.0
- b8: int = 0
- g: float = 0.0
- g8: int = 0
- h: float = 0.0
- ok_hsl_h: float = 0.0
- ok_hsl_l: float = 0.0
- ok_hsl_s: float = 0.0
- r: float = 0.0
- r8: int = 0
- s: float = 0.0
- v: float = 0.0

**Methods:**
- blend(over: Color) -> Color
- clamp(min: Color = Color(0, 0, 0, 0), max: Color = Color(1, 1, 1, 1)) -> Color
- darkened(amount: float) -> Color
- from_hsv(h: float, s: float, v: float, alpha: float = 1.0) -> Color
- from_ok_hsl(h: float, s: float, l: float, alpha: float = 1.0) -> Color
- from_rgba8(r8: int, g8: int, b8: int, a8: int = 255) -> Color
- from_rgbe9995(rgbe: int) -> Color
- from_string(str: String, default: Color) -> Color
- get_luminance() -> float
- hex(hex: int) -> Color
- hex64(hex: int) -> Color
- html(rgba: String) -> Color
- html_is_valid(color: String) -> bool
- inverted() -> Color
- is_equal_approx(to: Color) -> bool
- lerp(to: Color, weight: float) -> Color
- lightened(amount: float) -> Color
- linear_to_srgb() -> Color
- srgb_to_linear() -> Color
- to_abgr32() -> int
- to_abgr64() -> int
- to_argb32() -> int
- to_argb64() -> int
- to_html(with_alpha: bool = true) -> String
- to_rgba32() -> int
- to_rgba64() -> int

**Enums:**
**Constants:** ALICE_BLUE=Color(0.9411765, 0.972549, 1, 1), ANTIQUE_WHITE=Color(0.98039216, 0.92156863, 0.84313726, 1), AQUA=Color(0, 1, 1, 1), AQUAMARINE=Color(0.49803922, 1, 0.83137256, 1), AZURE=Color(0.9411765, 1, 1, 1), BEIGE=Color(0.9607843, 0.9607843, 0.8627451, 1), BISQUE=Color(1, 0.89411765, 0.76862746, 1), BLACK=Color(0, 0, 0, 1), BLANCHED_ALMOND=Color(1, 0.92156863, 0.8039216, 1), BLUE=Color(0, 0, 1, 1), ...

