## SoftBody3D <- MeshInstance3D

A deformable 3D physics mesh. Used to create elastic or deformable objects such as cloth, rubber, or other flexible materials. Additionally, SoftBody3D is subject to wind forces defined in Area3D (see `Area3D.wind_source_path`, `Area3D.wind_force_magnitude`, and `Area3D.wind_attenuation_factor`). **Note:** It's recommended to use Jolt Physics when using SoftBody3D instead of the default GodotPhysics3D, as Jolt Physics' soft body implementation is faster and more reliable. You can switch the physics engine using the `ProjectSettings.physics/3d/physics_engine` project setting.

**Props:**
- collision_layer: int = 1
- collision_mask: int = 1
- damping_coefficient: float = 0.01
- disable_mode: int (SoftBody3D.DisableMode) = 0
- drag_coefficient: float = 0.0
- linear_stiffness: float = 0.5
- parent_collision_ignore: NodePath = NodePath("")
- pressure_coefficient: float = 0.0
- ray_pickable: bool = true
- shrinking_factor: float = 0.0
- simulation_precision: int = 5
- total_mass: float = 1.0

**Methods:**
- add_collision_exception_with(body: Node)
- apply_central_force(force: Vector3)
- apply_central_impulse(impulse: Vector3)
- apply_force(point_index: int, force: Vector3)
- apply_impulse(point_index: int, impulse: Vector3)
- get_collision_exceptions() -> PhysicsBody3D[]
- get_collision_layer_value(layer_number: int) -> bool
- get_collision_mask_value(layer_number: int) -> bool
- get_physics_rid() -> RID
- get_point_transform(point_index: int) -> Vector3
- is_point_pinned(point_index: int) -> bool
- remove_collision_exception_with(body: Node)
- set_collision_layer_value(layer_number: int, value: bool)
- set_collision_mask_value(layer_number: int, value: bool)
- set_point_pinned(point_index: int, pinned: bool, attachment_path: NodePath = NodePath(""), insert_at: int = -1)

**Enums:**
**DisableMode:** DISABLE_MODE_REMOVE=0, DISABLE_MODE_KEEP_ACTIVE=1

