## Decal <- VisualInstance3D

Decals are used to project a texture onto a Mesh in the scene. Use Decals to add detail to a scene without affecting the underlying Mesh. They are often used to add weathering to building, add dirt or mud to the ground, or add variety to props. Decals can be moved at any time, making them suitable for things like blob shadows or laser sight dots. They are made of an AABB and a group of Texture2Ds specifying Color, normal, ORM (ambient occlusion, roughness, metallic), and emission. Decals are projected within their AABB so altering the orientation of the Decal affects the direction in which they are projected. By default, Decals are projected down (i.e. from positive Y to negative Y). The Texture2Ds associated with the Decal are automatically stored in a texture atlas which is used for drawing the decals so all decals can be drawn at once. Godot uses clustered decals, meaning they are stored in cluster data and drawn when the mesh is drawn, they are not drawn as a post-processing effect after. **Note:** Decals cannot affect an underlying material's transparency, regardless of its transparency mode (alpha blend, alpha scissor, alpha hash, opaque pre-pass). This means translucent or transparent areas of a material will remain translucent or transparent even if an opaque decal is applied on them. **Note:** Decals are only supported in the Forward+ and Mobile rendering methods, not Compatibility. When using the Mobile rendering method, only 8 decals can be displayed on each mesh resource. Attempting to display more than 8 decals on a single mesh resource will result in decals flickering in and out as the camera moves. **Note:** When using the Mobile rendering method, decals will only correctly affect meshes whose visibility AABB intersects with the decal's AABB. If using a shader to deform the mesh in a way that makes it go outside its AABB, `GeometryInstance3D.extra_cull_margin` must be increased on the mesh. Otherwise, the decal may not be visible on the mesh.

**Props:**
- albedo_mix: float = 1.0
- cull_mask: int = 1048575
- distance_fade_begin: float = 40.0
- distance_fade_enabled: bool = false
- distance_fade_length: float = 10.0
- emission_energy: float = 1.0
- lower_fade: float = 0.3
- modulate: Color = Color(1, 1, 1, 1)
- normal_fade: float = 0.0
- size: Vector3 = Vector3(2, 2, 2)
- texture_albedo: Texture2D
- texture_emission: Texture2D
- texture_normal: Texture2D
- texture_orm: Texture2D
- upper_fade: float = 0.3

**Methods:**
- get_texture(type: int) -> Texture2D
- set_texture(type: int, texture: Texture2D)

**Enums:**
**DecalTexture:** TEXTURE_ALBEDO=0, TEXTURE_NORMAL=1, TEXTURE_ORM=2, TEXTURE_EMISSION=3, TEXTURE_MAX=4

