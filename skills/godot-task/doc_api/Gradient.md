## Gradient <- Resource

This resource describes a color transition by defining a set of colored points and how to interpolate between them. See also Curve which supports more complex easing methods, but does not support colors.

**Props:**
- colors: PackedColorArray = PackedColorArray(0, 0, 0, 1, 1, 1, 1, 1)
- interpolation_color_space: int (Gradient.ColorSpace) = 0
- interpolation_mode: int (Gradient.InterpolationMode) = 0
- offsets: PackedFloat32Array = PackedFloat32Array(0, 1)

**Methods:**
- add_point(offset: float, color: Color)
- get_color(point: int) -> Color
- get_offset(point: int) -> float
- get_point_count() -> int
- remove_point(point: int)
- reverse()
- sample(offset: float) -> Color
- set_color(point: int, color: Color)
- set_offset(point: int, offset: float)

**Enums:**
**InterpolationMode:** GRADIENT_INTERPOLATE_LINEAR=0, GRADIENT_INTERPOLATE_CONSTANT=1, GRADIENT_INTERPOLATE_CUBIC=2
**ColorSpace:** GRADIENT_COLOR_SPACE_SRGB=0, GRADIENT_COLOR_SPACE_LINEAR_SRGB=1, GRADIENT_COLOR_SPACE_OKLAB=2

