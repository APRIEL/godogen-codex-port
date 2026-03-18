## JavaClass <- RefCounted

Represents a class from the Java Native Interface. It is returned from `JavaClassWrapper.wrap`. **Note:** This class only works on Android. On any other platform, this class does nothing. **Note:** This class is not to be confused with JavaScriptObject.

**Methods:**
- get_java_class_name() -> String
- get_java_method_list() -> Dictionary[]
- get_java_parent_class() -> JavaClass
- has_java_method(method: StringName) -> bool

