## ResourceImporterScene <- ResourceImporter

See also ResourceImporterOBJ, which is used for OBJ models that can be imported as an independent Mesh or a scene. Additional options (such as extracting individual meshes or materials to files) are available in the **Advanced Import Settings** dialog. This dialog can be accessed by double-clicking a 3D scene in the FileSystem dock or by selecting a 3D scene in the FileSystem dock, going to the Import dock and choosing **Advanced**. **Note:** ResourceImporterScene is *not* used for PackedScenes, such as `.tscn` and `.scn` files.

**Props:**
- _subresources: Dictionary = {}
- animation/fps: float = 30
- animation/import: bool = true
- animation/import_rest_as_RESET: bool = false
- animation/remove_immutable_tracks: bool = true
- animation/trimming: bool = false
- import_script/path: String = ""
- materials/extract: int = 0
- materials/extract_format: int = 0
- materials/extract_path: String = ""
- meshes/create_shadow_meshes: bool = true
- meshes/ensure_tangents: bool = true
- meshes/force_disable_compression: bool = false
- meshes/generate_lods: bool = true
- meshes/light_baking: int = 1
- meshes/lightmap_texel_size: float = 0.2
- nodes/apply_root_scale: bool = true
- nodes/import_as_skeleton_bones: bool = false
- nodes/root_name: String = ""
- nodes/root_scale: float = 1.0
- nodes/root_script: Script = null
- nodes/root_type: String = ""
- nodes/use_name_suffixes: bool = true
- nodes/use_node_type_suffixes: bool = true
- skins/use_named_skins: bool = true

