## BoneAttachment3D <- Node3D

This node selects a bone in a Skeleton3D and attaches to it. This means that the BoneAttachment3D node will either dynamically copy or override the 3D transform of the selected bone.

**Props:**
- bone_idx: int = -1
- bone_name: String = ""
- external_skeleton: NodePath
- override_pose: bool = false
- physics_interpolation_mode: int (Node.PhysicsInterpolationMode) = 2
- use_external_skeleton: bool = false

**Methods:**
- get_skeleton() -> Skeleton3D
- on_skeleton_update()

