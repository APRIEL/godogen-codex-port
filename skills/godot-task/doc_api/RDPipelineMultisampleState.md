## RDPipelineMultisampleState <- RefCounted

RDPipelineMultisampleState is used to control how multisample or supersample antialiasing is being performed when rendering using RenderingDevice.

**Props:**
- enable_alpha_to_coverage: bool = false
- enable_alpha_to_one: bool = false
- enable_sample_shading: bool = false
- min_sample_shading: float = 0.0
- sample_count: int (RenderingDevice.TextureSamples) = 0
- sample_masks: int[] = []

