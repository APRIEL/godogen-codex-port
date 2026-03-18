## ButtonGroup <- Resource

A group of BaseButton-derived buttons. The buttons in a ButtonGroup are treated like radio buttons: No more than one button can be pressed at a time. Some types of buttons (such as CheckBox) may have a special appearance in this state. Every member of a ButtonGroup should have `BaseButton.toggle_mode` set to `true`.

**Props:**
- allow_unpress: bool = false
- resource_local_to_scene: bool = true

**Methods:**
- get_buttons() -> BaseButton[]
- get_pressed_button() -> BaseButton

**Signals:**
- pressed(button: BaseButton)

