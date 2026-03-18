## CanvasLayer <- Node

CanvasItem-derived nodes that are direct or indirect children of a CanvasLayer will be drawn in that layer. The layer is a numeric index that defines the draw order. The default 2D scene renders with index `0`, so a CanvasLayer with index `-1` will be drawn below, and a CanvasLayer with index `1` will be drawn above. This order will hold regardless of the `CanvasItem.z_index` of the nodes within each layer. CanvasLayers can be hidden and they can also optionally follow the viewport. This makes them useful for HUDs like health bar overlays (on layers `1` and higher) or backgrounds (on layers `-1` and lower). **Note:** Embedded Windows are placed on layer `1024`. CanvasItems on layers `1025` and higher appear in front of embedded windows. **Note:** Each CanvasLayer is drawn on one specific Viewport and cannot be shared between multiple Viewports, see `custom_viewport`. When using multiple Viewports, for example in a split-screen game, you need to create an individual CanvasLayer for each Viewport you want it to be drawn on.

**Props:**
- custom_viewport: Node
- follow_viewport_enabled: bool = false
- follow_viewport_scale: float = 1.0
- layer: int = 1
- offset: Vector2 = Vector2(0, 0)
- rotation: float = 0.0
- scale: Vector2 = Vector2(1, 1)
- transform: Transform2D = Transform2D(1, 0, 0, 1, 0, 0)
- visible: bool = true

**Methods:**
- get_canvas() -> RID
- get_final_transform() -> Transform2D
- hide()
- show()

**Signals:**
- visibility_changed

