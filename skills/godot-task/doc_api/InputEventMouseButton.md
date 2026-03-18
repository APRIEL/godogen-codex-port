## InputEventMouseButton <- InputEventMouse

Stores information about mouse click events. See `Node._input`. **Note:** On Wear OS devices, rotary input is mapped to `MOUSE_BUTTON_WHEEL_UP` and `MOUSE_BUTTON_WHEEL_DOWN`. This can be changed to `MOUSE_BUTTON_WHEEL_LEFT` and `MOUSE_BUTTON_WHEEL_RIGHT` with the `ProjectSettings.input_devices/pointing/android/rotary_input_scroll_axis` setting.

**Props:**
- button_index: int (MouseButton) = 0
- canceled: bool = false
- double_click: bool = false
- factor: float = 1.0
- pressed: bool = false

