## ColorPicker <- VBoxContainer

A widget that provides an interface for selecting or modifying a color. It can optionally provide functionalities like a color sampler (eyedropper), color modes, and presets. **Note:** This control is the color picker widget itself. You can use a ColorPickerButton instead if you need a button that brings up a ColorPicker in a popup.

**Props:**
- can_add_swatches: bool = true
- color: Color = Color(1, 1, 1, 1)
- color_mode: int (ColorPicker.ColorModeType) = 0
- color_modes_visible: bool = true
- deferred_mode: bool = false
- edit_alpha: bool = true
- edit_intensity: bool = true
- hex_visible: bool = true
- picker_shape: int (ColorPicker.PickerShapeType) = 0
- presets_visible: bool = true
- sampler_visible: bool = true
- sliders_visible: bool = true

**Methods:**
- add_preset(color: Color)
- add_recent_preset(color: Color)
- erase_preset(color: Color)
- erase_recent_preset(color: Color)
- get_presets() -> PackedColorArray
- get_recent_presets() -> PackedColorArray

**Signals:**
- color_changed(color: Color)
- preset_added(color: Color)
- preset_removed(color: Color)

**Enums:**
**ColorModeType:** MODE_RGB=0, MODE_HSV=1, MODE_RAW=2, MODE_LINEAR=2, MODE_OKHSL=3
**PickerShapeType:** SHAPE_HSV_RECTANGLE=0, SHAPE_HSV_WHEEL=1, SHAPE_VHS_CIRCLE=2, SHAPE_OKHSL_CIRCLE=3, SHAPE_NONE=4, SHAPE_OK_HS_RECTANGLE=5, SHAPE_OK_HL_RECTANGLE=6

