## CharacterBody3D <- PhysicsBody3D

CharacterBody3D is a specialized class for physics bodies that are meant to be user-controlled. They are not affected by physics at all, but they affect other physics bodies in their path. They are mainly used to provide high-level API to move objects with wall and slope detection (`move_and_slide` method) in addition to the general collision detection provided by `PhysicsBody3D.move_and_collide`. This makes it useful for highly configurable physics bodies that must move in specific ways and collide with the world, as is often the case with user-controlled characters. For game objects that don't require complex movement or collision detection, such as moving platforms, AnimatableBody3D is simpler to configure.

**Props:**
- floor_block_on_wall: bool = true
- floor_constant_speed: bool = false
- floor_max_angle: float = 0.7853982
- floor_snap_length: float = 0.1
- floor_stop_on_slope: bool = true
- max_slides: int = 6
- motion_mode: int (CharacterBody3D.MotionMode) = 0
- platform_floor_layers: int = 4294967295
- platform_on_leave: int (CharacterBody3D.PlatformOnLeave) = 0
- platform_wall_layers: int = 0
- safe_margin: float = 0.001
- slide_on_ceiling: bool = true
- up_direction: Vector3 = Vector3(0, 1, 0)
- velocity: Vector3 = Vector3(0, 0, 0)
- wall_min_slide_angle: float = 0.2617994

**Methods:**
- apply_floor_snap()
- get_floor_angle(up_direction: Vector3 = Vector3(0, 1, 0)) -> float
- get_floor_normal() -> Vector3
- get_last_motion() -> Vector3
- get_last_slide_collision() -> KinematicCollision3D
- get_platform_angular_velocity() -> Vector3
- get_platform_velocity() -> Vector3
- get_position_delta() -> Vector3
- get_real_velocity() -> Vector3
- get_slide_collision(slide_idx: int) -> KinematicCollision3D
- get_slide_collision_count() -> int
- get_wall_normal() -> Vector3
- is_on_ceiling() -> bool
- is_on_ceiling_only() -> bool
- is_on_floor() -> bool
- is_on_floor_only() -> bool
- is_on_wall() -> bool
- is_on_wall_only() -> bool
- move_and_slide() -> bool

**Enums:**
**MotionMode:** MOTION_MODE_GROUNDED=0, MOTION_MODE_FLOATING=1
**PlatformOnLeave:** PLATFORM_ON_LEAVE_ADD_VELOCITY=0, PLATFORM_ON_LEAVE_ADD_UPWARD_VELOCITY=1, PLATFORM_ON_LEAVE_DO_NOTHING=2

