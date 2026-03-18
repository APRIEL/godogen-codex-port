## VisualShaderNodeParameter <- VisualShaderNode

A parameter represents a variable in the shader which is set externally, i.e. from the ShaderMaterial. Parameters are exposed as properties in the ShaderMaterial and can be assigned from the Inspector or from a script.

**Props:**
- instance_index: int = 0
- parameter_name: String = ""
- qualifier: int (VisualShaderNodeParameter.Qualifier) = 0

**Enums:**
**Qualifier:** QUAL_NONE=0, QUAL_GLOBAL=1, QUAL_INSTANCE=2, QUAL_INSTANCE_INDEX=3, QUAL_MAX=4

