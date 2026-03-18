## ResourceUID <- Object

Resource UIDs (Unique IDentifiers) allow the engine to keep references between resources intact, even if files are renamed or moved. They can be accessed with `uid://`. ResourceUID keeps track of all registered resource UIDs in a project, generates new UIDs, and converts between their string and integer representations.

**Methods:**
- add_id(id: int, path: String)
- create_id() -> int
- create_id_for_path(path: String) -> int
- ensure_path(path_or_uid: String) -> String
- get_id_path(id: int) -> String
- has_id(id: int) -> bool
- id_to_text(id: int) -> String
- path_to_uid(path: String) -> String
- remove_id(id: int)
- set_id(id: int, path: String)
- text_to_id(text_id: String) -> int
- uid_to_path(uid: String) -> String

**Enums:**
**Constants:** INVALID_ID=-1

