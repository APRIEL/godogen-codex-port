## Callable

Callable is a built-in Variant type that represents a function. It can either be a method within an Object instance, or a custom callable used for different purposes (see `is_custom`). Like all Variant types, it can be stored in variables and passed to other functions. It is most commonly used for signal callbacks. In GDScript, it's possible to create lambda functions within a method. Lambda functions are custom callables that are not associated with an Object instance. Optionally, lambda functions can also be named. The name will be displayed in the debugger, or when calling `get_method`. In GDScript, you can access methods and global functions as Callables: **Note:** Dictionary does not support the above due to ambiguity with keys. **Note:** In a boolean context, a callable will evaluate to `false` if it's null (see `is_null`). Otherwise, a callable will always evaluate to `true`.

**Methods:**
- bind() -> Callable
- bindv(arguments: Array) -> Callable
- call() -> Variant
- call_deferred()
- callv(arguments: Array) -> Variant
- create(variant: Variant, method: StringName) -> Callable
- get_argument_count() -> int
- get_bound_arguments() -> Array
- get_bound_arguments_count() -> int
- get_method() -> StringName
- get_object() -> Object
- get_object_id() -> int
- get_unbound_arguments_count() -> int
- hash() -> int
- is_custom() -> bool
- is_null() -> bool
- is_standard() -> bool
- is_valid() -> bool
- rpc()
- rpc_id(peer_id: int)
- unbind(argcount: int) -> Callable

