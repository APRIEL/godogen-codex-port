## InputEventAction <- InputEvent

Contains a generic action which can be targeted from several types of inputs. Actions and their events can be set in the **Input Map** tab in **Project > Project Settings**, or with the InputMap class. **Note:** Unlike the other InputEvent subclasses which map to unique physical events, this virtual one is not emitted by the engine. This class is useful to emit actions manually with `Input.parse_input_event`, which are then received in `Node._input`. To check if a physical event matches an action from the Input Map, use `InputEvent.is_action` and `InputEvent.is_action_pressed`.

**Props:**
- action: StringName = &""
- event_index: int = -1
- pressed: bool = false
- strength: float = 1.0

