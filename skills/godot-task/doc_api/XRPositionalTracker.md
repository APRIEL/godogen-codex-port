## XRPositionalTracker <- XRTracker

An instance of this object represents a device that is tracked, such as a controller or anchor point. HMDs aren't represented here as they are handled internally. As controllers are turned on and the XRInterface detects them, instances of this object are automatically added to this list of active tracking objects accessible through the XRServer. The XRNode3D and XRAnchor3D both consume objects of this type and should be used in your project. The positional trackers are just under-the-hood objects that make this all work. These are mostly exposed so that GDExtension-based interfaces can interact with them.

**Props:**
- hand: int (XRPositionalTracker.TrackerHand) = 0
- profile: String = ""

**Methods:**
- get_input(name: StringName) -> Variant
- get_pose(name: StringName) -> XRPose
- has_pose(name: StringName) -> bool
- invalidate_pose(name: StringName)
- set_input(name: StringName, value: Variant)
- set_pose(name: StringName, transform: Transform3D, linear_velocity: Vector3, angular_velocity: Vector3, tracking_confidence: int)

**Signals:**
- button_pressed(name: String)
- button_released(name: String)
- input_float_changed(name: String, value: float)
- input_vector2_changed(name: String, vector: Vector2)
- pose_changed(pose: XRPose)
- pose_lost_tracking(pose: XRPose)
- profile_changed(role: String)

**Enums:**
**TrackerHand:** TRACKER_HAND_UNKNOWN=0, TRACKER_HAND_LEFT=1, TRACKER_HAND_RIGHT=2, TRACKER_HAND_MAX=3

