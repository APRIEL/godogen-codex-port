## PortableCompressedTexture2D <- Texture2D

This class allows storing compressed textures as self contained (not imported) resources. For 2D usage (compressed on disk, uncompressed on VRAM), the lossy and lossless modes are recommended. For 3D usage (compressed on VRAM) it depends on the target platform. If you intend to only use desktop, S3TC or BPTC are recommended. For only mobile, ETC2 is recommended. For portable, self contained 3D textures that work on both desktop and mobile, Basis Universal is recommended (although it has a small quality cost and longer compression time as a tradeoff). This resource is intended to be created from code.

**Props:**
- keep_compressed_buffer: bool = false
- resource_local_to_scene: bool = false
- size_override: Vector2 = Vector2(0, 0)

**Methods:**
- create_from_image(image: Image, compression_mode: int, normal_map: bool = false, lossy_quality: float = 0.8)
- get_compression_mode() -> int
- get_format() -> int
- is_keeping_all_compressed_buffers() -> bool
- set_basisu_compressor_params(uastc_level: int, rdo_quality_loss: float)
- set_keep_all_compressed_buffers(keep: bool)

**Enums:**
**CompressionMode:** COMPRESSION_MODE_LOSSLESS=0, COMPRESSION_MODE_LOSSY=1, COMPRESSION_MODE_BASIS_UNIVERSAL=2, COMPRESSION_MODE_S3TC=3, COMPRESSION_MODE_ETC2=4, COMPRESSION_MODE_BPTC=5, COMPRESSION_MODE_ASTC=6

