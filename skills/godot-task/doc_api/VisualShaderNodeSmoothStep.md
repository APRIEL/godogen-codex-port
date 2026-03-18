## VisualShaderNodeSmoothStep <- VisualShaderNode

Translates to `smoothstep(edge0, edge1, x)` in the shader language. Returns `0.0` if `x` is smaller than `edge0` and `1.0` if `x` is larger than `edge1`. Otherwise, the return value is interpolated between `0.0` and `1.0` using Hermite polynomials.

**Props:**
- op_type: int (VisualShaderNodeSmoothStep.OpType) = 0

**Enums:**
**OpType:** OP_TYPE_SCALAR=0, OP_TYPE_VECTOR_2D=1, OP_TYPE_VECTOR_2D_SCALAR=2, OP_TYPE_VECTOR_3D=3, OP_TYPE_VECTOR_3D_SCALAR=4, OP_TYPE_VECTOR_4D=5, OP_TYPE_VECTOR_4D_SCALAR=6, OP_TYPE_MAX=7

