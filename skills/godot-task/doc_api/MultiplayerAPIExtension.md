## MultiplayerAPIExtension <- MultiplayerAPI

This class can be used to extend or replace the default MultiplayerAPI implementation via script or extensions. The following example extend the default implementation (SceneMultiplayer) by logging every RPC being made, and every object being configured for replication. Then in your main scene or in an autoload call `SceneTree.set_multiplayer` to start using your custom MultiplayerAPI: Native extensions can alternatively use the `MultiplayerAPI.set_default_interface` method during initialization to configure themselves as the default implementation.

