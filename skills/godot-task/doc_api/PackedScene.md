## PackedScene <- Resource

A simplified interface to a scene file. Provides access to operations and checks that can be performed on the scene resource itself. Can be used to save a node to a file. When saving, the node as well as all the nodes it owns get saved (see `Node.owner` property). **Note:** The node doesn't need to own itself. **Example:** Load a saved scene: **Example:** Save a node with different owners. The following example creates 3 objects: Node2D (`node`), RigidBody2D (`body`) and CollisionObject2D (`collision`). `collision` is a child of `body` which is a child of `node`. Only `body` is owned by `node` and `pack` will therefore only save those two nodes, but not `collision`.

**Methods:**
- can_instantiate() -> bool
- get_state() -> SceneState
- instantiate(edit_state: int = 0) -> Node
- pack(path: Node) -> int

**Enums:**
**GenEditState:** GEN_EDIT_STATE_DISABLED=0, GEN_EDIT_STATE_INSTANCE=1, GEN_EDIT_STATE_MAIN=2, GEN_EDIT_STATE_MAIN_INHERITED=3

