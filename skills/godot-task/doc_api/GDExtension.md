## GDExtension <- Resource

The GDExtension resource type represents a which can expand the functionality of the engine. The GDExtensionManager singleton is responsible for loading, reloading, and unloading GDExtension resources. **Note:** GDExtension itself is not a scripting language and has no relation to GDScript resources.

**Methods:**
- get_minimum_library_initialization_level() -> int
- is_library_open() -> bool

**Enums:**
**InitializationLevel:** INITIALIZATION_LEVEL_CORE=0, INITIALIZATION_LEVEL_SERVERS=1, INITIALIZATION_LEVEL_SCENE=2, INITIALIZATION_LEVEL_EDITOR=3

