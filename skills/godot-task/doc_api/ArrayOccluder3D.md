## ArrayOccluder3D <- Occluder3D

ArrayOccluder3D stores an arbitrary 3D polygon shape that can be used by the engine's occlusion culling system. This is analogous to ArrayMesh, but for occluders. See OccluderInstance3D's documentation for instructions on setting up occlusion culling.

**Props:**
- indices: PackedInt32Array = PackedInt32Array()
- vertices: PackedVector3Array = PackedVector3Array()

**Methods:**
- set_arrays(vertices: PackedVector3Array, indices: PackedInt32Array)

