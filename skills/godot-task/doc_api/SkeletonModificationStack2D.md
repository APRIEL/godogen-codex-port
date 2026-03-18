## SkeletonModificationStack2D <- Resource

This resource is used by the Skeleton and holds a stack of SkeletonModification2Ds. This controls the order of the modifications and how they are applied. Modification order is especially important for full-body IK setups, as you need to execute the modifications in the correct order to get the desired results. For example, you want to execute a modification on the spine *before* the arms on a humanoid skeleton. This resource also controls how strongly all of the modifications are applied to the Skeleton2D.

**Props:**
- enabled: bool = false
- modification_count: int = 0
- strength: float = 1.0

**Methods:**
- add_modification(modification: SkeletonModification2D)
- delete_modification(mod_idx: int)
- enable_all_modifications(enabled: bool)
- execute(delta: float, execution_mode: int)
- get_is_setup() -> bool
- get_modification(mod_idx: int) -> SkeletonModification2D
- get_skeleton() -> Skeleton2D
- set_modification(mod_idx: int, modification: SkeletonModification2D)
- setup()

