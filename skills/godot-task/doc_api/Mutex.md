## Mutex <- RefCounted

A synchronization mutex (mutual exclusion). This is used to synchronize multiple Threads, and is equivalent to a binary Semaphore. It guarantees that only one thread can access a critical section at a time. This is a reentrant mutex, meaning that it can be locked multiple times by one thread, provided it also unlocks it as many times. **Warning:** To ensure proper cleanup without crashes or deadlocks, the following conditions must be met: - When a Mutex's reference count reaches zero and it is therefore destroyed, no threads (including the one on which the destruction will happen) must have it locked. - When a Thread's reference count reaches zero and it is therefore destroyed, it must not have any mutex locked.

**Methods:**
- lock()
- try_lock() -> bool
- unlock()

