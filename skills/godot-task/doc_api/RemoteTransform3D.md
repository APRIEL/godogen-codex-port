## RemoteTransform3D <- Node3D

RemoteTransform3D pushes its own Transform3D to another Node3D derived Node (called the remote node) in the scene. It can be set to update another Node's position, rotation and/or scale. It can use either global or local coordinates.

**Props:**
- remote_path: NodePath = NodePath("")
- update_position: bool = true
- update_rotation: bool = true
- update_scale: bool = true
- use_global_coordinates: bool = true

**Methods:**
- force_update_cache()

