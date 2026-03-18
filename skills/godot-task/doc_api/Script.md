## Script <- Resource

A class stored as a resource. A script extends the functionality of all objects that instantiate it. This is the base class for all scripts and should not be used directly. Trying to create a new script with this class will result in an error. The `new` method of a script subclass creates a new instance. `Object.set_script` extends an existing object, if that object's class matches one of the script's base classes.

**Props:**
- source_code: String

**Methods:**
- can_instantiate() -> bool
- get_base_script() -> Script
- get_global_name() -> StringName
- get_instance_base_type() -> StringName
- get_property_default_value(property: StringName) -> Variant
- get_rpc_config() -> Variant
- get_script_constant_map() -> Dictionary
- get_script_method_list() -> Dictionary[]
- get_script_property_list() -> Dictionary[]
- get_script_signal_list() -> Dictionary[]
- has_script_signal(signal_name: StringName) -> bool
- has_source_code() -> bool
- instance_has(base_object: Object) -> bool
- is_abstract() -> bool
- is_tool() -> bool
- reload(keep_state: bool = false) -> int

