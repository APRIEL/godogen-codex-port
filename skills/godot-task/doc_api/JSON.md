## JSON <- Resource

The JSON class enables all data types to be converted to and from a JSON string. This is useful for serializing data, e.g. to save to a file or send over the network. `stringify` is used to convert any data type into a JSON string. `parse` is used to convert any existing JSON data into a Variant that can be used within Godot. If successfully parsed, use `data` to retrieve the Variant, and use `@GlobalScope.typeof` to check if the Variant's type is what you expect. JSON Objects are converted into a Dictionary, but JSON data can be used to store Arrays, numbers, Strings and even just a boolean. Alternatively, you can parse strings using the static `parse_string` method, but it doesn't handle errors. **Note:** Both parse methods do not fully comply with the JSON specification: - Trailing commas in arrays or objects are ignored, instead of causing a parser error. - New line and tab characters are accepted in string literals, and are treated like their corresponding escape sequences `\n` and `\t`. - Numbers are parsed using `String.to_float` which is generally more lax than the JSON specification. - Certain errors, such as invalid Unicode sequences, do not cause a parser error. Instead, the string is cleaned up and an error is logged to the console.

**Props:**
- data: Variant = null

**Methods:**
- from_native(variant: Variant, full_objects: bool = false) -> Variant
- get_error_line() -> int
- get_error_message() -> String
- get_parsed_text() -> String
- parse(json_text: String, keep_text: bool = false) -> int
- parse_string(json_string: String) -> Variant
- stringify(data: Variant, indent: String = "", sort_keys: bool = true, full_precision: bool = false) -> String
- to_native(json: Variant, allow_objects: bool = false) -> Variant

