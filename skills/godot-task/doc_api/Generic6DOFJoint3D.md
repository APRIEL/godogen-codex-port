## Generic6DOFJoint3D <- Joint3D

The Generic6DOFJoint3D (6 Degrees Of Freedom) joint allows for implementing custom types of joints by locking the rotation and translation of certain axes. The first 3 DOF represent the linear motion of the physics bodies and the last 3 DOF represent the angular motion of the physics bodies. Each axis can be either locked, or limited.

**Props:**
- angular_limit_x/damping: float = 1.0
- angular_limit_x/enabled: bool = true
- angular_limit_x/erp: float = 0.5
- angular_limit_x/force_limit: float = 0.0
- angular_limit_x/lower_angle: float = 0.0
- angular_limit_x/restitution: float = 0.0
- angular_limit_x/softness: float = 0.5
- angular_limit_x/upper_angle: float = 0.0
- angular_limit_y/damping: float = 1.0
- angular_limit_y/enabled: bool = true
- angular_limit_y/erp: float = 0.5
- angular_limit_y/force_limit: float = 0.0
- angular_limit_y/lower_angle: float = 0.0
- angular_limit_y/restitution: float = 0.0
- angular_limit_y/softness: float = 0.5
- angular_limit_y/upper_angle: float = 0.0
- angular_limit_z/damping: float = 1.0
- angular_limit_z/enabled: bool = true
- angular_limit_z/erp: float = 0.5
- angular_limit_z/force_limit: float = 0.0
- angular_limit_z/lower_angle: float = 0.0
- angular_limit_z/restitution: float = 0.0
- angular_limit_z/softness: float = 0.5
- angular_limit_z/upper_angle: float = 0.0
- angular_motor_x/enabled: bool = false
- angular_motor_x/force_limit: float = 300.0
- angular_motor_x/target_velocity: float = 0.0
- angular_motor_y/enabled: bool = false
- angular_motor_y/force_limit: float = 300.0
- angular_motor_y/target_velocity: float = 0.0
- angular_motor_z/enabled: bool = false
- angular_motor_z/force_limit: float = 300.0
- angular_motor_z/target_velocity: float = 0.0
- angular_spring_x/damping: float = 0.0
- angular_spring_x/enabled: bool = false
- angular_spring_x/equilibrium_point: float = 0.0
- angular_spring_x/stiffness: float = 0.0
- angular_spring_y/damping: float = 0.0
- angular_spring_y/enabled: bool = false
- angular_spring_y/equilibrium_point: float = 0.0
- angular_spring_y/stiffness: float = 0.0
- angular_spring_z/damping: float = 0.0
- angular_spring_z/enabled: bool = false
- angular_spring_z/equilibrium_point: float = 0.0
- angular_spring_z/stiffness: float = 0.0
- linear_limit_x/damping: float = 1.0
- linear_limit_x/enabled: bool = true
- linear_limit_x/lower_distance: float = 0.0
- linear_limit_x/restitution: float = 0.5
- linear_limit_x/softness: float = 0.7
- linear_limit_x/upper_distance: float = 0.0
- linear_limit_y/damping: float = 1.0
- linear_limit_y/enabled: bool = true
- linear_limit_y/lower_distance: float = 0.0
- linear_limit_y/restitution: float = 0.5
- linear_limit_y/softness: float = 0.7
- linear_limit_y/upper_distance: float = 0.0
- linear_limit_z/damping: float = 1.0
- linear_limit_z/enabled: bool = true
- linear_limit_z/lower_distance: float = 0.0
- linear_limit_z/restitution: float = 0.5
- linear_limit_z/softness: float = 0.7
- linear_limit_z/upper_distance: float = 0.0
- linear_motor_x/enabled: bool = false
- linear_motor_x/force_limit: float = 0.0
- linear_motor_x/target_velocity: float = 0.0
- linear_motor_y/enabled: bool = false
- linear_motor_y/force_limit: float = 0.0
- linear_motor_y/target_velocity: float = 0.0
- linear_motor_z/enabled: bool = false
- linear_motor_z/force_limit: float = 0.0
- linear_motor_z/target_velocity: float = 0.0
- linear_spring_x/damping: float = 0.01
- linear_spring_x/enabled: bool = false
- linear_spring_x/equilibrium_point: float = 0.0
- linear_spring_x/stiffness: float = 0.01
- linear_spring_y/damping: float = 0.01
- linear_spring_y/enabled: bool = false
- linear_spring_y/equilibrium_point: float = 0.0
- linear_spring_y/stiffness: float = 0.01
- linear_spring_z/damping: float = 0.01
- linear_spring_z/enabled: bool = false
- linear_spring_z/equilibrium_point: float = 0.0
- linear_spring_z/stiffness: float = 0.01

**Methods:**
- get_flag_x(flag: int) -> bool
- get_flag_y(flag: int) -> bool
- get_flag_z(flag: int) -> bool
- get_param_x(param: int) -> float
- get_param_y(param: int) -> float
- get_param_z(param: int) -> float
- set_flag_x(flag: int, value: bool)
- set_flag_y(flag: int, value: bool)
- set_flag_z(flag: int, value: bool)
- set_param_x(param: int, value: float)
- set_param_y(param: int, value: float)
- set_param_z(param: int, value: float)

**Enums:**
**Param:** PARAM_LINEAR_LOWER_LIMIT=0, PARAM_LINEAR_UPPER_LIMIT=1, PARAM_LINEAR_LIMIT_SOFTNESS=2, PARAM_LINEAR_RESTITUTION=3, PARAM_LINEAR_DAMPING=4, PARAM_LINEAR_MOTOR_TARGET_VELOCITY=5, PARAM_LINEAR_MOTOR_FORCE_LIMIT=6, PARAM_LINEAR_SPRING_STIFFNESS=7, PARAM_LINEAR_SPRING_DAMPING=8, PARAM_LINEAR_SPRING_EQUILIBRIUM_POINT=9, ...
**Flag:** FLAG_ENABLE_LINEAR_LIMIT=0, FLAG_ENABLE_ANGULAR_LIMIT=1, FLAG_ENABLE_LINEAR_SPRING=3, FLAG_ENABLE_ANGULAR_SPRING=2, FLAG_ENABLE_MOTOR=4, FLAG_ENABLE_LINEAR_MOTOR=5, FLAG_MAX=6

