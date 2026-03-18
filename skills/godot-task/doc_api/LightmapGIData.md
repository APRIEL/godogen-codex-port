## LightmapGIData <- Resource

LightmapGIData contains baked lightmap and dynamic object probe data for LightmapGI. It is replaced every time lightmaps are baked in LightmapGI.

**Props:**
- light_texture: TextureLayered
- lightmap_textures: TextureLayered[] = []
- shadowmask_textures: TextureLayered[] = []

**Methods:**
- add_user(path: NodePath, uv_scale: Rect2, slice_index: int, sub_instance: int)
- clear_users()
- get_user_count() -> int
- get_user_path(user_idx: int) -> NodePath
- is_using_spherical_harmonics() -> bool
- set_uses_spherical_harmonics(uses_spherical_harmonics: bool)

**Enums:**
**ShadowmaskMode:** SHADOWMASK_MODE_NONE=0, SHADOWMASK_MODE_REPLACE=1, SHADOWMASK_MODE_OVERLAY=2

