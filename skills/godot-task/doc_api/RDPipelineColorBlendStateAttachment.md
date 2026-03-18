## RDPipelineColorBlendStateAttachment <- RefCounted

Controls how blending between source and destination fragments is performed when using RenderingDevice. For reference, this is how common user-facing blend modes are implemented in Godot's 2D renderer: **Mix:** **Add:** **Subtract:** **Multiply:** **Pre-multiplied alpha:**

**Props:**
- alpha_blend_op: int (RenderingDevice.BlendOperation) = 0
- color_blend_op: int (RenderingDevice.BlendOperation) = 0
- dst_alpha_blend_factor: int (RenderingDevice.BlendFactor) = 0
- dst_color_blend_factor: int (RenderingDevice.BlendFactor) = 0
- enable_blend: bool = false
- src_alpha_blend_factor: int (RenderingDevice.BlendFactor) = 0
- src_color_blend_factor: int (RenderingDevice.BlendFactor) = 0
- write_a: bool = true
- write_b: bool = true
- write_g: bool = true
- write_r: bool = true

**Methods:**
- set_as_mix()

