## ResourceImporterTextureAtlas <- ResourceImporter

This imports a collection of textures from a PNG image into an AtlasTexture or 2D ArrayMesh. This can be used to save memory when importing 2D animations from spritesheets. Texture atlases are only supported in 2D rendering, not 3D. See also ResourceImporterTexture and ResourceImporterLayeredTexture. **Note:** ResourceImporterTextureAtlas does not handle importing TileSetAtlasSource, which is created using the TileSet editor instead.

**Props:**
- atlas_file: String = ""
- crop_to_region: bool = false
- import_mode: int = 0
- trim_alpha_border_from_region: bool = true

