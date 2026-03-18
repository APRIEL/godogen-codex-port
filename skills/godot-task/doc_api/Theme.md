## Theme <- Resource

A resource used for styling/skinning Control and Window nodes. While individual controls can be styled using their local theme overrides (see `Control.add_theme_color_override`), theme resources allow you to store and apply the same settings across all controls sharing the same type (e.g. style all Buttons the same). One theme resource can be used for the entire project, but you can also set a separate theme resource to a branch of control nodes. A theme resource assigned to a control applies to the control itself, as well as all of its direct and indirect children (as long as a chain of controls is uninterrupted). Use `ProjectSettings.gui/theme/custom` to set up a project-scope theme that will be available to every control in your project. Use `Control.theme` of any control node to set up a theme that will be available to that control and all of its direct and indirect children.

**Props:**
- default_base_scale: float = 0.0
- default_font: Font
- default_font_size: int = -1

**Methods:**
- add_type(theme_type: StringName)
- clear()
- clear_color(name: StringName, theme_type: StringName)
- clear_constant(name: StringName, theme_type: StringName)
- clear_font(name: StringName, theme_type: StringName)
- clear_font_size(name: StringName, theme_type: StringName)
- clear_icon(name: StringName, theme_type: StringName)
- clear_stylebox(name: StringName, theme_type: StringName)
- clear_theme_item(data_type: int, name: StringName, theme_type: StringName)
- clear_type_variation(theme_type: StringName)
- get_color(name: StringName, theme_type: StringName) -> Color
- get_color_list(theme_type: String) -> PackedStringArray
- get_color_type_list() -> PackedStringArray
- get_constant(name: StringName, theme_type: StringName) -> int
- get_constant_list(theme_type: String) -> PackedStringArray
- get_constant_type_list() -> PackedStringArray
- get_font(name: StringName, theme_type: StringName) -> Font
- get_font_list(theme_type: String) -> PackedStringArray
- get_font_size(name: StringName, theme_type: StringName) -> int
- get_font_size_list(theme_type: String) -> PackedStringArray
- get_font_size_type_list() -> PackedStringArray
- get_font_type_list() -> PackedStringArray
- get_icon(name: StringName, theme_type: StringName) -> Texture2D
- get_icon_list(theme_type: String) -> PackedStringArray
- get_icon_type_list() -> PackedStringArray
- get_stylebox(name: StringName, theme_type: StringName) -> StyleBox
- get_stylebox_list(theme_type: String) -> PackedStringArray
- get_stylebox_type_list() -> PackedStringArray
- get_theme_item(data_type: int, name: StringName, theme_type: StringName) -> Variant
- get_theme_item_list(data_type: int, theme_type: String) -> PackedStringArray
- get_theme_item_type_list(data_type: int) -> PackedStringArray
- get_type_list() -> PackedStringArray
- get_type_variation_base(theme_type: StringName) -> StringName
- get_type_variation_list(base_type: StringName) -> PackedStringArray
- has_color(name: StringName, theme_type: StringName) -> bool
- has_constant(name: StringName, theme_type: StringName) -> bool
- has_default_base_scale() -> bool
- has_default_font() -> bool
- has_default_font_size() -> bool
- has_font(name: StringName, theme_type: StringName) -> bool
- has_font_size(name: StringName, theme_type: StringName) -> bool
- has_icon(name: StringName, theme_type: StringName) -> bool
- has_stylebox(name: StringName, theme_type: StringName) -> bool
- has_theme_item(data_type: int, name: StringName, theme_type: StringName) -> bool
- is_type_variation(theme_type: StringName, base_type: StringName) -> bool
- merge_with(other: Theme)
- remove_type(theme_type: StringName)
- rename_color(old_name: StringName, name: StringName, theme_type: StringName)
- rename_constant(old_name: StringName, name: StringName, theme_type: StringName)
- rename_font(old_name: StringName, name: StringName, theme_type: StringName)
- rename_font_size(old_name: StringName, name: StringName, theme_type: StringName)
- rename_icon(old_name: StringName, name: StringName, theme_type: StringName)
- rename_stylebox(old_name: StringName, name: StringName, theme_type: StringName)
- rename_theme_item(data_type: int, old_name: StringName, name: StringName, theme_type: StringName)
- rename_type(old_theme_type: StringName, theme_type: StringName)
- set_color(name: StringName, theme_type: StringName, color: Color)
- set_constant(name: StringName, theme_type: StringName, constant: int)
- set_font(name: StringName, theme_type: StringName, font: Font)
- set_font_size(name: StringName, theme_type: StringName, font_size: int)
- set_icon(name: StringName, theme_type: StringName, texture: Texture2D)
- set_stylebox(name: StringName, theme_type: StringName, texture: StyleBox)
- set_theme_item(data_type: int, name: StringName, theme_type: StringName, value: Variant)
- set_type_variation(theme_type: StringName, base_type: StringName)

**Enums:**
**DataType:** DATA_TYPE_COLOR=0, DATA_TYPE_CONSTANT=1, DATA_TYPE_FONT=2, DATA_TYPE_FONT_SIZE=3, DATA_TYPE_ICON=4, DATA_TYPE_STYLEBOX=5, DATA_TYPE_MAX=6

