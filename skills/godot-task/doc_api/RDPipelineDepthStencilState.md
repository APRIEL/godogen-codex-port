## RDPipelineDepthStencilState <- RefCounted

RDPipelineDepthStencilState controls the way depth and stencil comparisons are performed when sampling those values using RenderingDevice.

**Props:**
- back_op_compare: int (RenderingDevice.CompareOperator) = 7
- back_op_compare_mask: int = 0
- back_op_depth_fail: int (RenderingDevice.StencilOperation) = 1
- back_op_fail: int (RenderingDevice.StencilOperation) = 1
- back_op_pass: int (RenderingDevice.StencilOperation) = 1
- back_op_reference: int = 0
- back_op_write_mask: int = 0
- depth_compare_operator: int (RenderingDevice.CompareOperator) = 7
- depth_range_max: float = 0.0
- depth_range_min: float = 0.0
- enable_depth_range: bool = false
- enable_depth_test: bool = false
- enable_depth_write: bool = false
- enable_stencil: bool = false
- front_op_compare: int (RenderingDevice.CompareOperator) = 7
- front_op_compare_mask: int = 0
- front_op_depth_fail: int (RenderingDevice.StencilOperation) = 1
- front_op_fail: int (RenderingDevice.StencilOperation) = 1
- front_op_pass: int (RenderingDevice.StencilOperation) = 1
- front_op_reference: int = 0
- front_op_write_mask: int = 0

