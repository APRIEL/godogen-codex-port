## Thread <- RefCounted

A unit of execution in a process. Can run methods on Objects simultaneously. The use of synchronization via Mutex or Semaphore is advised if working with shared objects. **Warning:** To ensure proper cleanup without crashes or deadlocks, when a Thread's reference count reaches zero and it is therefore destroyed, the following conditions must be met: - It must not have any Mutex objects locked. - It must not be waiting on any Semaphore objects. - `wait_to_finish` should have been called on it.

**Methods:**
- get_id() -> String
- is_alive() -> bool
- is_main_thread() -> bool
- is_started() -> bool
- set_thread_safety_checks_enabled(enabled: bool)
- start(callable: Callable, priority: int = 1) -> int
- wait_to_finish() -> Variant

**Enums:**
**Priority:** PRIORITY_LOW=0, PRIORITY_NORMAL=1, PRIORITY_HIGH=2

