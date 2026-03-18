## Container <- Control

Base class for all GUI containers. A Container automatically arranges its child controls in a certain way. This class can be inherited to make custom container types.

**Props:**
- accessibility_region: bool = false
- mouse_filter: int (Control.MouseFilter) = 1

**Methods:**
- fit_child_in_rect(child: Control, rect: Rect2)
- queue_sort()

**Signals:**
- pre_sort_children
- sort_children

**Enums:**
**Constants:** NOTIFICATION_PRE_SORT_CHILDREN=50, NOTIFICATION_SORT_CHILDREN=51

