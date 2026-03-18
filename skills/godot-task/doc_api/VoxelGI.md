## VoxelGI <- VisualInstance3D

VoxelGIs are used to provide high-quality real-time indirect light and reflections to scenes. They precompute the effect of objects that emit light and the effect of static geometry to simulate the behavior of complex light in real-time. VoxelGIs need to be baked before having a visible effect. However, once baked, dynamic objects will receive light from them. Furthermore, lights can be fully dynamic or baked. **Note:** VoxelGI is only supported in the Forward+ rendering method, not Mobile or Compatibility. **Procedural generation:** VoxelGI can be baked in an exported project, which makes it suitable for procedurally generated or user-built levels as long as all the geometry is generated in advance. For games where geometry is generated at any time during gameplay, SDFGI is more suitable (see `Environment.sdfgi_enabled`). **Performance:** VoxelGI is relatively demanding on the GPU and is not suited to low-end hardware such as integrated graphics (consider LightmapGI instead). To improve performance, adjust `ProjectSettings.rendering/global_illumination/voxel_gi/quality` and enable `ProjectSettings.rendering/global_illumination/gi/use_half_resolution` in the Project Settings. To provide a fallback for low-end hardware, consider adding an option to disable VoxelGI in your project's options menus. A VoxelGI node can be disabled by hiding it. **Note:** Meshes should have sufficiently thick walls to avoid light leaks (avoid one-sided walls). For interior levels, enclose your level geometry in a sufficiently large box and bridge the loops to close the mesh. To further prevent light leaks, you can also strategically place temporary MeshInstance3D nodes with their `GeometryInstance3D.gi_mode` set to `GeometryInstance3D.GI_MODE_STATIC`. These temporary nodes can then be hidden after baking the VoxelGI node.

**Props:**
- camera_attributes: CameraAttributes
- data: VoxelGIData
- size: Vector3 = Vector3(20, 20, 20)
- subdiv: int (VoxelGI.Subdiv) = 1

**Methods:**
- bake(from_node: Node = null, create_visual_debug: bool = false)
- debug_bake()

**Enums:**
**Subdiv:** SUBDIV_64=0, SUBDIV_128=1, SUBDIV_256=2, SUBDIV_512=3, SUBDIV_MAX=4

