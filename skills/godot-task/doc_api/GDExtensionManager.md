## GDExtensionManager <- Object

The GDExtensionManager loads, initializes, and keeps track of all available GDExtension libraries in the project. **Note:** Do not worry about GDExtension unless you know what you are doing.

**Methods:**
- get_extension(path: String) -> GDExtension
- get_loaded_extensions() -> PackedStringArray
- is_extension_loaded(path: String) -> bool
- load_extension(path: String) -> int
- load_extension_from_function(path: String, init_func: const GDExtensionInitializationFunction*) -> int
- reload_extension(path: String) -> int
- unload_extension(path: String) -> int

**Signals:**
- extension_loaded(extension: GDExtension)
- extension_unloading(extension: GDExtension)
- extensions_reloaded

**Enums:**
**LoadStatus:** LOAD_STATUS_OK=0, LOAD_STATUS_FAILED=1, LOAD_STATUS_ALREADY_LOADED=2, LOAD_STATUS_NOT_LOADED=3, LOAD_STATUS_NEEDS_RESTART=4

