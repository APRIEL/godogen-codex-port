## ResourceFormatLoader <- RefCounted

Godot loads resources in the editor or in exported games using ResourceFormatLoaders. They are queried automatically via the ResourceLoader singleton, or when a resource with internal dependencies is loaded. Each file type may load as a different resource type, so multiple ResourceFormatLoaders are registered in the engine. Extending this class allows you to define your own loader. Be sure to respect the documented return types and values. You should give it a global class name with `class_name` for it to be registered. Like built-in ResourceFormatLoaders, it will be called automatically when loading resources of its handled type(s). You may also implement a ResourceFormatSaver. **Note:** You can also extend EditorImportPlugin if the resource type you need exists but Godot is unable to load its format. Choosing one way over another depends on if the format is suitable or not for the final exported game. For example, it's better to import `.png` textures as `.ctex` (CompressedTexture2D) first, so they can be loaded with better efficiency on the graphics card.

**Enums:**
**CacheMode:** CACHE_MODE_IGNORE=0, CACHE_MODE_REUSE=1, CACHE_MODE_REPLACE=2, CACHE_MODE_IGNORE_DEEP=3, CACHE_MODE_REPLACE_DEEP=4

