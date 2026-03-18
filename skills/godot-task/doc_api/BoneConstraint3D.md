## BoneConstraint3D <- SkeletonModifier3D

Base class of SkeletonModifier3D that modifies the bone set in `set_apply_bone` based on the transform of the bone retrieved by `get_reference_bone`.

**Methods:**
- clear_setting()
- get_amount(index: int) -> float
- get_apply_bone(index: int) -> int
- get_apply_bone_name(index: int) -> String
- get_reference_bone(index: int) -> int
- get_reference_bone_name(index: int) -> String
- get_reference_node(index: int) -> NodePath
- get_reference_type(index: int) -> int
- get_setting_count() -> int
- set_amount(index: int, amount: float)
- set_apply_bone(index: int, bone: int)
- set_apply_bone_name(index: int, bone_name: String)
- set_reference_bone(index: int, bone: int)
- set_reference_bone_name(index: int, bone_name: String)
- set_reference_node(index: int, node: NodePath)
- set_reference_type(index: int, type: int)
- set_setting_count(count: int)

**Enums:**
**ReferenceType:** REFERENCE_TYPE_BONE=0, REFERENCE_TYPE_NODE=1

