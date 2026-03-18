---
name: godogen
description: |
  Use this skill when the user asks to make, build, generate, or significantly update a complete Godot game from a natural-language description. This skill plans the project, scaffolds the architecture, coordinates assets, and drives task-by-task execution.
---

# Godogen Orchestrator For Codex

Generate and update Godot games from natural language in Codex.

This skill is the orchestration layer. It plans the game, creates or updates the project skeleton, coordinates asset generation, and executes the implementation task by task.

Paths in this skill are relative to this skill directory unless noted otherwise.

## Read Progressively

Read only the files needed for the current stage:

| File | Purpose |
|------|---------|
| `visual-target.md` | Create `reference.png` and seed art direction in `ASSETS.md` |
| `decomposer.md` | Produce `PLAN.md` from the game request |
| `scaffold.md` | Produce `STRUCTURE.md`, `project.godot`, scene builders, and stubs |
| `asset-planner.md` | Decide which assets to generate within budget |
| `asset-gen.md` | Generate and process PNG/GLB assets |

Sibling skill:

| File | Purpose |
|------|---------|
| `../godot-task/SKILL.md` | Execute one task from `PLAN.md` end to end |

If `../godot-task/SKILL.md` is not available, execute the task using the same workflow directly and note that the sibling skill was missing.

## Working Files

Maintain these project files:

- `PLAN.md`: task graph, per-task status, targets, and verification criteria
- `STRUCTURE.md`: architecture reference for scenes, scripts, signals, and asset hints
- `ASSETS.md`: art direction and generated asset tables
- `MEMORY.md`: discoveries, workarounds, and task-to-task continuity
- `reference.png`: visual anchor for asset generation and visual QA

Task `**Status:**` values: `pending`, `in_progress`, `done`, `done (partial)`, `skipped`.

## Pipeline

1. Check whether `PLAN.md` already exists.
2. If resuming, read `PLAN.md`, `STRUCTURE.md`, `ASSETS.md` if present, and `MEMORY.md` if present.
3. If starting fresh:
   - Read `visual-target.md` and generate `reference.png` plus the initial `ASSETS.md`
   - Read `decomposer.md` and write `PLAN.md`
   - Read `scaffold.md` and write the Godot project skeleton
4. If the user provided an asset budget and `ASSETS.md` does not yet contain concrete asset tables:
   - Read `asset-planner.md`
   - Read `asset-gen.md` as needed
   - Generate assets and update `ASSETS.md`
   - Replace or augment each task's `**Assets needed:**` with concrete `**Assets:**`
5. For every task in `PLAN.md`:
   - Add `**Status:** pending` if missing
   - Add `**Targets:**` with concrete project-relative files expected to change
6. Show the user a concise numbered summary of the plan before starting implementation.
7. Find the next ready task: `pending` and all dependencies are `done` or `done (partial)` if acceptable for downstream work.
8. For each ready task:
   - Mark it `in_progress`
   - Execute it using `../godot-task/SKILL.md`
   - Update `PLAN.md` based on the result
   - Commit if the repository is initialized and the working tree is in a sane state
9. Continue until no ready tasks remain.
10. Summarize the completed game, remaining gaps, and evidence paths.

## Running A Task In Codex

Claude-specific `Skill(skill="godot-task")` and forked context are not available here.

In Codex, run a task like this:

1. Read the full task block from `PLAN.md`.
2. Read `../godot-task/SKILL.md`.
3. Follow that workflow directly in the current workspace.
4. Return to this orchestration flow and update `PLAN.md`, `MEMORY.md`, and the user-facing summary.

Pass the full task block conceptually, not via a tool-specific skill call:

```markdown
## N. {Task Name}
- **Status:** in_progress
- **Targets:** scenes/main.tscn, scripts/player_controller.gd
- **Goal:** ...
- **Requirements:** ...
- **Assets:** ...
- **Verify:** ...
```

## Task Hygiene

Before executing a task, ensure `**Targets:**` is concrete. Infer likely files from:

- task text in `PLAN.md`
- scene and script mappings in `STRUCTURE.md`
- generated asset paths in `ASSETS.md`

Examples:

- `scenes/main.tscn`
- `scenes/player.tscn`
- `scripts/player_controller.gd`
- `scripts/enemy_ai.gd`
- `test/test_T2.gd`

## Recovery

If a task reveals that the current plan or architecture is wrong, do not keep iterating blindly.

Allowed recovery actions:

- rewrite `PLAN.md`
- regenerate parts of the scaffold
- regenerate or add assets
- split a task if a genuine algorithmic risk was underestimated
- merge later tasks if the original split is causing unnecessary friction

Record the reason in `MEMORY.md`.

## Visual QA Policy

Visual QA happens during task execution. Never ignore a failed visual QA verdict.

- `pass` or `warning`: continue unless the warning blocks the task goal
- `fail`: inspect the report and either fix the task, regenerate upstream assets, or replan

If the failure is upstream, stop task-level iteration and escalate to orchestration.

## Git

Commit only when it helps preserve a stable checkpoint and the repository is already initialized.

Do not reset or discard unrelated user changes. If the worktree contains unrelated dirty files, work around them and commit only the files relevant to the completed task when practical.

Suggested commit messages:

- `scaffold: project skeleton`
- `task 1: movement and core scene`
- `task 2: combat loop`

## Debugging

When integration problems appear:

- read `MEMORY.md`
- inspect `screenshots/{task_folder}/`
- inspect `visual-qa/*.md`
- run a project-wide Godot parse check
- confirm imported assets exist and were re-imported after changes

## Codex-Specific Porting Notes

This is a port of a Claude Code skill. The original assumptions that do not apply here are:

- no `CLAUDE.md`
- no `.claude/skills`
- no `Skill(...)` invocation syntax
- no `context: fork`

Preserve the workflow, not the original control syntax.
