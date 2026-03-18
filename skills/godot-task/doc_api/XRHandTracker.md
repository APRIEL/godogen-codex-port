## XRHandTracker <- XRPositionalTracker

A hand tracking system will create an instance of this object and add it to the XRServer. This tracking system will then obtain skeleton data, convert it to the Godot Humanoid hand skeleton and store this data on the XRHandTracker object. Use XRHandModifier3D to animate a hand mesh using hand tracking data.

**Props:**
- hand: int (XRPositionalTracker.TrackerHand) = 1
- hand_tracking_source: int (XRHandTracker.HandTrackingSource) = 0
- has_tracking_data: bool = false
- type: int (XRServer.TrackerType) = 16

**Methods:**
- get_hand_joint_angular_velocity(joint: int) -> Vector3
- get_hand_joint_flags(joint: int) -> int
- get_hand_joint_linear_velocity(joint: int) -> Vector3
- get_hand_joint_radius(joint: int) -> float
- get_hand_joint_transform(joint: int) -> Transform3D
- set_hand_joint_angular_velocity(joint: int, angular_velocity: Vector3)
- set_hand_joint_flags(joint: int, flags: int)
- set_hand_joint_linear_velocity(joint: int, linear_velocity: Vector3)
- set_hand_joint_radius(joint: int, radius: float)
- set_hand_joint_transform(joint: int, transform: Transform3D)

**Enums:**
**HandTrackingSource:** HAND_TRACKING_SOURCE_UNKNOWN=0, HAND_TRACKING_SOURCE_UNOBSTRUCTED=1, HAND_TRACKING_SOURCE_CONTROLLER=2, HAND_TRACKING_SOURCE_NOT_TRACKED=3, HAND_TRACKING_SOURCE_MAX=4
**HandJoint:** HAND_JOINT_PALM=0, HAND_JOINT_WRIST=1, HAND_JOINT_THUMB_METACARPAL=2, HAND_JOINT_THUMB_PHALANX_PROXIMAL=3, HAND_JOINT_THUMB_PHALANX_DISTAL=4, HAND_JOINT_THUMB_TIP=5, HAND_JOINT_INDEX_FINGER_METACARPAL=6, HAND_JOINT_INDEX_FINGER_PHALANX_PROXIMAL=7, HAND_JOINT_INDEX_FINGER_PHALANX_INTERMEDIATE=8, HAND_JOINT_INDEX_FINGER_PHALANX_DISTAL=9, ...
**HandJointFlags:** HAND_JOINT_FLAG_ORIENTATION_VALID=1, HAND_JOINT_FLAG_ORIENTATION_TRACKED=2, HAND_JOINT_FLAG_POSITION_VALID=4, HAND_JOINT_FLAG_POSITION_TRACKED=8, HAND_JOINT_FLAG_LINEAR_VELOCITY_VALID=16, HAND_JOINT_FLAG_ANGULAR_VELOCITY_VALID=32

