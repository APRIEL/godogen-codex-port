## NavigationPathQueryResult2D <- RefCounted

This class stores the result of a 2D navigation path query from the NavigationServer2D.

**Props:**
- path: PackedVector2Array = PackedVector2Array()
- path_length: float = 0.0
- path_owner_ids: PackedInt64Array = PackedInt64Array()
- path_rids: RID[] = []
- path_types: PackedInt32Array = PackedInt32Array()

**Methods:**
- reset()

**Enums:**
**PathSegmentType:** PATH_SEGMENT_TYPE_REGION=0, PATH_SEGMENT_TYPE_LINK=1

