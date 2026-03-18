## OS <- Object

The OS class wraps the most common functionalities for communicating with the host operating system, such as the video driver, delays, environment variables, execution of binaries, command line, etc. **Note:** In Godot 4, OS functions related to window management, clipboard, and TTS were moved to the DisplayServer singleton (and the Window class). Functions related to time were removed and are only available in the Time class.

**Props:**
- delta_smoothing: bool = true
- low_processor_usage_mode: bool = false
- low_processor_usage_mode_sleep_usec: int = 6900

**Methods:**
- add_logger(logger: Logger)
- alert(text: String, title: String = "Alert!")
- close_midi_inputs()
- crash(message: String)
- create_instance(arguments: PackedStringArray) -> int
- create_process(path: String, arguments: PackedStringArray, open_console: bool = false) -> int
- delay_msec(msec: int)
- delay_usec(usec: int)
- execute(path: String, arguments: PackedStringArray, output: Array = [], read_stderr: bool = false, open_console: bool = false) -> int
- execute_with_pipe(path: String, arguments: PackedStringArray, blocking: bool = true) -> Dictionary
- find_keycode_from_string(string: String) -> int
- get_cache_dir() -> String
- get_cmdline_args() -> PackedStringArray
- get_cmdline_user_args() -> PackedStringArray
- get_config_dir() -> String
- get_connected_midi_inputs() -> PackedStringArray
- get_data_dir() -> String
- get_distribution_name() -> String
- get_entropy(size: int) -> PackedByteArray
- get_environment(variable: String) -> String
- get_executable_path() -> String
- get_granted_permissions() -> PackedStringArray
- get_keycode_string(code: int) -> String
- get_locale() -> String
- get_locale_language() -> String
- get_main_thread_id() -> int
- get_memory_info() -> Dictionary
- get_model_name() -> String
- get_name() -> String
- get_process_exit_code(pid: int) -> int
- get_process_id() -> int
- get_processor_count() -> int
- get_processor_name() -> String
- get_restart_on_exit_arguments() -> PackedStringArray
- get_static_memory_peak_usage() -> int
- get_static_memory_usage() -> int
- get_stderr_type() -> int
- get_stdin_type() -> int
- get_stdout_type() -> int
- get_system_ca_certificates() -> String
- get_system_dir(dir: int, shared_storage: bool = true) -> String
- get_system_font_path(font_name: String, weight: int = 400, stretch: int = 100, italic: bool = false) -> String
- get_system_font_path_for_text(font_name: String, text: String, locale: String = "", script: String = "", weight: int = 400, stretch: int = 100, italic: bool = false) -> PackedStringArray
- get_system_fonts() -> PackedStringArray
- get_temp_dir() -> String
- get_thread_caller_id() -> int
- get_unique_id() -> String
- get_user_data_dir() -> String
- get_version() -> String
- get_version_alias() -> String
- get_video_adapter_driver_info() -> PackedStringArray
- has_environment(variable: String) -> bool
- has_feature(tag_name: String) -> bool
- is_debug_build() -> bool
- is_keycode_unicode(code: int) -> bool
- is_process_running(pid: int) -> bool
- is_restart_on_exit_set() -> bool
- is_sandboxed() -> bool
- is_stdout_verbose() -> bool
- is_userfs_persistent() -> bool
- kill(pid: int) -> int
- move_to_trash(path: String) -> int
- open_midi_inputs()
- open_with_program(program_path: String, paths: PackedStringArray) -> int
- read_buffer_from_stdin(buffer_size: int = 1024) -> PackedByteArray
- read_string_from_stdin(buffer_size: int = 1024) -> String
- remove_logger(logger: Logger)
- request_permission(name: String) -> bool
- request_permissions() -> bool
- revoke_granted_permissions()
- set_environment(variable: String, value: String)
- set_restart_on_exit(restart: bool, arguments: PackedStringArray = PackedStringArray())
- set_thread_name(name: String) -> int
- set_use_file_access_save_and_swap(enabled: bool)
- shell_open(uri: String) -> int
- shell_show_in_file_manager(file_or_dir_path: String, open_folder: bool = true) -> int
- unset_environment(variable: String)

**Enums:**
**RenderingDriver:** RENDERING_DRIVER_VULKAN=0, RENDERING_DRIVER_OPENGL3=1, RENDERING_DRIVER_D3D12=2, RENDERING_DRIVER_METAL=3
**SystemDir:** SYSTEM_DIR_DESKTOP=0, SYSTEM_DIR_DCIM=1, SYSTEM_DIR_DOCUMENTS=2, SYSTEM_DIR_DOWNLOADS=3, SYSTEM_DIR_MOVIES=4, SYSTEM_DIR_MUSIC=5, SYSTEM_DIR_PICTURES=6, SYSTEM_DIR_RINGTONES=7
**StdHandleType:** STD_HANDLE_INVALID=0, STD_HANDLE_CONSOLE=1, STD_HANDLE_FILE=2, STD_HANDLE_PIPE=3, STD_HANDLE_UNKNOWN=4

