## VehicleWheel3D <- Node3D

A node used as a child of a VehicleBody3D parent to simulate the behavior of one of its wheels. This node also acts as a collider to detect if the wheel is touching a surface. **Note:** This class has known issues and isn't designed to provide realistic 3D vehicle physics. If you want advanced vehicle physics, you may need to write your own physics integration using another PhysicsBody3D class.

**Props:**
- brake: float = 0.0
- damping_compression: float = 0.83
- damping_relaxation: float = 0.88
- engine_force: float = 0.0
- physics_interpolation_mode: int (Node.PhysicsInterpolationMode) = 2
- steering: float = 0.0
- suspension_max_force: float = 6000.0
- suspension_stiffness: float = 5.88
- suspension_travel: float = 0.2
- use_as_steering: bool = false
- use_as_traction: bool = false
- wheel_friction_slip: float = 10.5
- wheel_radius: float = 0.5
- wheel_rest_length: float = 0.15
- wheel_roll_influence: float = 0.1

**Methods:**
- get_contact_body() -> Node3D
- get_contact_normal() -> Vector3
- get_contact_point() -> Vector3
- get_rpm() -> float
- get_skidinfo() -> float
- is_in_contact() -> bool

