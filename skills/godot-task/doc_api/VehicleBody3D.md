## VehicleBody3D <- RigidBody3D

This physics body implements all the physics logic needed to simulate a car. It is based on the raycast vehicle system commonly found in physics engines. Aside from a CollisionShape3D for the main body of the vehicle, you must also add a VehicleWheel3D node for each wheel. You should also add a MeshInstance3D to this node for the 3D model of the vehicle, but this model should generally not include meshes for the wheels. You can control the vehicle by using the `brake`, `engine_force`, and `steering` properties. The position or orientation of this node shouldn't be changed directly. **Note:** The local forward for this node is `Vector3.MODEL_FRONT`. **Note:** The origin point of your VehicleBody3D will determine the center of gravity of your vehicle. To make the vehicle more grounded, the origin point is usually kept low, moving the CollisionShape3D and MeshInstance3D upwards. **Note:** This class has known issues and isn't designed to provide realistic 3D vehicle physics. If you want advanced vehicle physics, you may have to write your own physics integration using CharacterBody3D or RigidBody3D.

**Props:**
- brake: float = 0.0
- engine_force: float = 0.0
- mass: float = 40.0
- steering: float = 0.0

