## VirtualJoystick <- Control

A customizable on-screen joystick control designed for touchscreen devices. It allows users to provide directional input by dragging a virtual tip within a defined circular area. This control can simulate directional actions (see `action_up`, `action_down`, `action_left`, and `action_right`), which are triggered when the joystick is moved in the corresponding directions.

**Props:**
- action_down: StringName = &"ui_down"
- action_left: StringName = &"ui_left"
- action_right: StringName = &"ui_right"
- action_up: StringName = &"ui_up"
- clampzone_ratio: float = 1.0
- deadzone_ratio: float = 0.0
- initial_offset_ratio: Vector2 = Vector2(0.5, 0.5)
- joystick_mode: int (VirtualJoystick.JoystickMode) = 0
- joystick_size: float = 100.0
- joystick_texture: Texture2D
- tip_size: float = 50.0
- tip_texture: Texture2D
- visibility_mode: int (VirtualJoystick.VisibilityMode) = 0

**Signals:**
- flick_canceled
- flicked(input_vector: Vector2)
- pressed
- released(input_vector: Vector2)
- tapped

**Enums:**
**JoystickMode:** JOYSTICK_FIXED=0, JOYSTICK_DYNAMIC=1, JOYSTICK_FOLLOWING=2
**VisibilityMode:** VISIBILITY_ALWAYS=0, VISIBILITY_WHEN_TOUCHED=1

