## TileSetScenesCollectionSource <- TileSetSource

When placed on a TileMapLayer, tiles from TileSetScenesCollectionSource will automatically instantiate an associated scene at the cell's position in the TileMapLayer. Scenes are instantiated as children of the TileMapLayer after it enters the tree, at the end of the frame (their creation is deferred). If you add/remove a scene tile in the TileMapLayer that is already inside the tree, the TileMapLayer will automatically instantiate/free the scene accordingly. **Note:** Scene tiles all occupy one tile slot and instead use alternate tile ID to identify scene index. `TileSetSource.get_tiles_count` will always return `1`. Use `get_scene_tiles_count` to get a number of scenes in a TileSetScenesCollectionSource. Use this code if you want to find the scene path at a given tile in TileMapLayer:

**Methods:**
- create_scene_tile(packed_scene: PackedScene, id_override: int = -1) -> int
- get_next_scene_tile_id() -> int
- get_scene_tile_display_placeholder(id: int) -> bool
- get_scene_tile_id(index: int) -> int
- get_scene_tile_scene(id: int) -> PackedScene
- get_scene_tiles_count() -> int
- has_scene_tile_id(id: int) -> bool
- remove_scene_tile(id: int)
- set_scene_tile_display_placeholder(id: int, display_placeholder: bool)
- set_scene_tile_id(id: int, new_id: int)
- set_scene_tile_scene(id: int, packed_scene: PackedScene)

