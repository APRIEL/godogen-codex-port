## PhysicalSkyMaterial <- Material

The PhysicalSkyMaterial uses the Preetham analytic daylight model to draw a sky based on physical properties. This results in a substantially more realistic sky than the ProceduralSkyMaterial, but it is slightly slower and less flexible. The PhysicalSkyMaterial only supports one sun. The color, energy, and direction of the sun are taken from the first DirectionalLight3D in the scene tree.

**Props:**
- energy_multiplier: float = 1.0
- ground_color: Color = Color(0.1, 0.07, 0.034, 1)
- mie_coefficient: float = 0.005
- mie_color: Color = Color(0.69, 0.729, 0.812, 1)
- mie_eccentricity: float = 0.8
- night_sky: Texture2D
- rayleigh_coefficient: float = 2.0
- rayleigh_color: Color = Color(0.3, 0.405, 0.6, 1)
- sun_disk_scale: float = 1.0
- turbidity: float = 10.0
- use_debanding: bool = true

