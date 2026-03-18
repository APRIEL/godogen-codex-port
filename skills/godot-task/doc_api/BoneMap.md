## BoneMap <- Resource

This class contains a dictionary that uses a list of bone names in SkeletonProfile as key names. By assigning the actual Skeleton3D bone name as the key value, it maps the Skeleton3D to the SkeletonProfile.

**Props:**
- profile: SkeletonProfile

**Methods:**
- find_profile_bone_name(skeleton_bone_name: StringName) -> StringName
- get_skeleton_bone_name(profile_bone_name: StringName) -> StringName
- set_skeleton_bone_name(profile_bone_name: StringName, skeleton_bone_name: StringName)

**Signals:**
- bone_map_updated
- profile_updated

