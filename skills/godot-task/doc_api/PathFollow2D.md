## PathFollow2D <- Node2D

This node takes its parent Path2D, and returns the coordinates of a point within it, given a distance from the first vertex. It is useful for making other nodes follow a path, without coding the movement pattern. For that, the nodes must be children of this node. The descendant nodes will then move accordingly when setting the `progress` in this node.

**Props:**
- cubic_interp: bool = true
- h_offset: float = 0.0
- loop: bool = true
- progress: float = 0.0
- progress_ratio: float = 0.0
- rotates: bool = true
- v_offset: float = 0.0

