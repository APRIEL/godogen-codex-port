## BaseButton <- Control

BaseButton is an abstract base class for GUI buttons. It doesn't display anything by itself.

**Props:**
- action_mode: int (BaseButton.ActionMode) = 1
- button_group: ButtonGroup
- button_mask: int (MouseButtonMask) = 1
- button_pressed: bool = false
- disabled: bool = false
- focus_mode: int (Control.FocusMode) = 2
- keep_pressed_outside: bool = false
- shortcut: Shortcut
- shortcut_feedback: bool = true
- shortcut_in_tooltip: bool = true
- toggle_mode: bool = false

**Methods:**
- get_draw_mode() -> int
- is_hovered() -> bool
- set_pressed_no_signal(pressed: bool)

**Signals:**
- button_down
- button_up
- pressed
- toggled(toggled_on: bool)

**Enums:**
**DrawMode:** DRAW_NORMAL=0, DRAW_PRESSED=1, DRAW_HOVER=2, DRAW_DISABLED=3, DRAW_HOVER_PRESSED=4
**ActionMode:** ACTION_MODE_BUTTON_PRESS=0, ACTION_MODE_BUTTON_RELEASE=1

