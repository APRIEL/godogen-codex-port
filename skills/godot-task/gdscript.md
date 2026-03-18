# GDScript Rules

Use standard Godot 4 GDScript.

## High-Value Reminders

- GDScript is not Python.
- Prefer explicit typing when inference is ambiguous.
- Do not use `:=` with APIs that return `Variant` or polymorphic math helpers.
- Use `load()` rather than `preload()` in headless generation scripts.
- Match `extends` exactly to the node type the script attaches to.

## Common Inference Trap

```gdscript
var scene: PackedScene = load("res://scenes/player.tscn")
var instance = scene.instantiate()
```

Prefer `=` over `:=` when the right-hand side may confuse inference.
