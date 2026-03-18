## VisualShaderNodeDerivativeFunc <- VisualShaderNode

This node is only available in `Fragment` and `Light` visual shaders.

**Props:**
- function: int (VisualShaderNodeDerivativeFunc.Function) = 0
- op_type: int (VisualShaderNodeDerivativeFunc.OpType) = 0
- precision: int (VisualShaderNodeDerivativeFunc.Precision) = 0

**Enums:**
**OpType:** OP_TYPE_SCALAR=0, OP_TYPE_VECTOR_2D=1, OP_TYPE_VECTOR_3D=2, OP_TYPE_VECTOR_4D=3, OP_TYPE_MAX=4
**Function:** FUNC_SUM=0, FUNC_X=1, FUNC_Y=2, FUNC_MAX=3
**Precision:** PRECISION_NONE=0, PRECISION_COARSE=1, PRECISION_FINE=2, PRECISION_MAX=3

