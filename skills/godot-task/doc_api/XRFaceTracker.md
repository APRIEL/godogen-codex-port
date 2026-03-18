## XRFaceTracker <- XRTracker

An instance of this object represents a tracked face and its corresponding blend shapes. The blend shapes come from the standard, and contain extended details and visuals for each blend shape. Additionally the page documents the relationship between Unified Expressions and other standards. As face trackers are turned on they are registered with the XRServer.

**Props:**
- blend_shapes: PackedFloat32Array = PackedFloat32Array()
- type: int (XRServer.TrackerType) = 64

**Methods:**
- get_blend_shape(blend_shape: int) -> float
- set_blend_shape(blend_shape: int, weight: float)

**Enums:**
**BlendShapeEntry:** FT_EYE_LOOK_OUT_RIGHT=0, FT_EYE_LOOK_IN_RIGHT=1, FT_EYE_LOOK_UP_RIGHT=2, FT_EYE_LOOK_DOWN_RIGHT=3, FT_EYE_LOOK_OUT_LEFT=4, FT_EYE_LOOK_IN_LEFT=5, FT_EYE_LOOK_UP_LEFT=6, FT_EYE_LOOK_DOWN_LEFT=7, FT_EYE_CLOSED_RIGHT=8, FT_EYE_CLOSED_LEFT=9, ...

