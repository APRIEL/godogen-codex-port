## AnimationNodeAnimation <- AnimationRootNode

A resource to add to an AnimationNodeBlendTree. Only has one output port using the `animation` property. Used as an input for AnimationNodes that blend animations together.

**Props:**
- advance_on_start: bool = false
- animation: StringName = &""
- loop_mode: int (Animation.LoopMode)
- play_mode: int (AnimationNodeAnimation.PlayMode) = 0
- start_offset: float
- stretch_time_scale: bool
- timeline_length: float
- use_custom_timeline: bool = false

**Enums:**
**PlayMode:** PLAY_MODE_FORWARD=0, PLAY_MODE_BACKWARD=1

