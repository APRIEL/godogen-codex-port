## AnimationLibrary <- Resource

An animation library stores a set of animations accessible through StringName keys, for use with AnimationPlayer nodes.

**Methods:**
- add_animation(name: StringName, animation: Animation) -> int
- get_animation(name: StringName) -> Animation
- get_animation_list() -> StringName[]
- get_animation_list_size() -> int
- has_animation(name: StringName) -> bool
- remove_animation(name: StringName)
- rename_animation(name: StringName, newname: StringName)

**Signals:**
- animation_added(name: StringName)
- animation_changed(name: StringName)
- animation_removed(name: StringName)
- animation_renamed(name: StringName, to_name: StringName)

