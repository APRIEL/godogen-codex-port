## XRBodyTracker <- XRPositionalTracker

A body tracking system will create an instance of this object and add it to the XRServer. This tracking system will then obtain skeleton data, convert it to the Godot Humanoid skeleton and store this data on the XRBodyTracker object. Use XRBodyModifier3D to animate a body mesh using body tracking data.

**Props:**
- body_flags: int (XRBodyTracker.BodyFlags) = 0
- has_tracking_data: bool = false
- type: int (XRServer.TrackerType) = 32

**Methods:**
- get_joint_flags(joint: int) -> int
- get_joint_transform(joint: int) -> Transform3D
- set_joint_flags(joint: int, flags: int)
- set_joint_transform(joint: int, transform: Transform3D)

**Enums:**
**BodyFlags:** BODY_FLAG_UPPER_BODY_SUPPORTED=1, BODY_FLAG_LOWER_BODY_SUPPORTED=2, BODY_FLAG_HANDS_SUPPORTED=4
**Joint:** JOINT_ROOT=0, JOINT_HIPS=1, JOINT_SPINE=2, JOINT_CHEST=3, JOINT_UPPER_CHEST=4, JOINT_NECK=5, JOINT_HEAD=6, JOINT_HEAD_TIP=7, JOINT_LEFT_SHOULDER=8, JOINT_LEFT_UPPER_ARM=9, ...
**JointFlags:** JOINT_FLAG_ORIENTATION_VALID=1, JOINT_FLAG_ORIENTATION_TRACKED=2, JOINT_FLAG_POSITION_VALID=4, JOINT_FLAG_POSITION_TRACKED=8

