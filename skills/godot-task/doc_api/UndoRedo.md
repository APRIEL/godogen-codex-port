## UndoRedo <- Object

UndoRedo works by registering methods and property changes inside "actions". You can create an action, then provide ways to do and undo this action using function calls and property changes, then commit the action. When an action is committed, all of the `do_*` methods will run. If the `undo` method is used, the `undo_*` methods will run. If the `redo` method is used, once again, all of the `do_*` methods will run. Here's an example on how to add an action: Before calling any of the `add_(un)do_*` methods, you need to first call `create_action`. Afterwards you need to call `commit_action`. If you don't need to register a method, you can leave `add_do_method` and `add_undo_method` out; the same goes for properties. You can also register more than one method/property. If you are making an EditorPlugin and want to integrate into the editor's undo history, use EditorUndoRedoManager instead. If you are registering multiple properties/method which depend on one another, be aware that by default undo operation are called in the same order they have been added. Therefore instead of grouping do operation with their undo operations it is better to group do on one side and undo on the other as shown below.

**Props:**
- max_steps: int = 0

**Methods:**
- add_do_method(callable: Callable)
- add_do_property(object: Object, property: StringName, value: Variant)
- add_do_reference(object: Object)
- add_undo_method(callable: Callable)
- add_undo_property(object: Object, property: StringName, value: Variant)
- add_undo_reference(object: Object)
- clear_history(increase_version: bool = true)
- commit_action(execute: bool = true)
- create_action(name: String, merge_mode: int = 0, backward_undo_ops: bool = false)
- end_force_keep_in_merge_ends()
- get_action_name(id: int) -> String
- get_current_action() -> int
- get_current_action_name() -> String
- get_history_count() -> int
- get_version() -> int
- has_redo() -> bool
- has_undo() -> bool
- is_committing_action() -> bool
- redo() -> bool
- start_force_keep_in_merge_ends()
- undo() -> bool

**Signals:**
- version_changed

**Enums:**
**MergeMode:** MERGE_DISABLE=0, MERGE_ENDS=1, MERGE_ALL=2

