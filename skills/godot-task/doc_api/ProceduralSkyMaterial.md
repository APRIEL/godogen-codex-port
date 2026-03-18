## ProceduralSkyMaterial <- Material

ProceduralSkyMaterial provides a way to create an effective background quickly by defining procedural parameters for the sun, the sky and the ground. The sky and ground are defined by a main color, a color at the horizon, and an easing curve to interpolate between them. Suns are described by a position in the sky, a color, and a max angle from the sun at which the easing curve ends. The max angle therefore defines the size of the sun in the sky. ProceduralSkyMaterial supports up to 4 suns, using the color, and energy, direction, and angular distance of the first four DirectionalLight3D nodes in the scene. This means that the suns are defined individually by the properties of their corresponding DirectionalLight3Ds and globally by `sun_angle_max` and `sun_curve`. ProceduralSkyMaterial uses a lightweight shader to draw the sky and is therefore suited for real-time updates. This makes it a great option for a sky that is simple and computationally cheap, but unrealistic. If you need a more realistic procedural option, use PhysicalSkyMaterial.

**Props:**
- energy_multiplier: float = 1.0
- ground_bottom_color: Color = Color(0.2, 0.169, 0.133, 1)
- ground_curve: float = 0.02
- ground_energy_multiplier: float = 1.0
- ground_horizon_color: Color = Color(0.6463, 0.6558, 0.6708, 1)
- sky_cover: Texture2D
- sky_cover_modulate: Color = Color(1, 1, 1, 1)
- sky_curve: float = 0.15
- sky_energy_multiplier: float = 1.0
- sky_horizon_color: Color = Color(0.6463, 0.6558, 0.6708, 1)
- sky_top_color: Color = Color(0.385, 0.454, 0.55, 1)
- sun_angle_max: float = 30.0
- sun_curve: float = 0.15
- use_debanding: bool = true

