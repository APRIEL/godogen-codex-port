## Resource <- RefCounted

Resource is the base class for all Godot-specific resource types, serving primarily as data containers. Since they inherit from RefCounted, resources are reference-counted and freed when no longer in use. They can also be nested within other resources, and saved on disk. PackedScene, one of the most common Objects in a Godot project, is also a resource, uniquely capable of storing and instantiating the Nodes it contains as many times as desired. In GDScript, resources can loaded from disk by their `resource_path` using `@GDScript.load` or `@GDScript.preload`. The engine keeps a global cache of all loaded resources, referenced by paths (see `ResourceLoader.has_cached`). A resource will be cached when loaded for the first time and removed from cache once all references are released. When a resource is cached, subsequent loads using its path will return the cached reference. **Note:** In C#, resources will not be freed instantly after they are no longer in use. Instead, garbage collection will run periodically and will free resources that are no longer in use. This means that unused resources will remain in memory for a while before being removed.

**Props:**
- resource_local_to_scene: bool = false
- resource_name: String = ""
- resource_path: String = ""
- resource_scene_unique_id: String

**Methods:**
- duplicate(deep: bool = false) -> Resource
- duplicate_deep(deep_subresources_mode: int = 1) -> Resource
- emit_changed()
- generate_scene_unique_id() -> String
- get_id_for_path(path: String) -> String
- get_local_scene() -> Node
- get_rid() -> RID
- is_built_in() -> bool
- reset_state()
- set_id_for_path(path: String, id: String)
- set_path_cache(path: String)
- setup_local_to_scene()
- take_over_path(path: String)

**Signals:**
- changed
- setup_local_to_scene_requested

**Enums:**
**DeepDuplicateMode:** DEEP_DUPLICATE_NONE=0, DEEP_DUPLICATE_INTERNAL=1, DEEP_DUPLICATE_ALL=2

