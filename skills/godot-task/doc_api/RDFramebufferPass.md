## RDFramebufferPass <- RefCounted

This class contains the list of attachment descriptions for a framebuffer pass. Each points with an index to a previously supplied list of texture attachments. Multipass framebuffers can optimize some configurations in mobile. On desktop, they provide little to no advantage. This object is used by RenderingDevice.

**Props:**
- color_attachments: PackedInt32Array = PackedInt32Array()
- depth_attachment: int = -1
- input_attachments: PackedInt32Array = PackedInt32Array()
- preserve_attachments: PackedInt32Array = PackedInt32Array()
- resolve_attachments: PackedInt32Array = PackedInt32Array()

**Enums:**
**Constants:** ATTACHMENT_UNUSED=-1

