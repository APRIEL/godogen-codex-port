# Known Godot Quirks

- Headless scene builders may emit harmless RID cleanup warnings on exit.
- Scene-builder scripts must call `quit()` or the process hangs.
- Connect signals in runtime scripts, not at build time.
- `@onready` values are not safe before the node enters the tree.
- Re-import assets after changing textures, GLBs, or other imported resources.
- Imported GLB internals should not be recursively re-owned during scene packing.
- For imported 3D models, simple primitive collision is safer than mesh-derived collision.
