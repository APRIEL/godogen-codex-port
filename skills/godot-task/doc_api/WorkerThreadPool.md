## WorkerThreadPool <- Object

The WorkerThreadPool singleton allocates a set of Threads (called worker threads) on project startup and provides methods for offloading tasks to them. This can be used for simple multithreading without having to create Threads. Tasks hold the Callable to be run by the threads. WorkerThreadPool can be used to create regular tasks, which will be taken by one worker thread, or group tasks, which can be distributed between multiple worker threads. Group tasks execute the Callable multiple times, which makes them useful for iterating over a lot of elements, such as the enemies in an arena. Here's a sample on how to offload an expensive function to worker threads: The above code relies on the number of elements in the `enemies` array remaining constant during the multithreaded part. **Note:** Using this singleton could affect performance negatively if the task being distributed between threads is not computationally expensive.

**Methods:**
- add_group_task(action: Callable, elements: int, tasks_needed: int = -1, high_priority: bool = false, description: String = "") -> int
- add_task(action: Callable, high_priority: bool = false, description: String = "") -> int
- get_caller_group_id() -> int
- get_caller_task_id() -> int
- get_group_processed_element_count(group_id: int) -> int
- is_group_task_completed(group_id: int) -> bool
- is_task_completed(task_id: int) -> bool
- wait_for_group_task_completion(group_id: int)
- wait_for_task_completion(task_id: int) -> int

