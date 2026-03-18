## SpriteFrames <- Resource

Sprite frame library for an AnimatedSprite2D or AnimatedSprite3D node. Contains frames and animation data for playback.

**Methods:**
- add_animation(anim: StringName)
- add_frame(anim: StringName, texture: Texture2D, duration: float = 1.0, at_position: int = -1)
- clear(anim: StringName)
- clear_all()
- duplicate_animation(anim_from: StringName, anim_to: StringName)
- get_animation_loop(anim: StringName) -> bool
- get_animation_names() -> PackedStringArray
- get_animation_speed(anim: StringName) -> float
- get_frame_count(anim: StringName) -> int
- get_frame_duration(anim: StringName, idx: int) -> float
- get_frame_texture(anim: StringName, idx: int) -> Texture2D
- has_animation(anim: StringName) -> bool
- remove_animation(anim: StringName)
- remove_frame(anim: StringName, idx: int)
- rename_animation(anim: StringName, newname: StringName)
- set_animation_loop(anim: StringName, loop: bool)
- set_animation_speed(anim: StringName, fps: float)
- set_frame(anim: StringName, idx: int, texture: Texture2D, duration: float = 1.0)

