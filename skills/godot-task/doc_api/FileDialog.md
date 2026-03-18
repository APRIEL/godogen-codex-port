## FileDialog <- ConfirmationDialog

FileDialog is a preset dialog used to choose files and directories in the filesystem. It supports filter masks. FileDialog automatically sets its window title according to the `file_mode`. If you want to use a custom title, disable this by setting `mode_overrides_title` to `false`. **Note:** FileDialog is invisible by default. To make it visible, call one of the `popup_*` methods from Window on the node, such as `Window.popup_centered_clamped`.

**Props:**
- access: int (FileDialog.Access) = 0
- current_dir: String
- current_file: String
- current_path: String
- deleting_enabled: bool = true
- dialog_hide_on_ok: bool = false
- display_mode: int (FileDialog.DisplayMode) = 0
- favorites_enabled: bool = true
- file_filter_toggle_enabled: bool = true
- file_mode: int (FileDialog.FileMode) = 4
- file_sort_options_enabled: bool = true
- filename_filter: String = ""
- filters: PackedStringArray = PackedStringArray()
- folder_creation_enabled: bool = true
- hidden_files_toggle_enabled: bool = true
- layout_toggle_enabled: bool = true
- mode_overrides_title: bool = true
- option_count: int = 0
- overwrite_warning_enabled: bool = true
- recent_list_enabled: bool = true
- root_subfolder: String = ""
- show_hidden_files: bool = false
- size: Vector2i = Vector2i(640, 360)
- title: String = "Save a File"
- use_native_dialog: bool = false

**Methods:**
- add_filter(filter: String, description: String = "", mime_type: String = "")
- add_option(name: String, values: PackedStringArray, default_value_index: int)
- clear_filename_filter()
- clear_filters()
- deselect_all()
- get_favorite_list() -> PackedStringArray
- get_line_edit() -> LineEdit
- get_option_default(option: int) -> int
- get_option_name(option: int) -> String
- get_option_values(option: int) -> PackedStringArray
- get_recent_list() -> PackedStringArray
- get_selected_options() -> Dictionary
- get_vbox() -> VBoxContainer
- invalidate()
- is_customization_flag_enabled(flag: int) -> bool
- popup_file_dialog()
- set_customization_flag_enabled(flag: int, enabled: bool)
- set_favorite_list(favorites: PackedStringArray)
- set_get_icon_callback(callback: Callable)
- set_get_thumbnail_callback(callback: Callable)
- set_option_default(option: int, default_value_index: int)
- set_option_name(option: int, name: String)
- set_option_values(option: int, values: PackedStringArray)
- set_recent_list(recents: PackedStringArray)

**Signals:**
- dir_selected(dir: String)
- file_selected(path: String)
- filename_filter_changed(filter: String)
- files_selected(paths: PackedStringArray)

**Enums:**
**FileMode:** FILE_MODE_OPEN_FILE=0, FILE_MODE_OPEN_FILES=1, FILE_MODE_OPEN_DIR=2, FILE_MODE_OPEN_ANY=3, FILE_MODE_SAVE_FILE=4
**Access:** ACCESS_RESOURCES=0, ACCESS_USERDATA=1, ACCESS_FILESYSTEM=2
**DisplayMode:** DISPLAY_THUMBNAILS=0, DISPLAY_LIST=1
**Customization:** CUSTOMIZATION_HIDDEN_FILES=0, CUSTOMIZATION_CREATE_FOLDER=1, CUSTOMIZATION_FILE_FILTER=2, CUSTOMIZATION_FILE_SORT=3, CUSTOMIZATION_FAVORITES=4, CUSTOMIZATION_RECENT=5, CUSTOMIZATION_LAYOUT=6, CUSTOMIZATION_OVERWRITE_WARNING=7, CUSTOMIZATION_DELETE=8

