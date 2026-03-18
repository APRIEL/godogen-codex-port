## VisualShaderNodeStep <- VisualShaderNode

Translates to `step(edge, x)` in the shader language. Returns `0.0` if `x` is smaller than `edge` and `1.0` otherwise.

**Props:**
- op_type: int (VisualShaderNodeStep.OpType) = 0

**Enums:**
**OpType:** OP_TYPE_SCALAR=0, OP_TYPE_VECTOR_2D=1, OP_TYPE_VECTOR_2D_SCALAR=2, OP_TYPE_VECTOR_3D=3, OP_TYPE_VECTOR_3D_SCALAR=4, OP_TYPE_VECTOR_4D=5, OP_TYPE_VECTOR_4D_SCALAR=6, OP_TYPE_MAX=7

