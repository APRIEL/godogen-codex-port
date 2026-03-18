## ParallaxBackground <- CanvasLayer

A ParallaxBackground uses one or more ParallaxLayer child nodes to create a parallax effect. Each ParallaxLayer can move at a different speed using `ParallaxLayer.motion_offset`. This creates an illusion of depth in a 2D game. If not used with a Camera2D, you must manually calculate the `scroll_offset`. **Note:** Each ParallaxBackground is drawn on one specific Viewport and cannot be shared between multiple Viewports, see `CanvasLayer.custom_viewport`. When using multiple Viewports, for example in a split-screen game, you need create an individual ParallaxBackground for each Viewport you want it to be drawn on.

**Props:**
- layer: int = -100
- scroll_base_offset: Vector2 = Vector2(0, 0)
- scroll_base_scale: Vector2 = Vector2(1, 1)
- scroll_ignore_camera_zoom: bool = false
- scroll_limit_begin: Vector2 = Vector2(0, 0)
- scroll_limit_end: Vector2 = Vector2(0, 0)
- scroll_offset: Vector2 = Vector2(0, 0)

