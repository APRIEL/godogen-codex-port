## Bone2D <- Node2D

A hierarchy of Bone2Ds can be bound to a Skeleton2D to control and animate other Node2D nodes. You can use Bone2D and Skeleton2D nodes to animate 2D meshes created with the Polygon2D UV editor. Each bone has a `rest` transform that you can reset to with `apply_rest`. These rest poses are relative to the bone's parent. If in the editor, you can set the rest pose of an entire skeleton using a menu option, from the code, you need to iterate over the bones to set their individual rest poses.

**Props:**
- rest: Transform2D = Transform2D(0, 0, 0, 0, 0, 0)

**Methods:**
- apply_rest()
- get_autocalculate_length_and_angle() -> bool
- get_bone_angle() -> float
- get_index_in_skeleton() -> int
- get_length() -> float
- get_skeleton_rest() -> Transform2D
- set_autocalculate_length_and_angle(auto_calculate: bool)
- set_bone_angle(angle: float)
- set_length(length: float)

