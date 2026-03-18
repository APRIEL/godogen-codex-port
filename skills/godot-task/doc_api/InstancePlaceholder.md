## InstancePlaceholder <- Node

Turning on the option **Load As Placeholder** for an instantiated scene in the editor causes it to be replaced by an InstancePlaceholder when running the game, this will not replace the node in the editor. This makes it possible to delay actually loading the scene until calling `create_instance`. This is useful to avoid loading large scenes all at once by loading parts of it selectively. **Note:** Like Node, InstancePlaceholder does not have a transform. This causes any child nodes to be positioned relatively to the Viewport origin, rather than their parent as displayed in the editor. Replacing the placeholder with a scene with a transform will transform children relatively to their parent again.

**Methods:**
- create_instance(replace: bool = false, custom_scene: PackedScene = null) -> Node
- get_instance_path() -> String
- get_stored_values(with_order: bool = false) -> Dictionary

