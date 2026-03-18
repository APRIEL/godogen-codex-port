## Expression <- RefCounted

An expression can be made of any arithmetic operation, built-in math function call, method call of a passed instance, or built-in type construction call. An example expression text using the built-in math functions could be `sqrt(pow(3, 2) + pow(4, 2))`. In the following example we use a LineEdit node to write our expression and show the result.

**Methods:**
- execute(inputs: Array = [], base_instance: Object = null, show_error: bool = true, const_calls_only: bool = false) -> Variant
- get_error_text() -> String
- has_execute_failed() -> bool
- parse(expression: String, input_names: PackedStringArray = PackedStringArray()) -> int

