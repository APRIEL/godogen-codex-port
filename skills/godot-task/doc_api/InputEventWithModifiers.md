## InputEventWithModifiers <- InputEventFromWindow

Stores information about mouse, keyboard, and touch gesture input events. This includes information about which modifier keys are pressed, such as [kbd]Shift[/kbd] or [kbd]Alt[/kbd]. See `Node._input`. **Note:** Modifier keys are considered modifiers only when used in combination with another key. As a result, their corresponding member variables, such as `ctrl_pressed`, will return `false` if the key is pressed on its own.

**Props:**
- alt_pressed: bool = false
- command_or_control_autoremap: bool = false
- ctrl_pressed: bool = false
- meta_pressed: bool = false
- shift_pressed: bool = false

**Methods:**
- get_modifiers_mask() -> int
- is_command_or_control_pressed() -> bool

