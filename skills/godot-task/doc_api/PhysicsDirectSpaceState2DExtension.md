## PhysicsDirectSpaceState2DExtension <- PhysicsDirectSpaceState2D

This class extends PhysicsDirectSpaceState2D by providing additional virtual methods that can be overridden. When these methods are overridden, they will be called instead of the internal methods of the physics server. Intended for use with GDExtension to create custom implementations of PhysicsDirectSpaceState2D.

**Methods:**
- is_body_excluded_from_query(body: RID) -> bool

