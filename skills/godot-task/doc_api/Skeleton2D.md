## Skeleton2D <- Node2D

Skeleton2D parents a hierarchy of Bone2D nodes. It holds a reference to each Bone2D's rest pose and acts as a single point of access to its bones. To set up different types of inverse kinematics for the given Skeleton2D, a SkeletonModificationStack2D should be created. The inverse kinematics be applied by increasing `SkeletonModificationStack2D.modification_count` and creating the desired number of modifications.

**Methods:**
- execute_modifications(delta: float, execution_mode: int)
- get_bone(idx: int) -> Bone2D
- get_bone_count() -> int
- get_bone_local_pose_override(bone_idx: int) -> Transform2D
- get_modification_stack() -> SkeletonModificationStack2D
- get_skeleton() -> RID
- set_bone_local_pose_override(bone_idx: int, override_pose: Transform2D, strength: float, persistent: bool)
- set_modification_stack(modification_stack: SkeletonModificationStack2D)

**Signals:**
- bone_setup_changed

