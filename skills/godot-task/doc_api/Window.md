## Window <- Viewport

A node that creates a window. The window can either be a native system window or embedded inside another Window (see `Viewport.gui_embed_subwindows`). At runtime, Windows will not close automatically when requested. You need to handle it manually using the `close_requested` signal (this applies both to pressing the close button and clicking outside of a popup).

**Props:**
- accessibility_description: String = ""
- accessibility_name: String = ""
- always_on_top: bool = false
- auto_translate: bool
- borderless: bool = false
- content_scale_aspect: int (Window.ContentScaleAspect) = 0
- content_scale_factor: float = 1.0
- content_scale_mode: int (Window.ContentScaleMode) = 0
- content_scale_size: Vector2i = Vector2i(0, 0)
- content_scale_stretch: int (Window.ContentScaleStretch) = 0
- current_screen: int
- exclude_from_capture: bool = false
- exclusive: bool = false
- extend_to_title: bool = false
- force_native: bool = false
- hdr_output_requested: bool = false
- initial_position: int (Window.WindowInitialPosition) = 0
- keep_title_visible: bool = false
- max_size: Vector2i = Vector2i(0, 0)
- maximize_disabled: bool = false
- min_size: Vector2i = Vector2i(0, 0)
- minimize_disabled: bool = false
- mode: int (Window.Mode) = 0
- mouse_passthrough: bool = false
- mouse_passthrough_polygon: PackedVector2Array = PackedVector2Array()
- nonclient_area: Rect2i = Rect2i(0, 0, 0, 0)
- popup_window: bool = false
- popup_wm_hint: bool = false
- position: Vector2i = Vector2i(0, 0)
- sharp_corners: bool = false
- size: Vector2i = Vector2i(100, 100)
- theme: Theme
- theme_type_variation: StringName = &""
- title: String = ""
- transient: bool = false
- transient_to_focused: bool = false
- transparent: bool = false
- unfocusable: bool = false
- unresizable: bool = false
- visible: bool = true
- wrap_controls: bool = false

**Methods:**
- add_theme_color_override(name: StringName, color: Color)
- add_theme_constant_override(name: StringName, constant: int)
- add_theme_font_override(name: StringName, font: Font)
- add_theme_font_size_override(name: StringName, font_size: int)
- add_theme_icon_override(name: StringName, texture: Texture2D)
- add_theme_stylebox_override(name: StringName, stylebox: StyleBox)
- begin_bulk_theme_override()
- can_draw() -> bool
- child_controls_changed()
- end_bulk_theme_override()
- get_contents_minimum_size() -> Vector2
- get_flag(flag: int) -> bool
- get_focused_window() -> Window
- get_layout_direction() -> int
- get_output_max_linear_value() -> float
- get_position_with_decorations() -> Vector2i
- get_size_with_decorations() -> Vector2i
- get_theme_color(name: StringName, theme_type: StringName = &"") -> Color
- get_theme_constant(name: StringName, theme_type: StringName = &"") -> int
- get_theme_default_base_scale() -> float
- get_theme_default_font() -> Font
- get_theme_default_font_size() -> int
- get_theme_font(name: StringName, theme_type: StringName = &"") -> Font
- get_theme_font_size(name: StringName, theme_type: StringName = &"") -> int
- get_theme_icon(name: StringName, theme_type: StringName = &"") -> Texture2D
- get_theme_stylebox(name: StringName, theme_type: StringName = &"") -> StyleBox
- get_window_id() -> int
- grab_focus()
- has_focus() -> bool
- has_theme_color(name: StringName, theme_type: StringName = &"") -> bool
- has_theme_color_override(name: StringName) -> bool
- has_theme_constant(name: StringName, theme_type: StringName = &"") -> bool
- has_theme_constant_override(name: StringName) -> bool
- has_theme_font(name: StringName, theme_type: StringName = &"") -> bool
- has_theme_font_override(name: StringName) -> bool
- has_theme_font_size(name: StringName, theme_type: StringName = &"") -> bool
- has_theme_font_size_override(name: StringName) -> bool
- has_theme_icon(name: StringName, theme_type: StringName = &"") -> bool
- has_theme_icon_override(name: StringName) -> bool
- has_theme_stylebox(name: StringName, theme_type: StringName = &"") -> bool
- has_theme_stylebox_override(name: StringName) -> bool
- hide()
- is_embedded() -> bool
- is_layout_rtl() -> bool
- is_maximize_allowed() -> bool
- is_using_font_oversampling() -> bool
- move_to_center()
- move_to_foreground()
- popup(rect: Rect2i = Rect2i(0, 0, 0, 0))
- popup_centered(minsize: Vector2i = Vector2i(0, 0))
- popup_centered_clamped(minsize: Vector2i = Vector2i(0, 0), fallback_ratio: float = 0.75)
- popup_centered_ratio(ratio: float = 0.8)
- popup_exclusive(from_node: Node, rect: Rect2i = Rect2i(0, 0, 0, 0))
- popup_exclusive_centered(from_node: Node, minsize: Vector2i = Vector2i(0, 0))
- popup_exclusive_centered_clamped(from_node: Node, minsize: Vector2i = Vector2i(0, 0), fallback_ratio: float = 0.75)
- popup_exclusive_centered_ratio(from_node: Node, ratio: float = 0.8)
- popup_exclusive_on_parent(from_node: Node, parent_rect: Rect2i)
- popup_on_parent(parent_rect: Rect2i)
- remove_theme_color_override(name: StringName)
- remove_theme_constant_override(name: StringName)
- remove_theme_font_override(name: StringName)
- remove_theme_font_size_override(name: StringName)
- remove_theme_icon_override(name: StringName)
- remove_theme_stylebox_override(name: StringName)
- request_attention()
- reset_size()
- set_flag(flag: int, enabled: bool)
- set_ime_active(active: bool)
- set_ime_position(position: Vector2i)
- set_layout_direction(direction: int)
- set_unparent_when_invisible(unparent: bool)
- set_use_font_oversampling(enable: bool)
- show()
- start_drag()
- start_resize(edge: int)

**Signals:**
- about_to_popup
- close_requested
- dpi_changed
- files_dropped(files: PackedStringArray)
- focus_entered
- focus_exited
- go_back_requested
- mouse_entered
- mouse_exited
- nonclient_window_input(event: InputEvent)
- theme_changed
- title_changed
- titlebar_changed
- visibility_changed
- window_input(event: InputEvent)

**Enums:**
**Constants:** NOTIFICATION_VISIBILITY_CHANGED=30, NOTIFICATION_THEME_CHANGED=32
**Mode:** MODE_WINDOWED=0, MODE_MINIMIZED=1, MODE_MAXIMIZED=2, MODE_FULLSCREEN=3, MODE_EXCLUSIVE_FULLSCREEN=4
**Flags:** FLAG_RESIZE_DISABLED=0, FLAG_BORDERLESS=1, FLAG_ALWAYS_ON_TOP=2, FLAG_TRANSPARENT=3, FLAG_NO_FOCUS=4, FLAG_POPUP=5, FLAG_EXTEND_TO_TITLE=6, FLAG_MOUSE_PASSTHROUGH=7, FLAG_SHARP_CORNERS=8, FLAG_EXCLUDE_FROM_CAPTURE=9, ...
**ContentScaleMode:** CONTENT_SCALE_MODE_DISABLED=0, CONTENT_SCALE_MODE_CANVAS_ITEMS=1, CONTENT_SCALE_MODE_VIEWPORT=2
**ContentScaleAspect:** CONTENT_SCALE_ASPECT_IGNORE=0, CONTENT_SCALE_ASPECT_KEEP=1, CONTENT_SCALE_ASPECT_KEEP_WIDTH=2, CONTENT_SCALE_ASPECT_KEEP_HEIGHT=3, CONTENT_SCALE_ASPECT_EXPAND=4
**ContentScaleStretch:** CONTENT_SCALE_STRETCH_FRACTIONAL=0, CONTENT_SCALE_STRETCH_INTEGER=1
**LayoutDirection:** LAYOUT_DIRECTION_INHERITED=0, LAYOUT_DIRECTION_APPLICATION_LOCALE=1, LAYOUT_DIRECTION_LTR=2, LAYOUT_DIRECTION_RTL=3, LAYOUT_DIRECTION_SYSTEM_LOCALE=4, LAYOUT_DIRECTION_MAX=5, LAYOUT_DIRECTION_LOCALE=1
**WindowInitialPosition:** WINDOW_INITIAL_POSITION_ABSOLUTE=0, WINDOW_INITIAL_POSITION_CENTER_PRIMARY_SCREEN=1, WINDOW_INITIAL_POSITION_CENTER_MAIN_WINDOW_SCREEN=2, WINDOW_INITIAL_POSITION_CENTER_OTHER_SCREEN=3, WINDOW_INITIAL_POSITION_CENTER_SCREEN_WITH_MOUSE_FOCUS=4, WINDOW_INITIAL_POSITION_CENTER_SCREEN_WITH_KEYBOARD_FOCUS=5

