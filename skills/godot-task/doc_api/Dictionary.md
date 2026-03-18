## Dictionary

Dictionaries are associative containers that contain values referenced by unique keys. Dictionaries will preserve the insertion order when adding new entries. In other programming languages, this data structure is often referred to as a hash map or an associative array. You can define a dictionary by placing a comma-separated list of `key: value` pairs inside curly braces `{}`. Creating a dictionary: You can access a dictionary's value by referencing its corresponding key. In the above example, `points_dict["White"]` will return `50`. You can also write `points_dict.White`, which is equivalent. However, you'll have to use the bracket syntax if the key you're accessing the dictionary with isn't a fixed string (such as a number or variable). In the above code, `points` will be assigned the value that is paired with the appropriate color selected in `my_color`. Dictionaries can contain more complex data: To add a key to an existing dictionary, access it like an existing key and assign to it: Finally, untyped dictionaries can contain different types of keys and values in the same dictionary: The keys of a dictionary can be iterated with the `for` keyword: To enforce a certain type for keys and values, you can create a *typed dictionary*. Typed dictionaries can only contain keys and values of the given types, or that inherit from the given classes: **Note:** Dictionaries are always passed by reference. To get a copy of a dictionary which can be modified independently of the original dictionary, use `duplicate`. **Note:** Erasing elements while iterating over dictionaries is **not** supported and will result in unpredictable behavior. **Note:** In a boolean context, a dictionary will evaluate to `false` if it's empty (`{}`). Otherwise, a dictionary will always evaluate to `true`.

**Methods:**
- assign(dictionary: Dictionary)
- clear()
- duplicate(deep: bool = false) -> Dictionary
- duplicate_deep(deep_subresources_mode: int = 1) -> Dictionary
- erase(key: Variant) -> bool
- find_key(value: Variant) -> Variant
- get(key: Variant, default: Variant = null) -> Variant
- get_or_add(key: Variant, default: Variant = null) -> Variant
- get_typed_key_builtin() -> int
- get_typed_key_class_name() -> StringName
- get_typed_key_script() -> Variant
- get_typed_value_builtin() -> int
- get_typed_value_class_name() -> StringName
- get_typed_value_script() -> Variant
- has(key: Variant) -> bool
- has_all(keys: Array) -> bool
- hash() -> int
- is_empty() -> bool
- is_read_only() -> bool
- is_same_typed(dictionary: Dictionary) -> bool
- is_same_typed_key(dictionary: Dictionary) -> bool
- is_same_typed_value(dictionary: Dictionary) -> bool
- is_typed() -> bool
- is_typed_key() -> bool
- is_typed_value() -> bool
- keys() -> Array
- make_read_only()
- merge(dictionary: Dictionary, overwrite: bool = false)
- merged(dictionary: Dictionary, overwrite: bool = false) -> Dictionary
- recursive_equal(dictionary: Dictionary, recursion_count: int) -> bool
- set(key: Variant, value: Variant) -> bool
- size() -> int
- sort()
- values() -> Array

