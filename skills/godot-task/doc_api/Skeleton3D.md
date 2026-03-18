## Skeleton3D <- Node3D

Skeleton3D provides an interface for managing a hierarchy of bones, including pose, rest and animation (see Animation). It can also use ragdoll physics. The overall transform of a bone with respect to the skeleton is determined by bone pose. Bone rest defines the initial transform of the bone pose. Note that "global pose" below refers to the overall transform of the bone with respect to skeleton, so it is not the actual global/world transform of the bone.

**Props:**
- animate_physical_bones: bool = true
- modifier_callback_mode_process: int (Skeleton3D.ModifierCallbackModeProcess) = 1
- motion_scale: float = 1.0
- show_rest_only: bool = false

**Methods:**
- add_bone(name: String) -> int
- advance(delta: float)
- clear_bones()
- clear_bones_global_pose_override()
- create_skin_from_rest_transforms() -> Skin
- find_bone(name: String) -> int
- force_update_all_bone_transforms()
- force_update_bone_child_transform(bone_idx: int)
- get_bone_children(bone_idx: int) -> PackedInt32Array
- get_bone_count() -> int
- get_bone_global_pose(bone_idx: int) -> Transform3D
- get_bone_global_pose_no_override(bone_idx: int) -> Transform3D
- get_bone_global_pose_override(bone_idx: int) -> Transform3D
- get_bone_global_rest(bone_idx: int) -> Transform3D
- get_bone_meta(bone_idx: int, key: StringName) -> Variant
- get_bone_meta_list(bone_idx: int) -> StringName[]
- get_bone_name(bone_idx: int) -> String
- get_bone_parent(bone_idx: int) -> int
- get_bone_pose(bone_idx: int) -> Transform3D
- get_bone_pose_position(bone_idx: int) -> Vector3
- get_bone_pose_rotation(bone_idx: int) -> Quaternion
- get_bone_pose_scale(bone_idx: int) -> Vector3
- get_bone_rest(bone_idx: int) -> Transform3D
- get_concatenated_bone_names() -> StringName
- get_parentless_bones() -> PackedInt32Array
- get_version() -> int
- has_bone_meta(bone_idx: int, key: StringName) -> bool
- is_bone_enabled(bone_idx: int) -> bool
- localize_rests()
- physical_bones_add_collision_exception(exception: RID)
- physical_bones_remove_collision_exception(exception: RID)
- physical_bones_start_simulation(bones: StringName[] = [])
- physical_bones_stop_simulation()
- register_skin(skin: Skin) -> SkinReference
- reset_bone_pose(bone_idx: int)
- reset_bone_poses()
- set_bone_enabled(bone_idx: int, enabled: bool = true)
- set_bone_global_pose(bone_idx: int, pose: Transform3D)
- set_bone_global_pose_override(bone_idx: int, pose: Transform3D, amount: float, persistent: bool = false)
- set_bone_meta(bone_idx: int, key: StringName, value: Variant)
- set_bone_name(bone_idx: int, name: String)
- set_bone_parent(bone_idx: int, parent_idx: int)
- set_bone_pose(bone_idx: int, pose: Transform3D)
- set_bone_pose_position(bone_idx: int, position: Vector3)
- set_bone_pose_rotation(bone_idx: int, rotation: Quaternion)
- set_bone_pose_scale(bone_idx: int, scale: Vector3)
- set_bone_rest(bone_idx: int, rest: Transform3D)
- unparent_bone_and_rest(bone_idx: int)

**Signals:**
- bone_enabled_changed(bone_idx: int)
- bone_list_changed
- pose_updated
- rest_updated
- show_rest_only_changed
- skeleton_updated

**Enums:**
**Constants:** NOTIFICATION_UPDATE_SKELETON=50
**ModifierCallbackModeProcess:** MODIFIER_CALLBACK_MODE_PROCESS_PHYSICS=0, MODIFIER_CALLBACK_MODE_PROCESS_IDLE=1, MODIFIER_CALLBACK_MODE_PROCESS_MANUAL=2

