## AcceptDialog <- Window

The default use of AcceptDialog is to allow it to only be accepted or closed, with the same result. However, the `confirmed` and `canceled` signals allow to make the two actions different, and the `add_button` method allows to add custom buttons and actions. **Note:** AcceptDialog is invisible by default. To make it visible, call one of the `popup_*` methods from Window on the node, such as `Window.popup_centered_clamped`.

**Props:**
- dialog_autowrap: bool = false
- dialog_close_on_escape: bool = true
- dialog_hide_on_ok: bool = true
- dialog_text: String = ""
- exclusive: bool = true
- keep_title_visible: bool = true
- maximize_disabled: bool = true
- minimize_disabled: bool = true
- ok_button_text: String = ""
- title: String = "Alert!"
- transient: bool = true
- visible: bool = false
- wrap_controls: bool = true

**Methods:**
- add_button(text: String, right: bool = false, action: String = "") -> Button
- add_cancel_button(name: String) -> Button
- get_label() -> Label
- get_ok_button() -> Button
- register_text_enter(line_edit: LineEdit)
- remove_button(button: Button)

**Signals:**
- canceled
- confirmed
- custom_action(action: StringName)

