## SplineIK3D <- ChainIK3D

A SkeletonModifier3D for aligning bones along a Path3D. The smoothness of the fitting depends on the `Curve3D.bake_interval`. If you want the Path3D to attach to a specific bone, it is recommended to place a ModifierBoneTarget3D before the SplineIK3D in the SkeletonModifier3D list (children of the Skeleton3D), and then place a Path3D as the ModifierBoneTarget3D's child. Bone twist is determined based on the `Curve3D.get_point_tilt`. If the root bone joint and the start point of the Curve3D are separated, it assumes that there is a linear line segment between them. This means that the vector pointing toward the start point of the Curve3D takes precedence over the shortest intersection point along the Curve3D. If the end bone joint exceeds the path length, it is bent as close as possible to the end point of the Curve3D.

**Props:**
- setting_count: int = 0

**Methods:**
- get_path_3d(index: int) -> NodePath
- get_tilt_fade_in(index: int) -> int
- get_tilt_fade_out(index: int) -> int
- is_tilt_enabled(index: int) -> bool
- set_path_3d(index: int, path_3d: NodePath)
- set_tilt_enabled(index: int, enabled: bool)
- set_tilt_fade_in(index: int, size: int)
- set_tilt_fade_out(index: int, size: int)

