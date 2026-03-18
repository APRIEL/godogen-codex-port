## DirAccess <- RefCounted

This class is used to manage directories and their content, even outside of the project folder. DirAccess can't be instantiated directly. Instead it is created with a static method that takes a path for which it will be opened. Most of the methods have a static alternative that can be used without creating a DirAccess. Static methods only support absolute paths (including `res://` and `user://`). **Note:** Accessing project ("res://") directories once exported may behave unexpectedly as some files are converted to engine-specific formats and their original source files may not be present in the expected PCK package. Because of this, to access resources in an exported project, it is recommended to use ResourceLoader instead of FileAccess. Here is an example on how to iterate through the files of a directory: Keep in mind that file names may change or be remapped after export. If you want to see the actual resource file list as it appears in the editor, use `ResourceLoader.list_directory` instead.

**Props:**
- include_hidden: bool
- include_navigational: bool

**Methods:**
- change_dir(to_dir: String) -> int
- copy(from: String, to: String, chmod_flags: int = -1) -> int
- copy_absolute(from: String, to: String, chmod_flags: int = -1) -> int
- create_link(source: String, target: String) -> int
- create_temp(prefix: String = "", keep: bool = false) -> DirAccess
- current_is_dir() -> bool
- dir_exists(path: String) -> bool
- dir_exists_absolute(path: String) -> bool
- file_exists(path: String) -> bool
- get_current_dir(include_drive: bool = true) -> String
- get_current_drive() -> int
- get_directories() -> PackedStringArray
- get_directories_at(path: String) -> PackedStringArray
- get_drive_count() -> int
- get_drive_name(idx: int) -> String
- get_files() -> PackedStringArray
- get_files_at(path: String) -> PackedStringArray
- get_filesystem_type() -> String
- get_next() -> String
- get_open_error() -> int
- get_space_left() -> int
- is_bundle(path: String) -> bool
- is_case_sensitive(path: String) -> bool
- is_equivalent(path_a: String, path_b: String) -> bool
- is_link(path: String) -> bool
- list_dir_begin() -> int
- list_dir_end()
- make_dir(path: String) -> int
- make_dir_absolute(path: String) -> int
- make_dir_recursive(path: String) -> int
- make_dir_recursive_absolute(path: String) -> int
- open(path: String) -> DirAccess
- read_link(path: String) -> String
- remove(path: String) -> int
- remove_absolute(path: String) -> int
- rename(from: String, to: String) -> int
- rename_absolute(from: String, to: String) -> int

