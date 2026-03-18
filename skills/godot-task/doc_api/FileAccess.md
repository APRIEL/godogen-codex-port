## FileAccess <- RefCounted

This class can be used to permanently store data in the user device's file system and to read from it. This is useful for storing game save data or player configuration files. **Example:** How to write and read from a file. The file named `"save_game.dat"` will be stored in the user data folder, as specified in the documentation: A FileAccess instance has its own file cursor, which is the position in bytes in the file where the next read/write operation will occur. Functions such as `get_8`, `get_16`, `store_8`, and `store_16` will move the file cursor forward by the number of bytes read/written. The file cursor can be moved to a specific position using `seek` or `seek_end`, and its position can be retrieved using `get_position`. A FileAccess instance will close its file when the instance is freed. Since it inherits RefCounted, this happens automatically when it is no longer in use. `close` can be called to close it earlier. In C#, the reference must be disposed manually, which can be done with the `using` statement or by calling the `Dispose` method directly. **Note:** To access project resources once exported, it is recommended to use ResourceLoader instead of FileAccess, as some files are converted to engine-specific formats and their original source files might not be present in the exported PCK package. If using FileAccess, make sure the file is included in the export by changing its import mode to **Keep File (exported as is)** in the Import dock, or, for files where this option is not available, change the non-resource export filter in the Export dialog to include the file's extension (e.g. `*.txt`). **Note:** Files are automatically closed only if the process exits "normally" (such as by clicking the window manager's close button or pressing [kbd]Alt + F4[/kbd]). If you stop the project execution by pressing [kbd]F8[/kbd] while the project is running, the file won't be closed as the game process will be killed. You can work around this by calling `flush` at regular intervals.

**Props:**
- big_endian: bool

**Methods:**
- close()
- create_temp(mode_flags: int, prefix: String = "", extension: String = "", keep: bool = false) -> FileAccess
- eof_reached() -> bool
- file_exists(path: String) -> bool
- flush()
- get_8() -> int
- get_16() -> int
- get_32() -> int
- get_64() -> int
- get_access_time(file: String) -> int
- get_as_text() -> String
- get_buffer(length: int) -> PackedByteArray
- get_csv_line(delim: String = ",") -> PackedStringArray
- get_double() -> float
- get_error() -> int
- get_extended_attribute(file: String, attribute_name: String) -> PackedByteArray
- get_extended_attribute_string(file: String, attribute_name: String) -> String
- get_extended_attributes_list(file: String) -> PackedStringArray
- get_file_as_bytes(path: String) -> PackedByteArray
- get_file_as_string(path: String) -> String
- get_float() -> float
- get_half() -> float
- get_hidden_attribute(file: String) -> bool
- get_length() -> int
- get_line() -> String
- get_md5(path: String) -> String
- get_modified_time(file: String) -> int
- get_open_error() -> int
- get_pascal_string() -> String
- get_path() -> String
- get_path_absolute() -> String
- get_position() -> int
- get_read_only_attribute(file: String) -> bool
- get_real() -> float
- get_sha256(path: String) -> String
- get_size(file: String) -> int
- get_unix_permissions(file: String) -> int
- get_var(allow_objects: bool = false) -> Variant
- is_open() -> bool
- open(path: String, flags: int) -> FileAccess
- open_compressed(path: String, mode_flags: int, compression_mode: int = 0) -> FileAccess
- open_encrypted(path: String, mode_flags: int, key: PackedByteArray, iv: PackedByteArray = PackedByteArray()) -> FileAccess
- open_encrypted_with_pass(path: String, mode_flags: int, pass: String) -> FileAccess
- remove_extended_attribute(file: String, attribute_name: String) -> int
- resize(length: int) -> int
- seek(position: int)
- seek_end(position: int = 0)
- set_extended_attribute(file: String, attribute_name: String, data: PackedByteArray) -> int
- set_extended_attribute_string(file: String, attribute_name: String, data: String) -> int
- set_hidden_attribute(file: String, hidden: bool) -> int
- set_read_only_attribute(file: String, ro: bool) -> int
- set_unix_permissions(file: String, permissions: int) -> int
- store_8(value: int) -> bool
- store_16(value: int) -> bool
- store_32(value: int) -> bool
- store_64(value: int) -> bool
- store_buffer(buffer: PackedByteArray) -> bool
- store_csv_line(values: PackedStringArray, delim: String = ",") -> bool
- store_double(value: float) -> bool
- store_float(value: float) -> bool
- store_half(value: float) -> bool
- store_line(line: String) -> bool
- store_pascal_string(string: String) -> bool
- store_real(value: float) -> bool
- store_string(string: String) -> bool
- store_var(value: Variant, full_objects: bool = false) -> bool

**Enums:**
**ModeFlags:** READ=1, WRITE=2, READ_WRITE=3, WRITE_READ=7
**CompressionMode:** COMPRESSION_FASTLZ=0, COMPRESSION_DEFLATE=1, COMPRESSION_ZSTD=2, COMPRESSION_GZIP=3, COMPRESSION_BROTLI=4
**UnixPermissionFlags:** UNIX_READ_OWNER=256, UNIX_WRITE_OWNER=128, UNIX_EXECUTE_OWNER=64, UNIX_READ_GROUP=32, UNIX_WRITE_GROUP=16, UNIX_EXECUTE_GROUP=8, UNIX_READ_OTHER=4, UNIX_WRITE_OTHER=2, UNIX_EXECUTE_OTHER=1, UNIX_SET_USER_ID=2048, ...

