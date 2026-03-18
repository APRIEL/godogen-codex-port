## ImageTexture <- Texture2D

A Texture2D based on an Image. For an image to be displayed, an ImageTexture has to be created from it using the `create_from_image` method: This way, textures can be created at run-time by loading images both from within the editor and externally. **Warning:** Prefer to load imported textures with `@GDScript.load` over loading them from within the filesystem dynamically with `Image.load`, as it may not work in exported projects: This is because images have to be imported as a CompressedTexture2D first to be loaded with `@GDScript.load`. If you'd still like to load an image file just like any other Resource, import it as an Image resource instead, and then load it normally using the `@GDScript.load` method. **Note:** The image can be retrieved from an imported texture using the `Texture2D.get_image` method, which returns a copy of the image: An ImageTexture is not meant to be operated from within the editor interface directly, and is mostly useful for rendering images on screen dynamically via code. If you need to generate images procedurally from within the editor, consider saving and importing images as custom texture resources implementing a new EditorImportPlugin. **Note:** The maximum texture size is 16384×16384 pixels due to graphics hardware limitations.

**Props:**
- resource_local_to_scene: bool = false

**Methods:**
- create_from_image(image: Image) -> ImageTexture
- get_format() -> int
- set_image(image: Image)
- set_size_override(size: Vector2i)
- update(image: Image)

