## ClassDB <- Object

Provides access to metadata stored for every available engine class. **Note:** Script-defined classes with `class_name` are not part of ClassDB, so they will not return reflection data such as a method or property list. However, GDExtension-defined classes *are* part of ClassDB, so they will return reflection data.

**Methods:**
- can_instantiate(class: StringName) -> bool
- class_call_static(class: StringName, method: StringName) -> Variant
- class_exists(class: StringName) -> bool
- class_get_api_type(class: StringName) -> int
- class_get_enum_constants(class: StringName, enum: StringName, no_inheritance: bool = false) -> PackedStringArray
- class_get_enum_list(class: StringName, no_inheritance: bool = false) -> PackedStringArray
- class_get_integer_constant(class: StringName, name: StringName) -> int
- class_get_integer_constant_enum(class: StringName, name: StringName, no_inheritance: bool = false) -> StringName
- class_get_integer_constant_list(class: StringName, no_inheritance: bool = false) -> PackedStringArray
- class_get_method_argument_count(class: StringName, method: StringName, no_inheritance: bool = false) -> int
- class_get_method_list(class: StringName, no_inheritance: bool = false) -> Dictionary[]
- class_get_property(object: Object, property: StringName) -> Variant
- class_get_property_default_value(class: StringName, property: StringName) -> Variant
- class_get_property_getter(class: StringName, property: StringName) -> StringName
- class_get_property_list(class: StringName, no_inheritance: bool = false) -> Dictionary[]
- class_get_property_setter(class: StringName, property: StringName) -> StringName
- class_get_signal(class: StringName, signal: StringName) -> Dictionary
- class_get_signal_list(class: StringName, no_inheritance: bool = false) -> Dictionary[]
- class_has_enum(class: StringName, name: StringName, no_inheritance: bool = false) -> bool
- class_has_integer_constant(class: StringName, name: StringName) -> bool
- class_has_method(class: StringName, method: StringName, no_inheritance: bool = false) -> bool
- class_has_signal(class: StringName, signal: StringName) -> bool
- class_set_property(object: Object, property: StringName, value: Variant) -> int
- get_class_list() -> PackedStringArray
- get_inheriters_from_class(class: StringName) -> PackedStringArray
- get_parent_class(class: StringName) -> StringName
- instantiate(class: StringName) -> Variant
- is_class_enabled(class: StringName) -> bool
- is_class_enum_bitfield(class: StringName, enum: StringName, no_inheritance: bool = false) -> bool
- is_parent_class(class: StringName, inherits: StringName) -> bool

**Enums:**
**APIType:** API_CORE=0, API_EDITOR=1, API_EXTENSION=2, API_EDITOR_EXTENSION=3, API_NONE=4

