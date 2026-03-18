## Tween <- RefCounted

Tweens are mostly useful for animations requiring a numerical property to be interpolated over a range of values. The name *tween* comes from *in-betweening*, an animation technique where you specify *keyframes* and the computer interpolates the frames that appear between them. Animating something with a Tween is called tweening. Tween is more suited than AnimationPlayer for animations where you don't know the final values in advance. For example, interpolating a dynamically-chosen camera zoom value is best done with a Tween; it would be difficult to do the same thing with an AnimationPlayer node. Tweens are also more light-weight than AnimationPlayer, so they are very much suited for simple animations or general tasks that don't require visual tweaking provided by the editor. They can be used in a "fire-and-forget" manner for some logic that normally would be done by code. You can e.g. make something shoot periodically by using a looped CallbackTweener with a delay. A Tween can be created by using either `SceneTree.create_tween` or `Node.create_tween`. Tweens created manually (i.e. by using `Tween.new()`) are invalid and can't be used for tweening values. A tween animation is created by adding Tweeners to the Tween object, using `tween_property`, `tween_interval`, `tween_callback` or `tween_method`: This sequence will make the `$Sprite` node turn red, then shrink, before finally calling `Node.queue_free` to free the sprite. Tweeners are executed one after another by default. This behavior can be changed using `parallel` and `set_parallel`. When a Tweener is created with one of the `tween_*` methods, a chained method call can be used to tweak the properties of this Tweener. For example, if you want to set a different transition type in the above example, you can use `set_trans`: Most of the Tween methods can be chained this way too. In the following example the Tween is bound to the running script's node and a default transition is set for its Tweeners: Another interesting use for Tweens is animating arbitrary sets of objects: In the example above, all children of a node are moved one after another to position `(0, 0)`. You should avoid using more than one Tween per object's property. If two or more tweens animate one property at the same time, the last one created will take priority and assign the final value. If you want to interrupt and restart an animation, consider assigning the Tween to a variable: Some Tweeners use transitions and eases. The first accepts a `TransitionType` constant, and refers to the way the timing of the animation is handled (see for some examples). The second accepts an `EaseType` constant, and controls where the `trans_type` is applied to the interpolation (in the beginning, the end, or both). If you don't know which transition and easing to pick, you can try different `TransitionType` constants with `EASE_IN_OUT`, and use the one that looks best. **Note:** Tweens are not designed to be reused and trying to do so results in an undefined behavior. Create a new Tween for each animation and every time you replay an animation from start. Keep in mind that Tweens start immediately, so only create a Tween when you want to start animating. **Note:** The tween is processed after all of the nodes in the current frame, i.e. node's `Node._process` method would be called before the tween (or `Node._physics_process` depending on the value passed to `set_process_mode`).

**Methods:**
- bind_node(node: Node) -> Tween
- chain() -> Tween
- custom_step(delta: float) -> bool
- get_loops_left() -> int
- get_total_elapsed_time() -> float
- interpolate_value(initial_value: Variant, delta_value: Variant, elapsed_time: float, duration: float, trans_type: int, ease_type: int) -> Variant
- is_running() -> bool
- is_valid() -> bool
- kill()
- parallel() -> Tween
- pause()
- play()
- set_ease(ease: int) -> Tween
- set_ignore_time_scale(ignore: bool = true) -> Tween
- set_loops(loops: int = 0) -> Tween
- set_parallel(parallel: bool = true) -> Tween
- set_pause_mode(mode: int) -> Tween
- set_process_mode(mode: int) -> Tween
- set_speed_scale(speed: float) -> Tween
- set_trans(trans: int) -> Tween
- stop()
- tween_callback(callback: Callable) -> CallbackTweener
- tween_interval(time: float) -> IntervalTweener
- tween_method(method: Callable, from: Variant, to: Variant, duration: float) -> MethodTweener
- tween_property(object: Object, property: NodePath, final_val: Variant, duration: float) -> PropertyTweener
- tween_subtween(subtween: Tween) -> SubtweenTweener

**Signals:**
- finished
- loop_finished(loop_count: int)
- step_finished(idx: int)

**Enums:**
**TweenProcessMode:** TWEEN_PROCESS_PHYSICS=0, TWEEN_PROCESS_IDLE=1
**TweenPauseMode:** TWEEN_PAUSE_BOUND=0, TWEEN_PAUSE_STOP=1, TWEEN_PAUSE_PROCESS=2
**TransitionType:** TRANS_LINEAR=0, TRANS_SINE=1, TRANS_QUINT=2, TRANS_QUART=3, TRANS_QUAD=4, TRANS_EXPO=5, TRANS_ELASTIC=6, TRANS_CUBIC=7, TRANS_CIRC=8, TRANS_BOUNCE=9, ...
**EaseType:** EASE_IN=0, EASE_OUT=1, EASE_IN_OUT=2, EASE_OUT_IN=3

