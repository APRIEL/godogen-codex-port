## ResourceFormatSaver <- RefCounted

The engine can save resources when you do it from the editor, or when you use the ResourceSaver singleton. This is accomplished thanks to multiple ResourceFormatSavers, each handling its own format and called automatically by the engine. By default, Godot saves resources as `.tres` (text-based), `.res` (binary) or another built-in format, but you can choose to create your own format by extending this class. Be sure to respect the documented return types and values. You should give it a global class name with `class_name` for it to be registered. Like built-in ResourceFormatSavers, it will be called automatically when saving resources of its recognized type(s). You may also implement a ResourceFormatLoader.

