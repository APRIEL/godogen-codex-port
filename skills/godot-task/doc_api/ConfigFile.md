## ConfigFile <- RefCounted

This helper class can be used to store Variant values on the filesystem using INI-style formatting. The stored values are identified by a section and a key: [codeblock lang=text] [section] some_key=42 string_example="Hello World3D!" a_vector=Vector3(1, 0, 2) [/codeblock] The stored data can be saved to or parsed from a file, though ConfigFile objects can also be used directly without accessing the filesystem. The following example shows how to create a simple ConfigFile and save it on disc: This example shows how the above file could be loaded: Any operation that mutates the ConfigFile such as `set_value`, `clear`, or `erase_section`, only changes what is loaded in memory. If you want to write the change to a file, you have to save the changes with `save`, `save_encrypted`, or `save_encrypted_pass`. Keep in mind that section and property names can't contain spaces. Anything after a space will be ignored on save and on load. ConfigFiles can also contain manually written comment lines starting with a semicolon (`;`). Those lines will be ignored when parsing the file. Note that comments will be lost when saving the ConfigFile. This can still be useful for dedicated server configuration files, which are typically never overwritten without explicit user action. **Note:** The file extension given to a ConfigFile does not have any impact on its formatting or behavior. By convention, the `.cfg` extension is used here, but any other extension such as `.ini` is also valid. Since neither `.cfg` nor `.ini` are standardized, Godot's ConfigFile formatting may differ from files written by other programs.

**Methods:**
- clear()
- encode_to_text() -> String
- erase_section(section: String)
- erase_section_key(section: String, key: String)
- get_section_keys(section: String) -> PackedStringArray
- get_sections() -> PackedStringArray
- get_value(section: String, key: String, default: Variant = null) -> Variant
- has_section(section: String) -> bool
- has_section_key(section: String, key: String) -> bool
- load(path: String) -> int
- load_encrypted(path: String, key: PackedByteArray) -> int
- load_encrypted_pass(path: String, password: String) -> int
- parse(data: String) -> int
- save(path: String) -> int
- save_encrypted(path: String, key: PackedByteArray) -> int
- save_encrypted_pass(path: String, password: String) -> int
- set_value(section: String, key: String, value: Variant)

