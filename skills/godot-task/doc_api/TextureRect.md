## TextureRect <- Control

A control that displays a texture, for example an icon inside a GUI. The texture's placement can be controlled with the `stretch_mode` property. It can scale, tile, or stay centered inside its bounding rectangle.

**Props:**
- expand_mode: int (TextureRect.ExpandMode) = 0
- flip_h: bool = false
- flip_v: bool = false
- mouse_filter: int (Control.MouseFilter) = 1
- stretch_mode: int (TextureRect.StretchMode) = 0
- texture: Texture2D

**Enums:**
**ExpandMode:** EXPAND_KEEP_SIZE=0, EXPAND_IGNORE_SIZE=1, EXPAND_FIT_WIDTH=2, EXPAND_FIT_WIDTH_PROPORTIONAL=3, EXPAND_FIT_HEIGHT=4, EXPAND_FIT_HEIGHT_PROPORTIONAL=5
**StretchMode:** STRETCH_SCALE=0, STRETCH_TILE=1, STRETCH_KEEP=2, STRETCH_KEEP_CENTERED=3, STRETCH_KEEP_ASPECT=4, STRETCH_KEEP_ASPECT_CENTERED=5, STRETCH_KEEP_ASPECT_COVERED=6

