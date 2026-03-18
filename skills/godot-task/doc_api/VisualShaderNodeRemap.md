## VisualShaderNodeRemap <- VisualShaderNode

Remap will transform the input range into output range, e.g. you can change a `0..1` value to `-2..2` etc. See `@GlobalScope.remap` for more details.

**Props:**
- op_type: int (VisualShaderNodeRemap.OpType) = 0

**Enums:**
**OpType:** OP_TYPE_SCALAR=0, OP_TYPE_VECTOR_2D=1, OP_TYPE_VECTOR_2D_SCALAR=2, OP_TYPE_VECTOR_3D=3, OP_TYPE_VECTOR_3D_SCALAR=4, OP_TYPE_VECTOR_4D=5, OP_TYPE_VECTOR_4D_SCALAR=6, OP_TYPE_MAX=7

