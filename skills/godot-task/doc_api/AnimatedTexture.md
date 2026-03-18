## AnimatedTexture <- Texture2D

AnimatedTexture is a resource format for frame-based animations, where multiple textures can be chained automatically with a predefined delay for each frame. Unlike AnimationPlayer or AnimatedSprite2D, it isn't a Node, but has the advantage of being usable anywhere a Texture2D resource can be used, e.g. in a TileSet. The playback of the animation is controlled by the `speed_scale` property, as well as each frame's duration (see `set_frame_duration`). The animation loops, i.e. it will restart at frame 0 automatically after playing the last frame. AnimatedTexture currently requires all frame textures to have the same size, otherwise the bigger ones will be cropped to match the smallest one. **Note:** AnimatedTexture doesn't support using AtlasTextures. Each frame needs to be a separate Texture2D. **Warning:** The current implementation is not efficient for the modern renderers.

**Props:**
- current_frame: int
- frames: int = 1
- one_shot: bool = false
- pause: bool = false
- resource_local_to_scene: bool = false
- speed_scale: float = 1.0

**Methods:**
- get_frame_duration(frame: int) -> float
- get_frame_texture(frame: int) -> Texture2D
- set_frame_duration(frame: int, duration: float)
- set_frame_texture(frame: int, texture: Texture2D)

**Enums:**
**Constants:** MAX_FRAMES=256

