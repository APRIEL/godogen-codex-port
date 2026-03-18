## SpinBox <- Range

SpinBox is a numerical input text field. It allows entering integers and floating-point numbers. The SpinBox also has up and down buttons that can be clicked increase or decrease the value. The value can also be changed by dragging the mouse up or down over the SpinBox's arrows. Additionally, mathematical expressions can be entered. These are evaluated when the user presses [kbd]Enter[/kbd] while editing the SpinBox's text field. This uses the Expression class to parse and evaluate the expression. The result of the expression is then set as the value of the SpinBox. Some examples of valid expressions are `5 + 2 * 3`, `pow(2, 4)`, and `PI + sin(0.5)`. Expressions are case-sensitive. **Example:** Create a SpinBox, disable its context menu and set its text alignment to right. See Range class for more options over the SpinBox. **Note:** With the SpinBox's context menu disabled, you can right-click the bottom half of the spinbox to set the value to its minimum, while right-clicking the top half sets the value to its maximum. **Note:** SpinBox relies on an underlying LineEdit node. To theme a SpinBox's background, add theme items for LineEdit and customize them. The LineEdit has the `SpinBoxInnerLineEdit` theme variation, so that you can give it a distinct appearance from regular LineEdits. **Note:** If you want to implement drag and drop for the underlying LineEdit, you can use `Control.set_drag_forwarding` on the node returned by `get_line_edit`.

**Props:**
- alignment: int (HorizontalAlignment) = 0
- custom_arrow_round: bool = false
- custom_arrow_step: float = 0.0
- editable: bool = true
- prefix: String = ""
- select_all_on_focus: bool = false
- size_flags_vertical: int (Control.SizeFlags) = 1
- step: float = 1.0
- suffix: String = ""
- update_on_text_changed: bool = false

**Methods:**
- apply()
- get_line_edit() -> LineEdit

