## ThemeDB <- Object

This singleton provides access to static information about Theme resources used by the engine and by your projects. You can fetch the default engine theme, as well as your project configured theme. ThemeDB also contains fallback values for theme properties.

**Props:**
- fallback_base_scale: float = 1.0
- fallback_font: Font
- fallback_font_size: int = 16
- fallback_icon: Texture2D
- fallback_stylebox: StyleBox

**Methods:**
- get_default_theme() -> Theme
- get_project_theme() -> Theme

**Signals:**
- fallback_changed

