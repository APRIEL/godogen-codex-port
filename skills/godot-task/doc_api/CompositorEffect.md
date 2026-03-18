## CompositorEffect <- Resource

This resource defines a custom rendering effect that can be applied to Viewports through the viewports' Environment. You can implement a callback that is called during rendering at a given stage of the rendering pipeline and allows you to insert additional passes. Note that this callback happens on the rendering thread. CompositorEffect is an abstract base class and must be extended to implement specific rendering logic.

**Props:**
- access_resolved_color: bool
- access_resolved_depth: bool
- effect_callback_type: int (CompositorEffect.EffectCallbackType)
- enabled: bool
- needs_motion_vectors: bool
- needs_normal_roughness: bool
- needs_separate_specular: bool

**Enums:**
**EffectCallbackType:** EFFECT_CALLBACK_TYPE_PRE_OPAQUE=0, EFFECT_CALLBACK_TYPE_POST_OPAQUE=1, EFFECT_CALLBACK_TYPE_POST_SKY=2, EFFECT_CALLBACK_TYPE_PRE_TRANSPARENT=3, EFFECT_CALLBACK_TYPE_POST_TRANSPARENT=4, EFFECT_CALLBACK_TYPE_MAX=5

