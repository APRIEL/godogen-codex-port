## ResourcePreloader <- Node

This node is used to preload sub-resources inside a scene, so when the scene is loaded, all the resources are ready to use and can be retrieved from the preloader. You can add the resources using the ResourcePreloader tab when the node is selected. GDScript has a simplified `@GDScript.preload` built-in method which can be used in most situations, leaving the use of ResourcePreloader for more advanced scenarios.

**Methods:**
- add_resource(name: StringName, resource: Resource)
- get_resource(name: StringName) -> Resource
- get_resource_list() -> PackedStringArray
- has_resource(name: StringName) -> bool
- remove_resource(name: StringName)
- rename_resource(name: StringName, newname: StringName)

