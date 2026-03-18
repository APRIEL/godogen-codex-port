## LabelSettings <- Resource

LabelSettings is a resource that provides common settings to customize the text in a Label. It will take priority over the properties defined in `Control.theme`. The resource can be shared between multiple labels and changed on the fly, so it's convenient and flexible way to setup text style.

**Props:**
- font: Font
- font_color: Color = Color(1, 1, 1, 1)
- font_size: int = 16
- line_spacing: float = 3.0
- outline_color: Color = Color(1, 1, 1, 1)
- outline_size: int = 0
- paragraph_spacing: float = 0.0
- shadow_color: Color = Color(0, 0, 0, 0)
- shadow_offset: Vector2 = Vector2(1, 1)
- shadow_size: int = 1
- stacked_outline_count: int = 0
- stacked_shadow_count: int = 0

**Methods:**
- add_stacked_outline(index: int = -1)
- add_stacked_shadow(index: int = -1)
- get_stacked_outline_color(index: int) -> Color
- get_stacked_outline_size(index: int) -> int
- get_stacked_shadow_color(index: int) -> Color
- get_stacked_shadow_offset(index: int) -> Vector2
- get_stacked_shadow_outline_size(index: int) -> int
- move_stacked_outline(from_index: int, to_position: int)
- move_stacked_shadow(from_index: int, to_position: int)
- remove_stacked_outline(index: int)
- remove_stacked_shadow(index: int)
- set_stacked_outline_color(index: int, color: Color)
- set_stacked_outline_size(index: int, size: int)
- set_stacked_shadow_color(index: int, color: Color)
- set_stacked_shadow_offset(index: int, offset: Vector2)
- set_stacked_shadow_outline_size(index: int, size: int)

