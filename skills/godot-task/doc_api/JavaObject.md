## JavaObject <- RefCounted

Represents an object from the Java Native Interface. It can be returned from Java methods called on JavaClass or other JavaObjects. See JavaClassWrapper for an example. **Note:** This class only works on Android. On any other platform, this class does nothing. **Note:** This class is not to be confused with JavaScriptObject.

**Methods:**
- get_java_class() -> JavaClass
- has_java_method(method: StringName) -> bool

