## SkeletonModification2D <- Resource

This resource provides an interface that can be expanded so code that operates on Bone2D nodes in a Skeleton2D can be mixed and matched together to create complex interactions. This is used to provide Godot with a flexible and powerful Inverse Kinematics solution that can be adapted for many different uses.

**Props:**
- enabled: bool = true
- execution_mode: int = 0

**Methods:**
- clamp_angle(angle: float, min: float, max: float, invert: bool) -> float
- get_editor_draw_gizmo() -> bool
- get_is_setup() -> bool
- get_modification_stack() -> SkeletonModificationStack2D
- set_editor_draw_gizmo(draw_gizmo: bool)
- set_is_setup(is_setup: bool)

