## ImageTextureLayered <- TextureLayered

Base class for Texture2DArray, Cubemap and CubemapArray. Cannot be used directly, but contains all the functions necessary for accessing the derived resource types. See also Texture3D.

**Methods:**
- create_from_images(images: Image[]) -> int
- update_layer(image: Image, layer: int)

