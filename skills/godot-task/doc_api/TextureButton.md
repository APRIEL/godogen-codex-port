## TextureButton <- BaseButton

TextureButton has the same functionality as Button, except it uses sprites instead of Godot's Theme resource. It is faster to create, but it doesn't support localization like more complex Controls. See also BaseButton which contains common properties and methods associated with this node. **Note:** Setting a texture for the "normal" state (`texture_normal`) is recommended. If `texture_normal` is not set, the TextureButton will still receive input events and be clickable, but the user will not be able to see it unless they activate another one of its states with a texture assigned (e.g., hover over it to show `texture_hover`).

**Props:**
- flip_h: bool = false
- flip_v: bool = false
- ignore_texture_size: bool = false
- stretch_mode: int (TextureButton.StretchMode) = 2
- texture_click_mask: BitMap
- texture_disabled: Texture2D
- texture_focused: Texture2D
- texture_hover: Texture2D
- texture_normal: Texture2D
- texture_pressed: Texture2D

**Enums:**
**StretchMode:** STRETCH_SCALE=0, STRETCH_TILE=1, STRETCH_KEEP=2, STRETCH_KEEP_CENTERED=3, STRETCH_KEEP_ASPECT=4, STRETCH_KEEP_ASPECT_CENTERED=5, STRETCH_KEEP_ASPECT_COVERED=6

