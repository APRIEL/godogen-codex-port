## PathFollow3D <- Node3D

This node takes its parent Path3D, and returns the coordinates of a point within it, given a distance from the first vertex. It is useful for making other nodes follow a path, without coding the movement pattern. For that, the nodes must be children of this node. The descendant nodes will then move accordingly when setting the `progress` in this node.

**Props:**
- cubic_interp: bool = true
- h_offset: float = 0.0
- loop: bool = true
- progress: float = 0.0
- progress_ratio: float = 0.0
- rotation_mode: int (PathFollow3D.RotationMode) = 3
- tilt_enabled: bool = true
- use_model_front: bool = false
- v_offset: float = 0.0

**Methods:**
- correct_posture(transform: Transform3D, rotation_mode: int) -> Transform3D

**Enums:**
**RotationMode:** ROTATION_NONE=0, ROTATION_Y=1, ROTATION_XY=2, ROTATION_XYZ=3, ROTATION_ORIENTED=4

