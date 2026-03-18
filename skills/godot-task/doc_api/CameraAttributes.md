## CameraAttributes <- Resource

Controls camera-specific attributes such as depth of field and exposure override. When used in a WorldEnvironment it provides default settings for exposure, auto-exposure, and depth of field that will be used by all cameras without their own CameraAttributes, including the editor camera. When used in a Camera3D it will override any CameraAttributes set in the WorldEnvironment. When used in VoxelGI or LightmapGI, only the exposure settings will be used. See also Environment for general 3D environment settings. This is a pure virtual class that is inherited by CameraAttributesPhysical and CameraAttributesPractical.

**Props:**
- auto_exposure_enabled: bool = false
- auto_exposure_scale: float = 0.4
- auto_exposure_speed: float = 0.5
- exposure_multiplier: float = 1.0
- exposure_sensitivity: float = 100.0

