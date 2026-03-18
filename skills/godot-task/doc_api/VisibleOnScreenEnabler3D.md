## VisibleOnScreenEnabler3D <- VisibleOnScreenNotifier3D

VisibleOnScreenEnabler3D contains a box-shaped region of 3D space and a target node. The target node will be automatically enabled (via its `Node.process_mode` property) when any part of this region becomes visible on the screen, and automatically disabled otherwise. This can for example be used to activate enemies only when the player approaches them. See VisibleOnScreenNotifier3D if you only want to be notified when the region is visible on screen. **Note:** VisibleOnScreenEnabler3D uses an approximate heuristic that doesn't take walls and other occlusion into account, unless occlusion culling is used. It also won't function unless `Node3D.visible` is set to `true`.

**Props:**
- enable_mode: int (VisibleOnScreenEnabler3D.EnableMode) = 0
- enable_node_path: NodePath = NodePath("..")

**Enums:**
**EnableMode:** ENABLE_MODE_INHERIT=0, ENABLE_MODE_ALWAYS=1, ENABLE_MODE_WHEN_PAUSED=2

