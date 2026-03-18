## JSONRPC <- Object

is a standard which wraps a method call in a JSON object. The object has a particular structure and identifies which method is called, the parameters to that function, and carries an ID to keep track of responses. This class implements that standard on top of Dictionary; you will have to convert between a Dictionary and JSON with other functions.

**Methods:**
- make_notification(method: String, params: Variant) -> Dictionary
- make_request(method: String, params: Variant, id: Variant) -> Dictionary
- make_response(result: Variant, id: Variant) -> Dictionary
- make_response_error(code: int, message: String, id: Variant = null) -> Dictionary
- process_action(action: Variant, recurse: bool = false) -> Variant
- process_string(action: String) -> String
- set_method(name: String, callback: Callable)

**Enums:**
**ErrorCode:** PARSE_ERROR=-32700, INVALID_REQUEST=-32600, METHOD_NOT_FOUND=-32601, INVALID_PARAMS=-32602, INTERNAL_ERROR=-32603

