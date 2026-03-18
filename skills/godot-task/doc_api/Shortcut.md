## Shortcut <- Resource

Shortcuts (also known as hotkeys) are containers of InputEvent resources. They are commonly used to interact with a Control element from an InputEvent. One shortcut can contain multiple InputEvent resources, making it possible to trigger one action with multiple different inputs. **Example:** Capture the [kbd]Ctrl + S[/kbd] shortcut using a Shortcut resource:

**Props:**
- events: Array = []

**Methods:**
- get_as_text() -> String
- has_valid_event() -> bool
- matches_event(event: InputEvent) -> bool

