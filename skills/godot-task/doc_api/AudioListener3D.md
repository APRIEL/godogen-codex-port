## AudioListener3D <- Node3D

Once added to the scene tree and enabled using `make_current`, this node will override the location sounds are heard from. This can be used to listen from a location different from the Camera3D.

**Props:**
- doppler_tracking: int (AudioListener3D.DopplerTracking) = 0

**Methods:**
- clear_current()
- get_listener_transform() -> Transform3D
- is_current() -> bool
- make_current()

**Enums:**
**DopplerTracking:** DOPPLER_TRACKING_DISABLED=0, DOPPLER_TRACKING_IDLE_STEP=1, DOPPLER_TRACKING_PHYSICS_STEP=2

