## CameraAttributesPhysical <- CameraAttributes

CameraAttributesPhysical is used to set rendering settings based on a physically-based camera's settings. It is responsible for exposure, auto-exposure, and depth of field. When used in a WorldEnvironment it provides default settings for exposure, auto-exposure, and depth of field that will be used by all cameras without their own CameraAttributes, including the editor camera. When used in a Camera3D it will override any CameraAttributes set in the WorldEnvironment and will override the Camera3Ds `Camera3D.far`, `Camera3D.near`, `Camera3D.fov`, and `Camera3D.keep_aspect` properties. When used in VoxelGI or LightmapGI, only the exposure settings will be used. The default settings are intended for use in an outdoor environment, tips for settings for use in an indoor environment can be found in each setting's documentation. **Note:** Depth of field blur is only supported in the Forward+ and Mobile rendering methods, not Compatibility.

**Props:**
- auto_exposure_max_exposure_value: float = 10.0
- auto_exposure_min_exposure_value: float = -8.0
- exposure_aperture: float = 16.0
- exposure_shutter_speed: float = 100.0
- frustum_far: float = 4000.0
- frustum_focal_length: float = 35.0
- frustum_focus_distance: float = 10.0
- frustum_near: float = 0.05

**Methods:**
- get_fov() -> float

