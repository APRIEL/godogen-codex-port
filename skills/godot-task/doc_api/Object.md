## Object

An advanced Variant type. All classes in the engine inherit from Object. Each class may define new properties, methods or signals, which are available to all inheriting classes. For example, a Sprite2D instance is able to call `Node.add_child` because it inherits from Node. You can create new instances, using `Object.new()` in GDScript, or `new GodotObject` in C#. To delete an Object instance, call `free`. This is necessary for most classes inheriting Object, because they do not manage memory on their own, and will otherwise cause memory leaks when no longer in use. There are a few classes that perform memory management. For example, RefCounted (and by extension Resource) deletes itself when no longer referenced, and Node deletes its children when freed. Objects can have a Script attached to them. Once the Script is instantiated, it effectively acts as an extension to the base class, allowing it to define and inherit new properties, methods and signals. Inside a Script, `_get_property_list` may be overridden to customize properties in several ways. This allows them to be available to the editor, display as lists of options, sub-divide into groups, save on disk, etc. Scripting languages offer easier ways to customize properties, such as with the [annotation @GDScript.@export] annotation. Godot is very dynamic. An object's script, and therefore its properties, methods and signals, can be changed at run-time. Because of this, there can be occasions where, for example, a property required by a method may not exist. To prevent run-time errors, see methods such as `set`, `get`, `call`, `has_method`, `has_signal`, etc. Note that these methods are **much** slower than direct references. In GDScript, you can also check if a given property, method, or signal name exists in an object with the `in` operator: Notifications are [int] constants commonly sent and received by objects. For example, on every rendered frame, the SceneTree notifies nodes inside the tree with a `Node.NOTIFICATION_PROCESS`. The nodes receive it and may call `Node._process` to update. To make use of notifications, see `notification` and `_notification`. Lastly, every object can also contain metadata (data about data). `set_meta` can be useful to store information that the object itself does not depend on. To keep your code clean, making excessive use of metadata is discouraged. **Note:** Unlike references to a RefCounted, references to an object stored in a variable can become invalid without being set to `null`. To check if an object has been deleted, do *not* compare it against `null`. Instead, use `@GlobalScope.is_instance_valid`. It's also recommended to inherit from RefCounted for classes storing data instead of Object. **Note:** The `script` is not exposed like most properties. To set or get an object's Script in code, use `set_script` and `get_script`, respectively. **Note:** In a boolean context, an Object will evaluate to `false` if it is equal to `null` or it has been freed. Otherwise, an Object will always evaluate to `true`. See also `@GlobalScope.is_instance_valid`.

**Methods:**
- add_user_signal(signal: String, arguments: Array = [])
- call(method: StringName) -> Variant
- call_deferred(method: StringName) -> Variant
- callv(method: StringName, arg_array: Array) -> Variant
- can_translate_messages() -> bool
- cancel_free()
- connect(signal: StringName, callable: Callable, flags: int = 0) -> int
- disconnect(signal: StringName, callable: Callable)
- emit_signal(signal: StringName) -> int
- free()
- get(property: StringName) -> Variant
- get_class() -> String
- get_incoming_connections() -> Dictionary[]
- get_indexed(property_path: NodePath) -> Variant
- get_instance_id() -> int
- get_meta(name: StringName, default: Variant = null) -> Variant
- get_meta_list() -> StringName[]
- get_method_argument_count(method: StringName) -> int
- get_method_list() -> Dictionary[]
- get_property_list() -> Dictionary[]
- get_script() -> Variant
- get_signal_connection_list(signal: StringName) -> Dictionary[]
- get_signal_list() -> Dictionary[]
- get_translation_domain() -> StringName
- has_connections(signal: StringName) -> bool
- has_meta(name: StringName) -> bool
- has_method(method: StringName) -> bool
- has_signal(signal: StringName) -> bool
- has_user_signal(signal: StringName) -> bool
- is_blocking_signals() -> bool
- is_class(class: String) -> bool
- is_connected(signal: StringName, callable: Callable) -> bool
- is_queued_for_deletion() -> bool
- notification(what: int, reversed: bool = false)
- notify_property_list_changed()
- property_can_revert(property: StringName) -> bool
- property_get_revert(property: StringName) -> Variant
- remove_meta(name: StringName)
- remove_user_signal(signal: StringName)
- set(property: StringName, value: Variant)
- set_block_signals(enable: bool)
- set_deferred(property: StringName, value: Variant)
- set_indexed(property_path: NodePath, value: Variant)
- set_message_translation(enable: bool)
- set_meta(name: StringName, value: Variant)
- set_script(script: Variant)
- set_translation_domain(domain: StringName)
- to_string() -> String
- tr(message: StringName, context: StringName = &"") -> String
- tr_n(message: StringName, plural_message: StringName, n: int, context: StringName = &"") -> String

**Signals:**
- property_list_changed
- script_changed

**Enums:**
**Constants:** NOTIFICATION_POSTINITIALIZE=0, NOTIFICATION_PREDELETE=1, NOTIFICATION_EXTENSION_RELOADED=2
**ConnectFlags:** CONNECT_DEFERRED=1, CONNECT_PERSIST=2, CONNECT_ONE_SHOT=4, CONNECT_REFERENCE_COUNTED=8, CONNECT_APPEND_SOURCE_OBJECT=16

