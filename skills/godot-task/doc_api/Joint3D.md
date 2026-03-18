## Joint3D <- Node3D

Abstract base class for all joints in 3D physics. 3D joints bind together two physics bodies (`node_a` and `node_b`) and apply a constraint. If only one body is defined, it is attached to a fixed StaticBody3D without collision shapes.

**Props:**
- exclude_nodes_from_collision: bool = true
- node_a: NodePath = NodePath("")
- node_b: NodePath = NodePath("")
- solver_priority: int = 1

**Methods:**
- get_rid() -> RID

