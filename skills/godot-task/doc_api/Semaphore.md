## Semaphore <- RefCounted

A synchronization semaphore that can be used to synchronize multiple Threads. Initialized to zero on creation. For a binary version, see Mutex. **Warning:** Semaphores must be used carefully to avoid deadlocks. **Warning:** To guarantee that the operating system is able to perform proper cleanup (no crashes, no deadlocks), these conditions must be met: - When a Semaphore's reference count reaches zero and it is therefore destroyed, no threads must be waiting on it. - When a Thread's reference count reaches zero and it is therefore destroyed, it must not be waiting on any semaphore.

**Methods:**
- post(count: int = 1)
- try_wait() -> bool
- wait()

