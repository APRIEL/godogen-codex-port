## SpotLight3D <- Light3D

A Spotlight is a type of Light3D node that emits lights in a specific direction, in the shape of a cone. The light is attenuated through the distance. This attenuation can be configured by changing the energy, radius and attenuation parameters of Light3D. Light is emitted in the -Z direction of the node's global basis. For an unrotated light, this means that the light is emitted forwards, illuminating the front side of a 3D model (see `Vector3.FORWARD` and `Vector3.MODEL_FRONT`). **Note:** When using the Mobile rendering method, only 8 spot lights can be displayed on each mesh resource. Attempting to display more than 8 spot lights on a single mesh resource will result in spot lights flickering in and out as the camera moves. When using the Compatibility rendering method, only 8 spot lights can be displayed on each mesh resource by default, but this can be increased by adjusting `ProjectSettings.rendering/limits/opengl/max_lights_per_object`. **Note:** When using the Mobile or Compatibility rendering methods, spot lights will only correctly affect meshes whose visibility AABB intersects with the light's AABB. If using a shader to deform the mesh in a way that makes it go outside its AABB, `GeometryInstance3D.extra_cull_margin` must be increased on the mesh. Otherwise, the light may not be visible on the mesh.

**Props:**
- light_specular: float = 0.5
- shadow_bias: float = 0.03
- shadow_normal_bias: float = 1.0
- spot_angle: float = 45.0
- spot_angle_attenuation: float = 1.0
- spot_attenuation: float = 1.0
- spot_range: float = 5.0

