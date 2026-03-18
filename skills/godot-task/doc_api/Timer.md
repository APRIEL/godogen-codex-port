## Timer <- Node

The Timer node is a countdown timer and is the simplest way to handle time-based logic in the engine. When a timer reaches the end of its `wait_time`, it will emit the `timeout` signal. After a timer enters the scene tree, it can be manually started with `start`. A timer node is also started automatically if `autostart` is `true`. Without requiring much code, a timer node can be added and configured in the editor. The `timeout` signal it emits can also be connected through the Signals dock in the editor: **Note:** To create a one-shot timer without instantiating a node, use `SceneTree.create_timer`. **Note:** Timers are affected by `Engine.time_scale` unless `ignore_time_scale` is `true`. The higher the time scale, the sooner timers will end. How often a timer processes may depend on the framerate or `Engine.physics_ticks_per_second`.

**Props:**
- autostart: bool = false
- ignore_time_scale: bool = false
- one_shot: bool = false
- paused: bool
- process_callback: int (Timer.TimerProcessCallback) = 1
- time_left: float
- wait_time: float = 1.0

**Methods:**
- is_stopped() -> bool
- start(time_sec: float = -1)
- stop()

**Signals:**
- timeout

**Enums:**
**TimerProcessCallback:** TIMER_PROCESS_PHYSICS=0, TIMER_PROCESS_IDLE=1

