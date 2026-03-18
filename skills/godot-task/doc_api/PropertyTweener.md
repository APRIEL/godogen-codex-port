## PropertyTweener <- Tweener

PropertyTweener is used to interpolate a property in an object. See `Tween.tween_property` for more usage information. The tweener will finish automatically if the target object is freed. **Note:** `Tween.tween_property` is the only correct way to create PropertyTweener. Any PropertyTweener created manually will not function correctly.

**Methods:**
- as_relative() -> PropertyTweener
- from(value: Variant) -> PropertyTweener
- from_current() -> PropertyTweener
- set_custom_interpolator(interpolator_method: Callable) -> PropertyTweener
- set_delay(delay: float) -> PropertyTweener
- set_ease(ease: int) -> PropertyTweener
- set_trans(trans: int) -> PropertyTweener

