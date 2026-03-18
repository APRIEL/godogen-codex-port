## Performance <- Object

This class provides access to a number of different monitors related to performance, such as memory usage, draw calls, and FPS. These are the same as the values displayed in the **Monitor** tab in the editor's **Debugger** panel. By using the `get_monitor` method of this class, you can access this data from your code. You can add custom monitors using the `add_custom_monitor` method. Custom monitors are available in **Monitor** tab in the editor's **Debugger** panel together with built-in monitors. **Note:** Some of the built-in monitors are only available in debug mode and will always return `0` when used in a project exported in release mode. **Note:** Some of the built-in monitors are not updated in real-time for performance reasons, so there may be a delay of up to 1 second between changes. **Note:** Custom monitors do not support negative values. Negative values are clamped to 0.

**Methods:**
- add_custom_monitor(id: StringName, callable: Callable, arguments: Array = [], type: int = 0)
- get_custom_monitor(id: StringName) -> Variant
- get_custom_monitor_names() -> StringName[]
- get_custom_monitor_types() -> PackedInt32Array
- get_monitor(monitor: int) -> float
- get_monitor_modification_time() -> int
- has_custom_monitor(id: StringName) -> bool
- remove_custom_monitor(id: StringName)

**Enums:**
**Monitor:** TIME_FPS=0, TIME_PROCESS=1, TIME_PHYSICS_PROCESS=2, TIME_NAVIGATION_PROCESS=3, MEMORY_STATIC=4, MEMORY_STATIC_MAX=5, MEMORY_MESSAGE_BUFFER_MAX=6, OBJECT_COUNT=7, OBJECT_RESOURCE_COUNT=8, OBJECT_NODE_COUNT=9, ...
**MonitorType:** MONITOR_TYPE_QUANTITY=0, MONITOR_TYPE_MEMORY=1, MONITOR_TYPE_TIME=2, MONITOR_TYPE_PERCENTAGE=3

