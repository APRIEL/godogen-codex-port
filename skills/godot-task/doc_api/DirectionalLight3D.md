## DirectionalLight3D <- Light3D

A directional light is a type of Light3D node that models an infinite number of parallel rays covering the entire scene. It is used for lights with strong intensity that are located far away from the scene to model sunlight or moonlight. Light is emitted in the -Z direction of the node's global basis. For an unrotated light, this means that the light is emitted forwards, illuminating the front side of a 3D model (see `Vector3.FORWARD` and `Vector3.MODEL_FRONT`). The position of the node is ignored; only the basis is used to determine light direction.

**Props:**
- directional_shadow_blend_splits: bool = false
- directional_shadow_fade_start: float = 0.8
- directional_shadow_max_distance: float = 100.0
- directional_shadow_mode: int (DirectionalLight3D.ShadowMode) = 2
- directional_shadow_pancake_size: float = 20.0
- directional_shadow_split_1: float = 0.1
- directional_shadow_split_2: float = 0.2
- directional_shadow_split_3: float = 0.5
- sky_mode: int (DirectionalLight3D.SkyMode) = 0

**Enums:**
**ShadowMode:** SHADOW_ORTHOGONAL=0, SHADOW_PARALLEL_2_SPLITS=1, SHADOW_PARALLEL_4_SPLITS=2
**SkyMode:** SKY_MODE_LIGHT_AND_SKY=0, SKY_MODE_LIGHT_ONLY=1, SKY_MODE_SKY_ONLY=2

