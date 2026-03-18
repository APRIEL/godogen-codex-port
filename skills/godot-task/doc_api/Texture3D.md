## Texture3D <- Texture

Base class for ImageTexture3D and CompressedTexture3D. Cannot be used directly, but contains all the functions necessary for accessing the derived resource types. Texture3D is the base class for all 3-dimensional texture types. See also TextureLayered. All images need to have the same width, height and number of mipmap levels. To create such a texture file yourself, reimport your image files using the Godot Editor import presets.

**Methods:**
- create_placeholder() -> Resource
- get_data() -> Image[]
- get_depth() -> int
- get_format() -> int
- get_height() -> int
- get_width() -> int
- has_mipmaps() -> bool

