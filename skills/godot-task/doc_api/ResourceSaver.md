## ResourceSaver <- Object

A singleton for saving resource types to the filesystem. It uses the many ResourceFormatSaver classes registered in the engine (either built-in or from a plugin) to save resource data to text-based (e.g. `.tres` or `.tscn`) or binary files (e.g. `.res` or `.scn`).

**Methods:**
- add_resource_format_saver(format_saver: ResourceFormatSaver, at_front: bool = false)
- get_recognized_extensions(type: Resource) -> PackedStringArray
- get_resource_id_for_path(path: String, generate: bool = false) -> int
- remove_resource_format_saver(format_saver: ResourceFormatSaver)
- save(resource: Resource, path: String = "", flags: int = 0) -> int
- set_uid(resource: String, uid: int) -> int

**Enums:**
**SaverFlags:** FLAG_NONE=0, FLAG_RELATIVE_PATHS=1, FLAG_BUNDLE_RESOURCES=2, FLAG_CHANGE_PATH=4, FLAG_OMIT_EDITOR_PROPERTIES=8, FLAG_SAVE_BIG_ENDIAN=16, FLAG_COMPRESS=32, FLAG_REPLACE_SUBRESOURCE_PATHS=64

