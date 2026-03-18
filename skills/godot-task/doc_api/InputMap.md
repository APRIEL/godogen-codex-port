## InputMap <- Object

Manages all InputEventAction which can be created/modified from the project settings menu **Project > Project Settings > Input Map** or in code with `add_action` and `action_add_event`. See `Node._input`.

**Methods:**
- action_add_event(action: StringName, event: InputEvent)
- action_erase_event(action: StringName, event: InputEvent)
- action_erase_events(action: StringName)
- action_get_deadzone(action: StringName) -> float
- action_get_events(action: StringName) -> InputEvent[]
- action_has_event(action: StringName, event: InputEvent) -> bool
- action_set_deadzone(action: StringName, deadzone: float)
- add_action(action: StringName, deadzone: float = 0.2)
- erase_action(action: StringName)
- event_is_action(event: InputEvent, action: StringName, exact_match: bool = false) -> bool
- get_action_description(action: StringName) -> String
- get_actions() -> StringName[]
- has_action(action: StringName) -> bool
- load_from_project_settings()

