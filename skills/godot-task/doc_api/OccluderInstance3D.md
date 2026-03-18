## OccluderInstance3D <- VisualInstance3D

Occlusion culling can improve rendering performance in closed/semi-open areas by hiding geometry that is occluded by other objects. The occlusion culling system is mostly static. OccluderInstance3Ds can be moved or hidden at run-time, but doing so will trigger a background recomputation that can take several frames. It is recommended to only move OccluderInstance3Ds sporadically (e.g. for procedural generation purposes), rather than doing so every frame. The occlusion culling system works by rendering the occluders on the CPU in parallel using , drawing the result to a low-resolution buffer then using this to cull 3D nodes individually. In the 3D editor, you can preview the occlusion culling buffer by choosing **Perspective > Display Advanced... > Occlusion Culling Buffer** in the top-left corner of the 3D viewport. The occlusion culling buffer quality can be adjusted in the Project Settings. **Baking:** Select an OccluderInstance3D node, then use the **Bake Occluders** button at the top of the 3D editor. Only opaque materials will be taken into account; transparent materials (alpha-blended or alpha-tested) will be ignored by the occluder generation. **Note:** Occlusion culling is only effective if `ProjectSettings.rendering/occlusion_culling/use_occlusion_culling` is `true`. Enabling occlusion culling has a cost on the CPU. Only enable occlusion culling if you actually plan to use it. Large open scenes with few or no objects blocking the view will generally not benefit much from occlusion culling. Large open scenes generally benefit more from mesh LOD and visibility ranges (`GeometryInstance3D.visibility_range_begin` and `GeometryInstance3D.visibility_range_end`) compared to occlusion culling. **Note:** Due to memory constraints, occlusion culling is not supported by default in Web export templates. It can be enabled by compiling custom Web export templates with `module_raycast_enabled=yes`.

**Props:**
- bake_mask: int = 4294967295
- bake_simplification_distance: float = 0.1
- occluder: Occluder3D

**Methods:**
- get_bake_mask_value(layer_number: int) -> bool
- set_bake_mask_value(layer_number: int, value: bool)

