## JavaScriptBridge <- Object

The JavaScriptBridge singleton is implemented only in the Web export. It's used to access the browser's JavaScript context. This allows interaction with embedding pages or calling third-party JavaScript APIs. **Note:** This singleton can be disabled at build-time to improve security. By default, the JavaScriptBridge singleton is enabled. Official export templates also have the JavaScriptBridge singleton enabled. See in the documentation for more information.

**Methods:**
- create_callback(callable: Callable) -> JavaScriptObject
- create_object(object: String) -> Variant
- download_buffer(buffer: PackedByteArray, name: String, mime: String = "application/octet-stream")
- eval(code: String, use_global_execution_context: bool = false) -> Variant
- force_fs_sync()
- get_interface(interface: String) -> JavaScriptObject
- is_js_buffer(javascript_object: JavaScriptObject) -> bool
- js_buffer_to_packed_byte_array(javascript_buffer: JavaScriptObject) -> PackedByteArray
- pwa_needs_update() -> bool
- pwa_update() -> int

**Signals:**
- pwa_update_available

