## SubViewport <- Viewport

SubViewport Isolates a rectangular region of a scene to be displayed independently. This can be used, for example, to display UI in 3D space. **Note:** SubViewport is a Viewport that isn't a Window, i.e. it doesn't draw anything by itself. To display anything, SubViewport must have a non-zero size and be either put inside a SubViewportContainer or assigned to a ViewportTexture. **Note:** InputEvents are not passed to a standalone SubViewport by default. To ensure InputEvent propagation, a SubViewport can be placed inside of a SubViewportContainer.

**Props:**
- render_target_clear_mode: int (SubViewport.ClearMode) = 0
- render_target_update_mode: int (SubViewport.UpdateMode) = 2
- size: Vector2i = Vector2i(512, 512)
- size_2d_override: Vector2i = Vector2i(0, 0)
- size_2d_override_stretch: bool = false

**Enums:**
**ClearMode:** CLEAR_MODE_ALWAYS=0, CLEAR_MODE_NEVER=1, CLEAR_MODE_ONCE=2
**UpdateMode:** UPDATE_DISABLED=0, UPDATE_ONCE=1, UPDATE_WHEN_VISIBLE=2, UPDATE_WHEN_PARENT_VISIBLE=3, UPDATE_ALWAYS=4

