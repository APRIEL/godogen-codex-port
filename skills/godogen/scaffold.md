# Godot Scaffold Generator

Design or update the Godot project architecture and produce a compilable skeleton.

Primary outputs:

- `project.godot`
- `STRUCTURE.md`
- `scripts/*.gd` stubs
- `scenes/build_*.gd`
- generated `.tscn` scene stubs

## Workflow

1. Read `reference.png` if present.
2. Read the game description or change request.
3. Inspect current project state.
4. Decide whether this is:
   - a fresh scaffold
   - a targeted architecture update
   - a partial reset of scenes/scripts
5. Write or update `project.godot`.
6. Write `STRUCTURE.md` as the full current architecture, not a diff.
7. Write stubs for scripts that must exist.
8. Import assets before scene generation.
9. Generate scene builders and run them in dependency order.
10. Run a global Godot parse check.
11. Commit only if the repo is initialized and the checkpoint is useful.

## Output Requirements

### `STRUCTURE.md`

Include:

- project name
- dimension: 2D or 3D
- input actions
- scenes
- scripts
- signal map
- asset hints

It should define what exists and how it connects, not gameplay behavior.

### Script stubs

Each script stub must:

- use the correct `extends`
- declare relevant signals
- define exported values only when clearly needed
- include empty lifecycle and handler methods where they are expected

### Scene builders

Scene builders are headless GDScript files that produce `.tscn` files programmatically.

Requirements:

- `extends SceneTree`
- `_initialize()` entrypoint
- create the full node hierarchy
- attach scripts with `set_script(load(...))`
- set owners for serialization
- save the packed scene
- call `quit()`

### Parse check

Run the equivalent of:

```bash
godot --headless --quit
```

Use a timeout wrapper appropriate for the platform.

## Asset Imports

After adding or changing textures, GLBs, or resources, re-import assets before scene builders reference them:

```bash
godot --headless --import
```

## `.gitignore`

Ensure generated capture and cache paths stay out of git:

```gitignore
assets
screenshots
.godot
*.import
```

If you keep skill files inside the project, also ignore local skill-install paths as needed.
