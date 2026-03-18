## ResourceLoader <- Object

A singleton used to load resource files from the filesystem. It uses the many ResourceFormatLoader classes registered in the engine (either built-in or from a plugin) to load files into memory and convert them to a format that can be used by the engine. **Note:** You have to import the files into the engine first to load them using `load`. If you want to load Images at run-time, you may use `Image.load`. If you want to import audio files, you can use the snippet described in `AudioStreamMP3.data`. **Note:** Non-resource files such as plain text files cannot be read using ResourceLoader. Use FileAccess for those files instead, and be aware that non-resource files are not exported by default (see notes in the FileAccess class description for instructions on exporting them).

**Methods:**
- add_resource_format_loader(format_loader: ResourceFormatLoader, at_front: bool = false)
- exists(path: String, type_hint: String = "") -> bool
- get_cached_ref(path: String) -> Resource
- get_dependencies(path: String) -> PackedStringArray
- get_recognized_extensions_for_type(type: String) -> PackedStringArray
- get_resource_uid(path: String) -> int
- has_cached(path: String) -> bool
- list_directory(directory_path: String) -> PackedStringArray
- load(path: String, type_hint: String = "", cache_mode: int = 1) -> Resource
- load_threaded_get(path: String) -> Resource
- load_threaded_get_status(path: String, progress: Array = []) -> int
- load_threaded_request(path: String, type_hint: String = "", use_sub_threads: bool = false, cache_mode: int = 1) -> int
- remove_resource_format_loader(format_loader: ResourceFormatLoader)
- set_abort_on_missing_resources(abort: bool)

**Enums:**
**ThreadLoadStatus:** THREAD_LOAD_INVALID_RESOURCE=0, THREAD_LOAD_IN_PROGRESS=1, THREAD_LOAD_FAILED=2, THREAD_LOAD_LOADED=3
**CacheMode:** CACHE_MODE_IGNORE=0, CACHE_MODE_REUSE=1, CACHE_MODE_REPLACE=2, CACHE_MODE_IGNORE_DEEP=3, CACHE_MODE_REPLACE_DEEP=4

