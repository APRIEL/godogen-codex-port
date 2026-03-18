## World3D <- Resource

Class that has everything pertaining to a world: A physics space, a visual scenario, and a sound space. 3D nodes register their resources into the current 3D world.

**Props:**
- camera_attributes: CameraAttributes
- direct_space_state: PhysicsDirectSpaceState3D
- environment: Environment
- fallback_environment: Environment
- navigation_map: RID
- scenario: RID
- space: RID

