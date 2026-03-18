## Engine <- Object

The Engine singleton allows you to query and modify the project's run-time parameters, such as frames per second, time scale, and others. It also stores information about the current build of Godot, such as the current version.

**Props:**
- max_fps: int = 0
- max_physics_steps_per_frame: int = 8
- physics_jitter_fix: float = 0.5
- physics_ticks_per_second: int = 60
- print_error_messages: bool = true
- print_to_stdout: bool = true
- time_scale: float = 1.0

**Methods:**
- capture_script_backtraces(include_variables: bool = false) -> ScriptBacktrace[]
- get_architecture_name() -> String
- get_author_info() -> Dictionary
- get_copyright_info() -> Dictionary[]
- get_donor_info() -> Dictionary
- get_frames_drawn() -> int
- get_frames_per_second() -> float
- get_license_info() -> Dictionary
- get_license_text() -> String
- get_main_loop() -> MainLoop
- get_physics_frames() -> int
- get_physics_interpolation_fraction() -> float
- get_process_frames() -> int
- get_script_language(index: int) -> ScriptLanguage
- get_script_language_count() -> int
- get_singleton(name: StringName) -> Object
- get_singleton_list() -> PackedStringArray
- get_version_info() -> Dictionary
- get_write_movie_path() -> String
- has_singleton(name: StringName) -> bool
- is_editor_hint() -> bool
- is_embedded_in_editor() -> bool
- is_in_physics_frame() -> bool
- register_script_language(language: ScriptLanguage) -> int
- register_singleton(name: StringName, instance: Object)
- unregister_script_language(language: ScriptLanguage) -> int
- unregister_singleton(name: StringName)

