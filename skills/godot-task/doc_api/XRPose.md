## XRPose <- RefCounted

XR runtimes often identify multiple locations on devices such as controllers that are spatially tracked. Orientation, location, linear velocity and angular velocity are all provided for each pose by the XR runtime. This object contains this state of a pose.

**Props:**
- angular_velocity: Vector3 = Vector3(0, 0, 0)
- has_tracking_data: bool = false
- linear_velocity: Vector3 = Vector3(0, 0, 0)
- name: StringName = &""
- tracking_confidence: int (XRPose.TrackingConfidence) = 0
- transform: Transform3D = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)

**Methods:**
- get_adjusted_transform() -> Transform3D

**Enums:**
**TrackingConfidence:** XR_TRACKING_CONFIDENCE_NONE=0, XR_TRACKING_CONFIDENCE_LOW=1, XR_TRACKING_CONFIDENCE_HIGH=2

