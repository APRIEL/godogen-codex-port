## PhysicsTestMotionParameters3D <- RefCounted

By changing various properties of this object, such as the motion, you can configure the parameters for `PhysicsServer3D.body_test_motion`.

**Props:**
- collide_separation_ray: bool = false
- exclude_bodies: RID[] = []
- exclude_objects: int[] = []
- from: Transform3D = Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)
- margin: float = 0.001
- max_collisions: int = 1
- motion: Vector3 = Vector3(0, 0, 0)
- recovery_as_collision: bool = false

