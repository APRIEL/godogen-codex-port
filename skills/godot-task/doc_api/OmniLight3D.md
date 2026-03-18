## OmniLight3D <- Light3D

An Omnidirectional light is a type of Light3D that emits light in all directions. The light is attenuated by distance and this attenuation can be configured by changing its energy, radius, and attenuation parameters. **Note:** When using the Mobile rendering method, only 8 omni lights can be displayed on each mesh resource. Attempting to display more than 8 omni lights on a single mesh resource will result in omni lights flickering in and out as the camera moves. When using the Compatibility rendering method, only 8 omni lights can be displayed on each mesh resource by default, but this can be increased by adjusting `ProjectSettings.rendering/limits/opengl/max_lights_per_object`. **Note:** When using the Mobile or Compatibility rendering methods, omni lights will only correctly affect meshes whose visibility AABB intersects with the light's AABB. If using a shader to deform the mesh in a way that makes it go outside its AABB, `GeometryInstance3D.extra_cull_margin` must be increased on the mesh. Otherwise, the light may not be visible on the mesh.

**Props:**
- light_specular: float = 0.5
- omni_attenuation: float = 1.0
- omni_range: float = 5.0
- omni_shadow_mode: int (OmniLight3D.ShadowMode) = 1
- shadow_normal_bias: float = 1.0

**Enums:**
**ShadowMode:** SHADOW_DUAL_PARABOLOID=0, SHADOW_CUBE=1

