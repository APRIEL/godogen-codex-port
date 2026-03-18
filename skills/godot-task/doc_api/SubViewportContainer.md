## SubViewportContainer <- Container

A container that displays the contents of underlying SubViewport child nodes. It uses the combined size of the SubViewports as minimum size, unless `stretch` is enabled. **Note:** Changing a SubViewportContainer's `Control.scale` will cause its contents to appear distorted. To change its visual size without causing distortion, adjust the node's margins instead (if it's not already in a container). **Note:** The SubViewportContainer forwards mouse-enter and mouse-exit notifications to its sub-viewports.

**Props:**
- focus_mode: int (Control.FocusMode) = 1
- mouse_target: bool = false
- stretch: bool = false
- stretch_shrink: int = 1

