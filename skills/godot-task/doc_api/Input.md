## Input <- Object

The Input singleton handles key presses, mouse buttons and movement, gamepads, and input actions. Actions and their events can be set in the **Input Map** tab in **Project > Project Settings**, or with the InputMap class. **Note:** Input's methods reflect the global input state and are not affected by `Control.accept_event` or `Viewport.set_input_as_handled`, as those methods only deal with the way input is propagated in the SceneTree.

**Props:**
- emulate_mouse_from_touch: bool
- emulate_touch_from_mouse: bool
- mouse_mode: int (Input.MouseMode)
- use_accumulated_input: bool

**Methods:**
- action_press(action: StringName, strength: float = 1.0)
- action_release(action: StringName)
- add_joy_mapping(mapping: String, update_existing: bool = false)
- clear_joy_motion_sensors_calibration(device: int)
- flush_buffered_events()
- get_accelerometer() -> Vector3
- get_action_raw_strength(action: StringName, exact_match: bool = false) -> float
- get_action_strength(action: StringName, exact_match: bool = false) -> float
- get_axis(negative_action: StringName, positive_action: StringName) -> float
- get_connected_joypads() -> int[]
- get_current_cursor_shape() -> int
- get_gravity() -> Vector3
- get_gyroscope() -> Vector3
- get_joy_accelerometer(device: int) -> Vector3
- get_joy_axis(device: int, axis: int) -> float
- get_joy_gravity(device: int) -> Vector3
- get_joy_guid(device: int) -> String
- get_joy_gyroscope(device: int) -> Vector3
- get_joy_info(device: int) -> Dictionary
- get_joy_motion_sensors_calibration(device: int) -> Dictionary
- get_joy_motion_sensors_rate(device: int) -> float
- get_joy_name(device: int) -> String
- get_joy_vibration_duration(device: int) -> float
- get_joy_vibration_strength(device: int) -> Vector2
- get_last_mouse_screen_velocity() -> Vector2
- get_last_mouse_velocity() -> Vector2
- get_magnetometer() -> Vector3
- get_mouse_button_mask() -> int
- get_vector(negative_x: StringName, positive_x: StringName, negative_y: StringName, positive_y: StringName, deadzone: float = -1.0) -> Vector2
- has_joy_light(device: int) -> bool
- has_joy_motion_sensors(device: int) -> bool
- is_action_just_pressed(action: StringName, exact_match: bool = false) -> bool
- is_action_just_pressed_by_event(action: StringName, event: InputEvent, exact_match: bool = false) -> bool
- is_action_just_released(action: StringName, exact_match: bool = false) -> bool
- is_action_just_released_by_event(action: StringName, event: InputEvent, exact_match: bool = false) -> bool
- is_action_pressed(action: StringName, exact_match: bool = false) -> bool
- is_anything_pressed() -> bool
- is_joy_button_pressed(device: int, button: int) -> bool
- is_joy_known(device: int) -> bool
- is_joy_motion_sensors_calibrated(device: int) -> bool
- is_joy_motion_sensors_calibrating(device: int) -> bool
- is_joy_motion_sensors_enabled(device: int) -> bool
- is_key_label_pressed(keycode: int) -> bool
- is_key_pressed(keycode: int) -> bool
- is_mouse_button_pressed(button: int) -> bool
- is_physical_key_pressed(keycode: int) -> bool
- parse_input_event(event: InputEvent)
- remove_joy_mapping(guid: String)
- set_accelerometer(value: Vector3)
- set_custom_mouse_cursor(image: Resource, shape: int = 0, hotspot: Vector2 = Vector2(0, 0))
- set_default_cursor_shape(shape: int = 0)
- set_gravity(value: Vector3)
- set_gyroscope(value: Vector3)
- set_joy_light(device: int, color: Color)
- set_joy_motion_sensors_calibration(device: int, calibration_info: Dictionary)
- set_joy_motion_sensors_enabled(device: int, enable: bool)
- set_magnetometer(value: Vector3)
- should_ignore_device(vendor_id: int, product_id: int) -> bool
- start_joy_motion_sensors_calibration(device: int)
- start_joy_vibration(device: int, weak_magnitude: float, strong_magnitude: float, duration: float = 0)
- stop_joy_motion_sensors_calibration(device: int)
- stop_joy_vibration(device: int)
- vibrate_handheld(duration_ms: int = 500, amplitude: float = -1.0)
- warp_mouse(position: Vector2)

**Signals:**
- joy_connection_changed(device: int, connected: bool)

**Enums:**
**MouseMode:** MOUSE_MODE_VISIBLE=0, MOUSE_MODE_HIDDEN=1, MOUSE_MODE_CAPTURED=2, MOUSE_MODE_CONFINED=3, MOUSE_MODE_CONFINED_HIDDEN=4, MOUSE_MODE_MAX=5
**CursorShape:** CURSOR_ARROW=0, CURSOR_IBEAM=1, CURSOR_POINTING_HAND=2, CURSOR_CROSS=3, CURSOR_WAIT=4, CURSOR_BUSY=5, CURSOR_DRAG=6, CURSOR_CAN_DROP=7, CURSOR_FORBIDDEN=8, CURSOR_VSIZE=9, ...

