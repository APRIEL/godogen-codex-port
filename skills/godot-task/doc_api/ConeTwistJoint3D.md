## ConeTwistJoint3D <- Joint3D

A physics joint that connects two 3D physics bodies in a way that simulates a ball-and-socket joint. The twist axis is initiated as the X axis of the ConeTwistJoint3D. Once the physics bodies swing, the twist axis is calculated as the middle of the X axes of the joint in the local space of the two physics bodies. Useful for limbs like shoulders and hips, lamps hanging off a ceiling, etc.

**Props:**
- bias: float = 0.3
- relaxation: float = 1.0
- softness: float = 0.8
- swing_span: float = 0.7853982
- twist_span: float = 3.1415927

**Methods:**
- get_param(param: int) -> float
- set_param(param: int, value: float)

**Enums:**
**Param:** PARAM_SWING_SPAN=0, PARAM_TWIST_SPAN=1, PARAM_BIAS=2, PARAM_SOFTNESS=3, PARAM_RELAXATION=4, PARAM_MAX=5

