## Joint2D <- Node2D

Abstract base class for all joints in 2D physics. 2D joints bind together two physics bodies (`node_a` and `node_b`) and apply a constraint.

**Props:**
- bias: float = 0.0
- disable_collision: bool = true
- node_a: NodePath = NodePath("")
- node_b: NodePath = NodePath("")

**Methods:**
- get_rid() -> RID

