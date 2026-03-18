## FogVolume <- VisualInstance3D

FogVolumes are used to add localized fog into the global volumetric fog effect. FogVolumes can also remove volumetric fog from specific areas if using a FogMaterial with a negative `FogMaterial.density`. Performance of FogVolumes is directly related to their relative size on the screen and the complexity of their attached FogMaterial. It is best to keep FogVolumes relatively small and simple where possible. **Note:** FogVolumes only have a visible effect if `Environment.volumetric_fog_enabled` is `true`. If you don't want fog to be globally visible (but only within FogVolume nodes), set `Environment.volumetric_fog_density` to `0.0`.

**Props:**
- material: Material
- shape: int (RenderingServer.FogVolumeShape) = 3
- size: Vector3 = Vector3(2, 2, 2)

