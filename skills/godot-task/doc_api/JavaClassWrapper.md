## JavaClassWrapper <- Object

The JavaClassWrapper singleton provides a way for the Godot application to send and receive data through the (JNI). **Note:** This singleton is only available in Android builds. **Warning:** When calling Java methods, be sure to check `JavaClassWrapper.get_exception` to check if the method threw an exception.

**Methods:**
- get_exception() -> JavaObject
- wrap(name: String) -> JavaClass

