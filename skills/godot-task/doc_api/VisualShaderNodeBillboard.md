## VisualShaderNodeBillboard <- VisualShaderNode

The output port of this node needs to be connected to `Model View Matrix` port of VisualShaderNodeOutput.

**Props:**
- billboard_type: int (VisualShaderNodeBillboard.BillboardType) = 1
- keep_scale: bool = false

**Enums:**
**BillboardType:** BILLBOARD_TYPE_DISABLED=0, BILLBOARD_TYPE_ENABLED=1, BILLBOARD_TYPE_FIXED_Y=2, BILLBOARD_TYPE_PARTICLES=3, BILLBOARD_TYPE_MAX=4

