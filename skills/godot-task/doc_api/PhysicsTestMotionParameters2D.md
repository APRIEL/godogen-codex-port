## PhysicsTestMotionParameters2D <- RefCounted

By changing various properties of this object, such as the motion, you can configure the parameters for `PhysicsServer2D.body_test_motion`.

**Props:**
- collide_separation_ray: bool = false
- exclude_bodies: RID[] = []
- exclude_objects: int[] = []
- from: Transform2D = Transform2D(1, 0, 0, 1, 0, 0)
- margin: float = 0.08
- motion: Vector2 = Vector2(0, 0)
- recovery_as_collision: bool = false

