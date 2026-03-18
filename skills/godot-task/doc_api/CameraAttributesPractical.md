## CameraAttributesPractical <- CameraAttributes

Controls camera-specific attributes such as auto-exposure, depth of field, and exposure override. When used in a WorldEnvironment it provides default settings for exposure, auto-exposure, and depth of field that will be used by all cameras without their own CameraAttributes, including the editor camera. When used in a Camera3D it will override any CameraAttributes set in the WorldEnvironment. When used in VoxelGI or LightmapGI, only the exposure settings will be used.

**Props:**
- auto_exposure_max_sensitivity: float = 800.0
- auto_exposure_min_sensitivity: float = 0.0
- dof_blur_amount: float = 0.1
- dof_blur_far_distance: float = 10.0
- dof_blur_far_enabled: bool = false
- dof_blur_far_transition: float = 5.0
- dof_blur_near_distance: float = 2.0
- dof_blur_near_enabled: bool = false
- dof_blur_near_transition: float = 1.0

