## Node2D <- CanvasItem

A 2D game object, with a transform (position, rotation, and scale). All 2D nodes, including physics objects and sprites, inherit from Node2D. Use Node2D as a parent node to move, scale and rotate children in a 2D project. Also gives control of the node's render order. **Note:** Since both Node2D and Control inherit from CanvasItem, they share several concepts from the class such as the `CanvasItem.z_index` and `CanvasItem.visible` properties.

**Props:**
- global_position: Vector2
- global_rotation: float
- global_rotation_degrees: float
- global_scale: Vector2
- global_skew: float
- global_transform: Transform2D
- position: Vector2 = Vector2(0, 0)
- rotation: float = 0.0
- rotation_degrees: float
- scale: Vector2 = Vector2(1, 1)
- skew: float = 0.0
- transform: Transform2D

**Methods:**
- apply_scale(ratio: Vector2)
- get_angle_to(point: Vector2) -> float
- get_relative_transform_to_parent(parent: Node) -> Transform2D
- global_translate(offset: Vector2)
- look_at(point: Vector2)
- move_local_x(delta: float, scaled: bool = false)
- move_local_y(delta: float, scaled: bool = false)
- rotate(radians: float)
- to_global(local_point: Vector2) -> Vector2
- to_local(global_point: Vector2) -> Vector2
- translate(offset: Vector2)

