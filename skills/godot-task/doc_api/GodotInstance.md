## GodotInstance <- Object

GodotInstance represents a running Godot instance that is controlled from an outside codebase, without a perpetual main loop. It is created by the C API `libgodot_create_godot_instance`. Only one may be created per process.

**Methods:**
- focus_in()
- focus_out()
- is_started() -> bool
- iteration() -> bool
- pause()
- resume()
- start() -> bool

