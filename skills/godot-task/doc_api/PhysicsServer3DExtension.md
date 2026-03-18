## PhysicsServer3DExtension <- PhysicsServer3D

This class extends PhysicsServer3D by providing additional virtual methods that can be overridden. When these methods are overridden, they will be called instead of the internal methods of the physics server. Intended for use with GDExtension to create custom implementations of PhysicsServer3D.

**Methods:**
- body_test_motion_is_excluding_body(body: RID) -> bool
- body_test_motion_is_excluding_object(object: int) -> bool

