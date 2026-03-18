## PCKPacker <- RefCounted

The PCKPacker is used to create packages that can be loaded into a running project using `ProjectSettings.load_resource_pack`. The above PCKPacker creates package `test.pck`, then adds a file named `text.txt` at the root of the package. **Note:** PCK is Godot's own pack file format. To create ZIP archives that can be read by any program, use ZIPPacker instead.

**Methods:**
- add_file(target_path: String, source_path: String, encrypt: bool = false) -> int
- add_file_from_buffer(target_path: String, data: PackedByteArray, encrypt: bool = false) -> int
- add_file_removal(target_path: String) -> int
- flush(verbose: bool = false) -> int
- pck_start(pck_path: String, alignment: int = 32, key: String = "0000000000000000000000000000000000000000000000000000000000000000", encrypt_directory: bool = false) -> int

