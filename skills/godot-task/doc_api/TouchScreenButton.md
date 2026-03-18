## TouchScreenButton <- Node2D

TouchScreenButton allows you to create on-screen buttons for touch devices. It's intended for gameplay use, such as a unit you have to touch to move. Unlike Button, TouchScreenButton supports multitouch out of the box. Several TouchScreenButtons can be pressed at the same time with touch input. This node inherits from Node2D. Unlike with Control nodes, you cannot set anchors on it. If you want to create menus or user interfaces, you may want to use Button nodes instead. To make button nodes react to touch events, you can enable `ProjectSettings.input_devices/pointing/emulate_mouse_from_touch` in the Project Settings. You can configure TouchScreenButton to be visible only on touch devices, helping you develop your game both for desktop and mobile devices.

**Props:**
- action: String = ""
- bitmask: BitMap
- passby_press: bool = false
- shape: Shape2D
- shape_centered: bool = true
- shape_visible: bool = true
- texture_normal: Texture2D
- texture_pressed: Texture2D
- visibility_mode: int (TouchScreenButton.VisibilityMode) = 0

**Methods:**
- is_pressed() -> bool

**Signals:**
- pressed
- released

**Enums:**
**VisibilityMode:** VISIBILITY_ALWAYS=0, VISIBILITY_TOUCHSCREEN_ONLY=1

