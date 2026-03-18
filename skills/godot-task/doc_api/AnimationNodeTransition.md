## AnimationNodeTransition <- AnimationNodeSync

Simple state machine for cases which don't require a more advanced AnimationNodeStateMachine. Animations can be connected to the inputs and transition times can be specified. After setting the request and changing the animation playback, the transition node automatically clears the request on the next process frame by setting its `transition_request` value to empty. **Note:** When using a cross-fade, `current_state` and `current_index` change to the next state immediately after the cross-fade begins.

**Props:**
- allow_transition_to_self: bool = false
- input_count: int = 0
- xfade_curve: Curve
- xfade_time: float = 0.0

**Methods:**
- is_input_loop_broken_at_end(input: int) -> bool
- is_input_reset(input: int) -> bool
- is_input_set_as_auto_advance(input: int) -> bool
- set_input_as_auto_advance(input: int, enable: bool)
- set_input_break_loop_at_end(input: int, enable: bool)
- set_input_reset(input: int, enable: bool)

