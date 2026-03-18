## PhysicalBone2D <- RigidBody2D

The PhysicalBone2D node is a RigidBody2D-based node that can be used to make Bone2Ds in a Skeleton2D react to physics. **Note:** To make the Bone2Ds visually follow the PhysicalBone2D node, use a SkeletonModification2DPhysicalBones modification on the Skeleton2D parent. **Note:** The PhysicalBone2D node does not automatically create a Joint2D node to keep PhysicalBone2D nodes together. They must be created manually. For most cases, you want to use a PinJoint2D node. The PhysicalBone2D node will automatically configure the Joint2D node once it's been added as a child node.

**Props:**
- auto_configure_joint: bool = true
- bone2d_index: int = -1
- bone2d_nodepath: NodePath = NodePath("")
- follow_bone_when_simulating: bool = false
- simulate_physics: bool = false

**Methods:**
- get_joint() -> Joint2D
- is_simulating_physics() -> bool

