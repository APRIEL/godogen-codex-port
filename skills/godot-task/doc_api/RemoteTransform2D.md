## RemoteTransform2D <- Node2D

RemoteTransform2D pushes its own Transform2D to another Node2D derived node (called the remote node) in the scene. It can be set to update another node's position, rotation and/or scale. It can use either global or local coordinates.

**Props:**
- remote_path: NodePath = NodePath("")
- update_position: bool = true
- update_rotation: bool = true
- update_scale: bool = true
- use_global_coordinates: bool = true

**Methods:**
- force_update_cache()

