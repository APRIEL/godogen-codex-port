## ParallaxLayer <- Node2D

A ParallaxLayer must be the child of a ParallaxBackground node. Each ParallaxLayer can be set to move at different speeds relative to the camera movement or the `ParallaxBackground.scroll_offset` value. This node's children will be affected by its scroll offset. **Note:** Any changes to this node's position and scale made after it enters the scene will be ignored.

**Props:**
- motion_mirroring: Vector2 = Vector2(0, 0)
- motion_offset: Vector2 = Vector2(0, 0)
- motion_scale: Vector2 = Vector2(1, 1)
- physics_interpolation_mode: int (Node.PhysicsInterpolationMode) = 2

