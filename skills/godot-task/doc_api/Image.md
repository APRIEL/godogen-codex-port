## Image <- Resource

Native image datatype. Contains image data which can be converted to an ImageTexture and provides commonly used *image processing* methods. The maximum width and height for an Image are `MAX_WIDTH` and `MAX_HEIGHT`. An Image cannot be assigned to a texture property of an object directly (such as `Sprite2D.texture`), and has to be converted manually to an ImageTexture first. **Note:** Methods that modify the image data cannot be used on VRAM-compressed images. Use `decompress` to convert the image to an uncompressed format first. **Note:** The maximum image size is 16384×16384 pixels due to graphics hardware limitations. Larger images may fail to import.

**Props:**
- data: Dictionary = { "data": PackedByteArray(), "format": "Lum8", "height": 0, "mipmaps": false, "width": 0 }

**Methods:**
- adjust_bcs(brightness: float, contrast: float, saturation: float)
- blend_rect(src: Image, src_rect: Rect2i, dst: Vector2i)
- blend_rect_mask(src: Image, mask: Image, src_rect: Rect2i, dst: Vector2i)
- blit_rect(src: Image, src_rect: Rect2i, dst: Vector2i)
- blit_rect_mask(src: Image, mask: Image, src_rect: Rect2i, dst: Vector2i)
- bump_map_to_normal_map(bump_scale: float = 1.0)
- clear_mipmaps()
- compress(mode: int, source: int = 0, astc_format: int = 0) -> int
- compress_from_channels(mode: int, channels: int, astc_format: int = 0) -> int
- compute_image_metrics(compared_image: Image, use_luma: bool) -> Dictionary
- convert(format: int)
- copy_from(src: Image)
- create(width: int, height: int, use_mipmaps: bool, format: int) -> Image
- create_empty(width: int, height: int, use_mipmaps: bool, format: int) -> Image
- create_from_data(width: int, height: int, use_mipmaps: bool, format: int, data: PackedByteArray) -> Image
- crop(width: int, height: int)
- decompress() -> int
- detect_alpha() -> int
- detect_used_channels(source: int = 0) -> int
- fill(color: Color)
- fill_rect(rect: Rect2i, color: Color)
- fix_alpha_edges()
- flip_x()
- flip_y()
- generate_mipmaps(renormalize: bool = false) -> int
- get_data() -> PackedByteArray
- get_data_size() -> int
- get_format() -> int
- get_height() -> int
- get_mipmap_count() -> int
- get_mipmap_offset(mipmap: int) -> int
- get_pixel(x: int, y: int) -> Color
- get_pixelv(point: Vector2i) -> Color
- get_region(region: Rect2i) -> Image
- get_size() -> Vector2i
- get_used_rect() -> Rect2i
- get_width() -> int
- has_mipmaps() -> bool
- is_compressed() -> bool
- is_empty() -> bool
- is_invisible() -> bool
- linear_to_srgb()
- load(path: String) -> int
- load_bmp_from_buffer(buffer: PackedByteArray) -> int
- load_dds_from_buffer(buffer: PackedByteArray) -> int
- load_exr_from_buffer(buffer: PackedByteArray) -> int
- load_from_file(path: String) -> Image
- load_jpg_from_buffer(buffer: PackedByteArray) -> int
- load_ktx_from_buffer(buffer: PackedByteArray) -> int
- load_png_from_buffer(buffer: PackedByteArray) -> int
- load_svg_from_buffer(buffer: PackedByteArray, scale: float = 1.0) -> int
- load_svg_from_string(svg_str: String, scale: float = 1.0) -> int
- load_tga_from_buffer(buffer: PackedByteArray) -> int
- load_webp_from_buffer(buffer: PackedByteArray) -> int
- normal_map_to_xy()
- premultiply_alpha()
- resize(width: int, height: int, interpolation: int = 1)
- resize_to_po2(square: bool = false, interpolation: int = 1)
- rgbe_to_srgb() -> Image
- rotate_90(direction: int)
- rotate_180()
- save_dds(path: String) -> int
- save_dds_to_buffer() -> PackedByteArray
- save_exr(path: String, grayscale: bool = false) -> int
- save_exr_to_buffer(grayscale: bool = false) -> PackedByteArray
- save_jpg(path: String, quality: float = 0.75) -> int
- save_jpg_to_buffer(quality: float = 0.75) -> PackedByteArray
- save_png(path: String) -> int
- save_png_to_buffer() -> PackedByteArray
- save_webp(path: String, lossy: bool = false, quality: float = 0.75) -> int
- save_webp_to_buffer(lossy: bool = false, quality: float = 0.75) -> PackedByteArray
- set_data(width: int, height: int, use_mipmaps: bool, format: int, data: PackedByteArray)
- set_pixel(x: int, y: int, color: Color)
- set_pixelv(point: Vector2i, color: Color)
- shrink_x2()
- srgb_to_linear()

**Enums:**
**Constants:** MAX_WIDTH=16777216, MAX_HEIGHT=16777216
**Format:** FORMAT_L8=0, FORMAT_LA8=1, FORMAT_R8=2, FORMAT_RG8=3, FORMAT_RGB8=4, FORMAT_RGBA8=5, FORMAT_RGBA4444=6, FORMAT_RGB565=7, FORMAT_RF=8, FORMAT_RGF=9, ...
**Interpolation:** INTERPOLATE_NEAREST=0, INTERPOLATE_BILINEAR=1, INTERPOLATE_CUBIC=2, INTERPOLATE_TRILINEAR=3, INTERPOLATE_LANCZOS=4
**AlphaMode:** ALPHA_NONE=0, ALPHA_BIT=1, ALPHA_BLEND=2
**CompressMode:** COMPRESS_S3TC=0, COMPRESS_ETC=1, COMPRESS_ETC2=2, COMPRESS_BPTC=3, COMPRESS_ASTC=4, COMPRESS_MAX=5
**UsedChannels:** USED_CHANNELS_L=0, USED_CHANNELS_LA=1, USED_CHANNELS_R=2, USED_CHANNELS_RG=3, USED_CHANNELS_RGB=4, USED_CHANNELS_RGBA=5
**CompressSource:** COMPRESS_SOURCE_GENERIC=0, COMPRESS_SOURCE_SRGB=1, COMPRESS_SOURCE_NORMAL=2
**ASTCFormat:** ASTC_FORMAT_4x4=0, ASTC_FORMAT_8x8=1

