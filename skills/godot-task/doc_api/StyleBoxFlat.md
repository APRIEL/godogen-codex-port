## StyleBoxFlat <- StyleBox

By configuring various properties of this style box, you can achieve many common looks without the need of a texture. This includes optionally rounded borders, antialiasing, shadows, and skew. Setting corner radius to high values is allowed. As soon as corners overlap, the stylebox will switch to a relative system: [codeblock lang=text] height = 30 corner_radius_top_left = 50 corner_radius_bottom_left = 100 [/codeblock] The relative system now would take the 1:2 ratio of the two left corners to calculate the actual corner width. Both corners added will **never** be more than the height. Result: [codeblock lang=text] corner_radius_top_left: 10 corner_radius_bottom_left: 20 [/codeblock]

**Props:**
- anti_aliasing: bool = true
- anti_aliasing_size: float = 1.0
- bg_color: Color = Color(0.6, 0.6, 0.6, 1)
- border_blend: bool = false
- border_color: Color = Color(0.8, 0.8, 0.8, 1)
- border_width_bottom: int = 0
- border_width_left: int = 0
- border_width_right: int = 0
- border_width_top: int = 0
- corner_detail: int = 8
- corner_radius_bottom_left: int = 0
- corner_radius_bottom_right: int = 0
- corner_radius_top_left: int = 0
- corner_radius_top_right: int = 0
- draw_center: bool = true
- expand_margin_bottom: float = 0.0
- expand_margin_left: float = 0.0
- expand_margin_right: float = 0.0
- expand_margin_top: float = 0.0
- shadow_color: Color = Color(0, 0, 0, 0.6)
- shadow_offset: Vector2 = Vector2(0, 0)
- shadow_size: int = 0
- skew: Vector2 = Vector2(0, 0)

**Methods:**
- get_border_width(margin: int) -> int
- get_border_width_min() -> int
- get_corner_radius(corner: int) -> int
- get_expand_margin(margin: int) -> float
- set_border_width(margin: int, width: int)
- set_border_width_all(width: int)
- set_corner_radius(corner: int, radius: int)
- set_corner_radius_all(radius: int)
- set_expand_margin(margin: int, size: float)
- set_expand_margin_all(size: float)

