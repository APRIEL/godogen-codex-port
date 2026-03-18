## AnimationNodeOneShot <- AnimationNodeSync

A resource to add to an AnimationNodeBlendTree. This animation node will execute a sub-animation and return once it finishes. Blend times for fading in and out can be customized, as well as filters. After setting the request and changing the animation playback, the one-shot node automatically clears the request on the next process frame by setting its `request` value to `ONE_SHOT_REQUEST_NONE`.

**Props:**
- abort_on_reset: bool = false
- autorestart: bool = false
- autorestart_delay: float = 1.0
- autorestart_random_delay: float = 0.0
- break_loop_at_end: bool = false
- fadein_curve: Curve
- fadein_time: float = 0.0
- fadeout_curve: Curve
- fadeout_time: float = 0.0
- mix_mode: int (AnimationNodeOneShot.MixMode) = 0

**Enums:**
**OneShotRequest:** ONE_SHOT_REQUEST_NONE=0, ONE_SHOT_REQUEST_FIRE=1, ONE_SHOT_REQUEST_ABORT=2, ONE_SHOT_REQUEST_FADE_OUT=3
**MixMode:** MIX_MODE_BLEND=0, MIX_MODE_ADD=1

