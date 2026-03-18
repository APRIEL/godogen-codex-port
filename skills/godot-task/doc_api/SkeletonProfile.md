## SkeletonProfile <- Resource

This resource is used in EditorScenePostImport. Some parameters are referring to bones in Skeleton3D, Skin, Animation, and some other nodes are rewritten based on the parameters of SkeletonProfile. **Note:** These parameters need to be set only when creating a custom profile. In SkeletonProfileHumanoid, they are defined internally as read-only values.

**Props:**
- bone_size: int = 0
- group_size: int = 0
- root_bone: StringName = &""
- scale_base_bone: StringName = &""

**Methods:**
- find_bone(bone_name: StringName) -> int
- get_bone_name(bone_idx: int) -> StringName
- get_bone_parent(bone_idx: int) -> StringName
- get_bone_tail(bone_idx: int) -> StringName
- get_group(bone_idx: int) -> StringName
- get_group_name(group_idx: int) -> StringName
- get_handle_offset(bone_idx: int) -> Vector2
- get_reference_pose(bone_idx: int) -> Transform3D
- get_tail_direction(bone_idx: int) -> int
- get_texture(group_idx: int) -> Texture2D
- is_required(bone_idx: int) -> bool
- set_bone_name(bone_idx: int, bone_name: StringName)
- set_bone_parent(bone_idx: int, bone_parent: StringName)
- set_bone_tail(bone_idx: int, bone_tail: StringName)
- set_group(bone_idx: int, group: StringName)
- set_group_name(group_idx: int, group_name: StringName)
- set_handle_offset(bone_idx: int, handle_offset: Vector2)
- set_reference_pose(bone_idx: int, bone_name: Transform3D)
- set_required(bone_idx: int, required: bool)
- set_tail_direction(bone_idx: int, tail_direction: int)
- set_texture(group_idx: int, texture: Texture2D)

**Signals:**
- profile_updated

**Enums:**
**TailDirection:** TAIL_DIRECTION_AVERAGE_CHILDREN=0, TAIL_DIRECTION_SPECIFIC_CHILD=1, TAIL_DIRECTION_END=2

