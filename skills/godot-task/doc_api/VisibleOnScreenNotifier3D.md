## VisibleOnScreenNotifier3D <- VisualInstance3D

VisibleOnScreenNotifier3D represents a box-shaped region of 3D space. When any part of this region becomes visible on screen or in a Camera3D's view, it will emit a `screen_entered` signal, and likewise it will emit a `screen_exited` signal when no part of it remains visible. If you want a node to be enabled automatically when this region is visible on screen, use VisibleOnScreenEnabler3D. **Note:** VisibleOnScreenNotifier3D uses an approximate heuristic that doesn't take walls and other occlusion into account, unless occlusion culling is used. It also won't function unless `Node3D.visible` is set to `true`.

**Props:**
- aabb: AABB = AABB(-1, -1, -1, 2, 2, 2)

**Methods:**
- is_on_screen() -> bool

**Signals:**
- screen_entered
- screen_exited

