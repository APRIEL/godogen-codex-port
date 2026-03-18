## Button <- BaseButton

Button is the standard themed button. It can contain text and an icon, and it will display them according to the current Theme. **Example:** Create a button and connect a method that will be called when the button is pressed: See also BaseButton which contains common properties and methods associated with this node. **Note:** Buttons do not detect touch input and therefore don't support multitouch, since mouse emulation can only press one button at a given time. Use TouchScreenButton for buttons that trigger gameplay movement or actions.

**Props:**
- alignment: int (HorizontalAlignment) = 1
- autowrap_mode: int (TextServer.AutowrapMode) = 0
- autowrap_trim_flags: int (TextServer.LineBreakFlag) = 128
- clip_text: bool = false
- expand_icon: bool = false
- flat: bool = false
- icon: Texture2D
- icon_alignment: int (HorizontalAlignment) = 0
- language: String = ""
- text: String = ""
- text_direction: int (Control.TextDirection) = 0
- text_overrun_behavior: int (TextServer.OverrunBehavior) = 0
- vertical_icon_alignment: int (VerticalAlignment) = 1

