## NavigationPathQueryResult3D <- RefCounted

This class stores the result of a 3D navigation path query from the NavigationServer3D.

**Props:**
- path: PackedVector3Array = PackedVector3Array()
- path_length: float = 0.0
- path_owner_ids: PackedInt64Array = PackedInt64Array()
- path_rids: RID[] = []
- path_types: PackedInt32Array = PackedInt32Array()

**Methods:**
- reset()

**Enums:**
**PathSegmentType:** PATH_SEGMENT_TYPE_REGION=0, PATH_SEGMENT_TYPE_LINK=1

