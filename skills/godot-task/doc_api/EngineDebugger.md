## EngineDebugger <- Object

EngineDebugger handles the communication between the editor and the running game. It is active in the running game. Messages can be sent/received through it. It also manages the profilers.

**Methods:**
- clear_breakpoints()
- debug(can_continue: bool = true, is_error_breakpoint: bool = false)
- get_depth() -> int
- get_lines_left() -> int
- has_capture(name: StringName) -> bool
- has_profiler(name: StringName) -> bool
- insert_breakpoint(line: int, source: StringName)
- is_active() -> bool
- is_breakpoint(line: int, source: StringName) -> bool
- is_profiling(name: StringName) -> bool
- is_skipping_breakpoints() -> bool
- line_poll()
- profiler_add_frame_data(name: StringName, data: Array)
- profiler_enable(name: StringName, enable: bool, arguments: Array = [])
- register_message_capture(name: StringName, callable: Callable)
- register_profiler(name: StringName, profiler: EngineProfiler)
- remove_breakpoint(line: int, source: StringName)
- script_debug(language: ScriptLanguage, can_continue: bool = true, is_error_breakpoint: bool = false)
- send_message(message: String, data: Array)
- set_depth(depth: int)
- set_lines_left(lines: int)
- unregister_message_capture(name: StringName)
- unregister_profiler(name: StringName)

