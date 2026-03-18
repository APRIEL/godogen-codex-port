## PlaneMesh <- PrimitiveMesh

Class representing a planar PrimitiveMesh. This flat mesh does not have a thickness. By default, this mesh is aligned on the X and Z axes; this default rotation isn't suited for use with billboarded materials. For billboarded materials, change `orientation` to `FACE_Z`. **Note:** When using a large textured PlaneMesh (e.g. as a floor), you may stumble upon UV jittering issues depending on the camera angle. To solve this, increase `subdivide_depth` and `subdivide_width` until you no longer notice UV jittering.

**Props:**
- center_offset: Vector3 = Vector3(0, 0, 0)
- orientation: int (PlaneMesh.Orientation) = 1
- size: Vector2 = Vector2(2, 2)
- subdivide_depth: int = 0
- subdivide_width: int = 0

**Enums:**
**Orientation:** FACE_X=0, FACE_Y=1, FACE_Z=2

