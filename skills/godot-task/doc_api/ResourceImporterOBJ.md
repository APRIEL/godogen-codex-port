## ResourceImporterOBJ <- ResourceImporter

Unlike ResourceImporterScene, ResourceImporterOBJ will import a single Mesh resource by default instead of importing a PackedScene. This makes it easier to use the Mesh resource in nodes that expect direct Mesh resources, such as GridMap, GPUParticles3D or CPUParticles3D. Note that it is still possible to save mesh resources from 3D scenes using the **Advanced Import Settings** dialog, regardless of the source format. See also ResourceImporterScene, which is used for more advanced 3D formats such as glTF.

**Props:**
- force_disable_mesh_compression: bool = false
- generate_lightmap_uv2: bool = false
- generate_lightmap_uv2_texel_size: float = 0.2
- generate_lods: bool = true
- generate_shadow_mesh: bool = true
- generate_tangents: bool = true
- offset_mesh: Vector3 = Vector3(0, 0, 0)
- scale_mesh: Vector3 = Vector3(1, 1, 1)

