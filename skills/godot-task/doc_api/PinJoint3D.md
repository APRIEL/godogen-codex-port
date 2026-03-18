## PinJoint3D <- Joint3D

A physics joint that attaches two 3D physics bodies at a single point, allowing them to freely rotate. For example, a RigidBody3D can be attached to a StaticBody3D to create a pendulum or a seesaw.

**Props:**
- params/bias: float = 0.3
- params/damping: float = 1.0
- params/impulse_clamp: float = 0.0

**Methods:**
- get_param(param: int) -> float
- set_param(param: int, value: float)

**Enums:**
**Param:** PARAM_BIAS=0, PARAM_DAMPING=1, PARAM_IMPULSE_CLAMP=2

