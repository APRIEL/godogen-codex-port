## CameraFeed <- RefCounted

A camera feed gives you access to a single physical camera attached to your device. When enabled, Godot will start capturing frames from the camera which can then be used. See also CameraServer. **Note:** Many cameras will return YCbCr images which are split into two textures and need to be combined in a shader. Godot does this automatically for you if you set the environment to show the camera image in the background. **Note:** This class is currently only implemented on Linux, Android, macOS, and iOS. On other platforms no CameraFeeds will be available. To get a CameraFeed on iOS, the camera plugin from is required.

**Props:**
- feed_is_active: bool = false
- feed_transform: Transform2D = Transform2D(1, 0, 0, -1, 0, 1)
- formats: Array = []

**Methods:**
- get_datatype() -> int
- get_id() -> int
- get_name() -> String
- get_position() -> int
- get_texture_tex_id(feed_image_type: int) -> int
- set_external(width: int, height: int)
- set_format(index: int, parameters: Dictionary) -> bool
- set_name(name: String)
- set_position(position: int)
- set_rgb_image(rgb_image: Image)
- set_ycbcr_image(ycbcr_image: Image)
- set_ycbcr_images(y_image: Image, cbcr_image: Image)

**Signals:**
- format_changed
- frame_changed

**Enums:**
**FeedDataType:** FEED_NOIMAGE=0, FEED_RGB=1, FEED_YCBCR=2, FEED_YCBCR_SEP=3, FEED_EXTERNAL=4
**FeedPosition:** FEED_UNSPECIFIED=0, FEED_FRONT=1, FEED_BACK=2

