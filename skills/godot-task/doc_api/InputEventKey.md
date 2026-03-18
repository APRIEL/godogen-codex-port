## InputEventKey <- InputEventWithModifiers

An input event for keys on a keyboard. Supports key presses, key releases and `echo` events. It can also be received in `Node._unhandled_key_input`. **Note:** Events received from the keyboard usually have all properties set. Event mappings should have only one of the `keycode`, `physical_keycode` or `unicode` set. When events are compared, properties are checked in the following priority - `keycode`, `physical_keycode` and `unicode`. Events with the first matching value will be considered equal.

**Props:**
- echo: bool = false
- key_label: int (Key) = 0
- keycode: int (Key) = 0
- location: int (KeyLocation) = 0
- physical_keycode: int (Key) = 0
- pressed: bool = false
- unicode: int = 0

**Methods:**
- as_text_key_label() -> String
- as_text_keycode() -> String
- as_text_location() -> String
- as_text_physical_keycode() -> String
- get_key_label_with_modifiers() -> int
- get_keycode_with_modifiers() -> int
- get_physical_keycode_with_modifiers() -> int

