## NodePath

The NodePath built-in Variant type represents a path to a node or property in a hierarchy of nodes. It is designed to be efficiently passed into many built-in methods (such as `Node.get_node`, `Object.set_indexed`, `Tween.tween_property`, etc.) without a hard dependence on the node or property they point to. A node path is represented as a String composed of slash-separated (`/`) node names and colon-separated (`:`) property names (also called "subnames"). Similar to a filesystem path, `".."` and `"."` are special node names. They refer to the parent node and the current node, respectively. The following examples are paths relative to the current node: A leading slash means the path is absolute, and begins from the SceneTree: Despite their name, node paths may also point to a property: In some situations, it's possible to omit the leading `:` when pointing to an object's property. As an example, this is the case with `Object.set_indexed` and `Tween.tween_property`, as those methods call `NodePath.get_as_property_path` under the hood. However, it's generally recommended to keep the `:` prefix. Node paths cannot check whether they are valid and may point to nodes or properties that do not exist. Their meaning depends entirely on the context in which they're used. You usually do not have to worry about the NodePath type, as strings are automatically converted to the type when necessary. There are still times when defining node paths is useful. For example, exported NodePath properties allow you to easily select any node within the currently edited scene. They are also automatically updated when moving, renaming or deleting nodes in the scene tree editor. See also [annotation @GDScript.@export_node_path]. See also StringName, which is a similar type designed for optimized strings. **Note:** In a boolean context, a NodePath will evaluate to `false` if it is empty (`NodePath("")`). Otherwise, a NodePath will always evaluate to `true`.

**Methods:**
- get_as_property_path() -> NodePath
- get_concatenated_names() -> StringName
- get_concatenated_subnames() -> StringName
- get_name(idx: int) -> StringName
- get_name_count() -> int
- get_subname(idx: int) -> StringName
- get_subname_count() -> int
- hash() -> int
- is_absolute() -> bool
- is_empty() -> bool
- slice(begin: int, end: int = 2147483647) -> NodePath

