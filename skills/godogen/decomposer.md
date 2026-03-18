# Game Decomposer

Decompose a Godot game request into a small number of large, independently verifiable tasks.

Write `PLAN.md`.

## Workflow

1. Read `reference.png` if it exists.
2. Read the user's game description.
3. Identify true algorithmic or engine-risk features.
4. Isolate only those risky features into dedicated early tasks.
5. Bundle routine game work into as few large tasks as practical.
6. Always include a final presentation-video task.

The implementation agent is strong. Too many small tasks create merge friction, context loss, and repeated integration failures. A normal arcade, puzzle, or action prototype should often fit in 2 to 4 tasks before the final presentation task.

## Isolate Only Real Risk

Good isolation candidates:

- procedural generation
- custom shaders
- runtime geometry
- brittle vehicle physics
- dynamic pathfinding with live obstacle changes
- unusual camera systems

Do not isolate standard work like movement, collisions, UI, spawning, score, pause, or ordinary enemy AI.

## Output Format

````markdown
# Game Plan: {Game Name}

## Game Description

{Original user description}

## 1. {Task Name}
- **Depends on:** (none)
- **Status:** pending
- **Goal:** ...
- **Requirements:**
  - ...
  - ...
- **Assets needed:** ...
- **Verify:** ...

## 2. {Task Name}
- **Depends on:** 1
- **Status:** pending
- **Goal:** ...
- **Requirements:**
  - ...
- **Verify:** ...
````

After writing the task list, add `**Targets:**` later during orchestration when `STRUCTURE.md` exists and file mappings are concrete.

## Verification

Every task must be visually verifiable. The `**Verify:**` field should describe what a screenshot or captured sequence must show to prove the task works.

## Mandatory Final Task

The last task is always a presentation-video task producing a short gameplay video.
