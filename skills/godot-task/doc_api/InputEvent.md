## InputEvent <- Resource

Abstract base class of all types of input events. See `Node._input`.

**Props:**
- device: int = 0

**Methods:**
- accumulate(with_event: InputEvent) -> bool
- as_text() -> String
- get_action_strength(action: StringName, exact_match: bool = false) -> float
- is_action(action: StringName, exact_match: bool = false) -> bool
- is_action_pressed(action: StringName, allow_echo: bool = false, exact_match: bool = false) -> bool
- is_action_released(action: StringName, exact_match: bool = false) -> bool
- is_action_type() -> bool
- is_canceled() -> bool
- is_echo() -> bool
- is_match(event: InputEvent, exact_match: bool = true) -> bool
- is_pressed() -> bool
- is_released() -> bool
- xformed_by(xform: Transform2D, local_ofs: Vector2 = Vector2(0, 0)) -> InputEvent

**Enums:**
**Constants:** DEVICE_ID_EMULATION=-1

