## HingeJoint3D <- Joint3D

A physics joint that restricts the rotation of a 3D physics body around an axis relative to another physics body. For example, Body A can be a StaticBody3D representing a door hinge that a RigidBody3D rotates around.

**Props:**
- angular_limit/bias: float = 0.3
- angular_limit/enable: bool = false
- angular_limit/lower: float = -1.5707964
- angular_limit/relaxation: float = 1.0
- angular_limit/softness: float = 0.9
- angular_limit/upper: float = 1.5707964
- motor/enable: bool = false
- motor/max_impulse: float = 1.0
- motor/target_velocity: float = 1.0
- params/bias: float = 0.3

**Methods:**
- get_flag(flag: int) -> bool
- get_param(param: int) -> float
- set_flag(flag: int, enabled: bool)
- set_param(param: int, value: float)

**Enums:**
**Param:** PARAM_BIAS=0, PARAM_LIMIT_UPPER=1, PARAM_LIMIT_LOWER=2, PARAM_LIMIT_BIAS=3, PARAM_LIMIT_SOFTNESS=4, PARAM_LIMIT_RELAXATION=5, PARAM_MOTOR_TARGET_VELOCITY=6, PARAM_MOTOR_MAX_IMPULSE=7, PARAM_MAX=8
**Flag:** FLAG_USE_LIMIT=0, FLAG_ENABLE_MOTOR=1, FLAG_MAX=2

