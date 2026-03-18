## XRInterface <- RefCounted

This class needs to be implemented to make an AR or VR platform available to Godot and these should be implemented as C++ modules or GDExtension modules. Part of the interface is exposed to GDScript so you can detect, enable and configure an AR or VR platform. Interfaces should be written in such a way that simply enabling them will give us a working setup. You can query the available interfaces through XRServer.

**Props:**
- ar_is_anchor_detection_enabled: bool = false
- environment_blend_mode: int (XRInterface.EnvironmentBlendMode) = 0
- interface_is_primary: bool = false
- xr_play_area_mode: int (XRInterface.PlayAreaMode) = 0

**Methods:**
- get_camera_feed_id() -> int
- get_capabilities() -> int
- get_name() -> StringName
- get_play_area() -> PackedVector3Array
- get_projection_for_view(view: int, aspect: float, near: float, far: float) -> Projection
- get_render_target_size() -> Vector2
- get_supported_environment_blend_modes() -> Array
- get_system_info() -> Dictionary
- get_tracking_status() -> int
- get_transform_for_view(view: int, cam_transform: Transform3D) -> Transform3D
- get_view_count() -> int
- initialize() -> bool
- is_initialized() -> bool
- is_passthrough_enabled() -> bool
- is_passthrough_supported() -> bool
- set_environment_blend_mode(mode: int) -> bool
- set_play_area_mode(mode: int) -> bool
- start_passthrough() -> bool
- stop_passthrough()
- supports_play_area_mode(mode: int) -> bool
- trigger_haptic_pulse(action_name: String, tracker_name: StringName, frequency: float, amplitude: float, duration_sec: float, delay_sec: float)
- uninitialize()

**Signals:**
- play_area_changed(mode: int)

**Enums:**
**Capabilities:** XR_NONE=0, XR_MONO=1, XR_STEREO=2, XR_QUAD=4, XR_VR=8, XR_AR=16, XR_EXTERNAL=32
**TrackingStatus:** XR_NORMAL_TRACKING=0, XR_EXCESSIVE_MOTION=1, XR_INSUFFICIENT_FEATURES=2, XR_UNKNOWN_TRACKING=3, XR_NOT_TRACKING=4
**PlayAreaMode:** XR_PLAY_AREA_UNKNOWN=0, XR_PLAY_AREA_3DOF=1, XR_PLAY_AREA_SITTING=2, XR_PLAY_AREA_ROOMSCALE=3, XR_PLAY_AREA_STAGE=4, XR_PLAY_AREA_CUSTOM=2147483647
**EnvironmentBlendMode:** XR_ENV_BLEND_MODE_OPAQUE=0, XR_ENV_BLEND_MODE_ADDITIVE=1, XR_ENV_BLEND_MODE_ALPHA_BLEND=2
**VRSTextureFormat:** XR_VRS_TEXTURE_FORMAT_UNIFIED=0, XR_VRS_TEXTURE_FORMAT_FRAGMENT_SHADING_RATE=1, XR_VRS_TEXTURE_FORMAT_FRAGMENT_DENSITY_MAP=2

