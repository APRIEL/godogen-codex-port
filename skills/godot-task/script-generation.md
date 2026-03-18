# Script Generation

Runtime scripts define movement, combat, AI, signals, UI logic, and game rules.

## Rules

- `extends` must match the attached node type
- use `@onready` for stable node references
- use only declared input actions
- connect signals in `_ready()`
- avoid `:=` with polymorphic helpers such as `clamp`, `min`, `max`, `lerp`, `move_toward`, and similar APIs
- prefer explicit types when a value may otherwise infer as `Variant`
