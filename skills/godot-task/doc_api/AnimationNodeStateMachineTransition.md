## AnimationNodeStateMachineTransition <- Resource

The path generated when using `AnimationNodeStateMachinePlayback.travel` is limited to the nodes connected by AnimationNodeStateMachineTransition. You can set the timing and conditions of the transition in detail.

**Props:**
- advance_condition: StringName = &""
- advance_expression: String = ""
- advance_mode: int (AnimationNodeStateMachineTransition.AdvanceMode) = 1
- break_loop_at_end: bool = false
- priority: int = 1
- reset: bool = true
- switch_mode: int (AnimationNodeStateMachineTransition.SwitchMode) = 0
- xfade_curve: Curve
- xfade_time: float = 0.0

**Signals:**
- advance_condition_changed

**Enums:**
**SwitchMode:** SWITCH_MODE_IMMEDIATE=0, SWITCH_MODE_SYNC=1, SWITCH_MODE_AT_END=2
**AdvanceMode:** ADVANCE_MODE_DISABLED=0, ADVANCE_MODE_ENABLED=1, ADVANCE_MODE_AUTO=2

