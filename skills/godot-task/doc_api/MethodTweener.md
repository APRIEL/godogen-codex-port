## MethodTweener <- Tweener

MethodTweener is similar to a combination of CallbackTweener and PropertyTweener. It calls a method providing an interpolated value as a parameter. See `Tween.tween_method` for more usage information. The tweener will finish automatically if the callback's target object is freed. **Note:** `Tween.tween_method` is the only correct way to create MethodTweener. Any MethodTweener created manually will not function correctly.

**Methods:**
- set_delay(delay: float) -> MethodTweener
- set_ease(ease: int) -> MethodTweener
- set_trans(trans: int) -> MethodTweener

