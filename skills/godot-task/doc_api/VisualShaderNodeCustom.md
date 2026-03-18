## VisualShaderNodeCustom <- VisualShaderNode

By inheriting this class you can create a custom VisualShader script addon which will be automatically added to the Visual Shader Editor. The VisualShaderNode's behavior is defined by overriding the provided virtual methods. In order for the node to be registered as an editor addon, you must use the `@tool` annotation and provide a `class_name` for your custom script. For example:

**Methods:**
- get_option_index(option: int) -> int

