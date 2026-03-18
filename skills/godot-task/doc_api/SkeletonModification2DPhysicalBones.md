## SkeletonModification2DPhysicalBones <- SkeletonModification2D

This modification takes the transforms of PhysicalBone2D nodes and applies them to Bone2D nodes. This allows the Bone2D nodes to react to physics thanks to the linked PhysicalBone2D nodes.

**Props:**
- physical_bone_chain_length: int = 0

**Methods:**
- fetch_physical_bones()
- get_physical_bone_node(joint_idx: int) -> NodePath
- set_physical_bone_node(joint_idx: int, physicalbone2d_node: NodePath)
- start_simulation(bones: StringName[] = [])
- stop_simulation(bones: StringName[] = [])

