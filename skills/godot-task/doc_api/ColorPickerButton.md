## ColorPickerButton <- Button

Encapsulates a ColorPicker, making it accessible by pressing a button. Pressing the button will toggle the ColorPicker's visibility. See also BaseButton which contains common properties and methods associated with this node. **Note:** By default, the button may not be wide enough for the color preview swatch to be visible. Make sure to set `Control.custom_minimum_size` to a big enough value to give the button enough space.

**Props:**
- color: Color = Color(0, 0, 0, 1)
- edit_alpha: bool = true
- edit_intensity: bool = true
- toggle_mode: bool = true

**Methods:**
- get_picker() -> ColorPicker
- get_popup() -> PopupPanel

**Signals:**
- color_changed(color: Color)
- picker_created
- popup_closed

