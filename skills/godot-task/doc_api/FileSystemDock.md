## FileSystemDock <- EditorDock

This class is available only in EditorPlugins and can't be instantiated. You can access it using `EditorInterface.get_file_system_dock`. While FileSystemDock doesn't expose any methods for file manipulation, it can listen for various file-related signals.

**Methods:**
- add_resource_tooltip_plugin(plugin: EditorResourceTooltipPlugin)
- navigate_to_path(path: String)
- remove_resource_tooltip_plugin(plugin: EditorResourceTooltipPlugin)

**Signals:**
- display_mode_changed
- file_removed(file: String)
- files_moved(old_file: String, new_file: String)
- folder_color_changed
- folder_moved(old_folder: String, new_folder: String)
- folder_removed(folder: String)
- inherit(file: String)
- instantiate(files: PackedStringArray)
- resource_removed(resource: Resource)
- selection_changed

