## TextureLayered <- Texture

Base class for ImageTextureLayered and CompressedTextureLayered. Cannot be used directly, but contains all the functions necessary for accessing the derived resource types. See also Texture3D. Data is set on a per-layer basis. For Texture2DArrays, the layer specifies the array layer. All images need to have the same width, height and number of mipmap levels. A TextureLayered can be loaded with `ResourceLoader.load`. Internally, Godot maps these files to their respective counterparts in the target rendering driver (Vulkan, OpenGL3).

**Methods:**
- get_format() -> int
- get_height() -> int
- get_layer_data(layer: int) -> Image
- get_layered_type() -> int
- get_layers() -> int
- get_width() -> int
- has_mipmaps() -> bool

**Enums:**
**LayeredType:** LAYERED_TYPE_2D_ARRAY=0, LAYERED_TYPE_CUBEMAP=1, LAYERED_TYPE_CUBEMAP_ARRAY=2

