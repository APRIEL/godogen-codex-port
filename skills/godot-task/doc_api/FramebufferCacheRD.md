## FramebufferCacheRD <- Object

Framebuffer cache manager for RenderingDevice-based renderers. Provides a way to create a framebuffer and reuse it in subsequent calls for as long as the used textures exists. Framebuffers will automatically be cleaned up when dependent objects are freed.

**Methods:**
- get_cache_multipass(textures: RID[], passes: RDFramebufferPass[], views: int) -> RID

