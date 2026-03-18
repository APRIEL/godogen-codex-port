## VisibleOnScreenEnabler2D <- VisibleOnScreenNotifier2D

VisibleOnScreenEnabler2D contains a rectangular region of 2D space and a target node. The target node will be automatically enabled (via its `Node.process_mode` property) when any part of this region becomes visible on the screen, and automatically disabled otherwise. This can for example be used to activate enemies only when the player approaches them. See VisibleOnScreenNotifier2D if you only want to be notified when the region is visible on screen. **Note:** VisibleOnScreenEnabler2D uses the render culling code to determine whether it's visible on screen, so it won't function unless `CanvasItem.visible` is set to `true`.

**Props:**
- enable_mode: int (VisibleOnScreenEnabler2D.EnableMode) = 0
- enable_node_path: NodePath = NodePath("..")

**Enums:**
**EnableMode:** ENABLE_MODE_INHERIT=0, ENABLE_MODE_ALWAYS=1, ENABLE_MODE_WHEN_PAUSED=2

