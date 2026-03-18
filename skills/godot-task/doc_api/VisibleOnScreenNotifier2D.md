## VisibleOnScreenNotifier2D <- Node2D

VisibleOnScreenNotifier2D represents a rectangular region of 2D space. When any part of this region becomes visible on screen or in a viewport, it will emit a `screen_entered` signal, and likewise it will emit a `screen_exited` signal when no part of it remains visible. If you want a node to be enabled automatically when this region is visible on screen, use VisibleOnScreenEnabler2D. **Note:** VisibleOnScreenNotifier2D uses the render culling code to determine whether it's visible on screen, so it won't function unless `CanvasItem.visible` is set to `true`.

**Props:**
- rect: Rect2 = Rect2(-10, -10, 20, 20)
- show_rect: bool = true

**Methods:**
- is_on_screen() -> bool

**Signals:**
- screen_entered
- screen_exited

