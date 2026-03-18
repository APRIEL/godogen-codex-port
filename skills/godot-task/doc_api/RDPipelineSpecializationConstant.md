## RDPipelineSpecializationConstant <- RefCounted

A *specialization constant* is a way to create additional variants of shaders without actually increasing the number of shader versions that are compiled. This allows improving performance by reducing the number of shader versions and reducing `if` branching, while still allowing shaders to be flexible for different use cases. This object is used by RenderingDevice.

**Props:**
- constant_id: int = 0
- value: Variant

