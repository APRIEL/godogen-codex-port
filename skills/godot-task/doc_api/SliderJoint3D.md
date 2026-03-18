## SliderJoint3D <- Joint3D

A physics joint that restricts the movement of a 3D physics body along an axis relative to another physics body. For example, Body A could be a StaticBody3D representing a piston base, while Body B could be a RigidBody3D representing the piston head, moving up and down.

**Props:**
- angular_limit/damping: float = 0.0
- angular_limit/lower_angle: float = 0.0
- angular_limit/restitution: float = 0.7
- angular_limit/softness: float = 1.0
- angular_limit/upper_angle: float = 0.0
- angular_motion/damping: float = 1.0
- angular_motion/restitution: float = 0.7
- angular_motion/softness: float = 1.0
- angular_ortho/damping: float = 1.0
- angular_ortho/restitution: float = 0.7
- angular_ortho/softness: float = 1.0
- linear_limit/damping: float = 1.0
- linear_limit/lower_distance: float = -1.0
- linear_limit/restitution: float = 0.7
- linear_limit/softness: float = 1.0
- linear_limit/upper_distance: float = 1.0
- linear_motion/damping: float = 0.0
- linear_motion/restitution: float = 0.7
- linear_motion/softness: float = 1.0
- linear_ortho/damping: float = 1.0
- linear_ortho/restitution: float = 0.7
- linear_ortho/softness: float = 1.0

**Methods:**
- get_param(param: int) -> float
- set_param(param: int, value: float)

**Enums:**
**Param:** PARAM_LINEAR_LIMIT_UPPER=0, PARAM_LINEAR_LIMIT_LOWER=1, PARAM_LINEAR_LIMIT_SOFTNESS=2, PARAM_LINEAR_LIMIT_RESTITUTION=3, PARAM_LINEAR_LIMIT_DAMPING=4, PARAM_LINEAR_MOTION_SOFTNESS=5, PARAM_LINEAR_MOTION_RESTITUTION=6, PARAM_LINEAR_MOTION_DAMPING=7, PARAM_LINEAR_ORTHOGONAL_SOFTNESS=8, PARAM_LINEAR_ORTHOGONAL_RESTITUTION=9, ...

