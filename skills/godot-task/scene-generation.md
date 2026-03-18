# Scene Generation

Scene builders are headless GDScript files that create `.tscn` scenes programmatically.

## Requirements

- `extends SceneTree`
- implement `_initialize()`
- create the full node hierarchy
- attach scripts with `set_script(load(...))`
- set owners for serialization
- save using `PackedScene`
- call `quit()`

## Rules

- use only 2D nodes in a 2D scene and only 3D nodes in a 3D scene
- do not connect runtime signals in the builder
- set `.name` on every created node
- load assets at runtime-safe paths
- save to the exact requested output path

## Validation

After generating scenes, run the builder scripts and then a full parse check.
