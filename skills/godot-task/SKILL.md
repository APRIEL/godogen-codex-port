---
name: godot-task
description: |
  Use this skill when implementing one concrete Godot task that produces or updates scenes, scripts, tests, screenshots, and visual verification evidence from a task block in PLAN.md.
---

# Godot Task Executor For Codex

Execute one task from `PLAN.md` end to end.

Read files progressively. Do not load all references up front.

## Read Progressively

| File | Purpose | When to read |
|------|---------|--------------|
| `quirks.md` | Godot pitfalls and workarounds | Before writing code |
| `gdscript.md` | GDScript syntax and typing rules | Before writing code |
| `scene-generation.md` | Headless scene-builder patterns | Targets include `.tscn` |
| `script-generation.md` | Runtime script guidance | Targets include `.gd` |
| `coordination.md` | Ordering when scenes and scripts both change | Targets include both |
| `test-harness.md` | Verification script patterns | Before writing test harness |
| `capture.md` | Screenshot and video capture workflow | Before capturing |
| `visual-qa.md` | Automated screenshot QA | Visual output exists |
| `doc_api/_common.md` | Common class index | Need Godot API lookup |
| `doc_api/_other.md` | Long-tail class index | Class not found in common index |
| `doc_api/{ClassName}.md` | Full class reference | Need exact API behavior |

If `doc_api` is missing, continue with official Godot docs or local engine knowledge and note the gap.

## Input

Use a single task block from `PLAN.md`, for example:

```markdown
## 2. Combat Loop
- **Status:** in_progress
- **Targets:** scenes/main.tscn, scripts/player.gd, scripts/enemy.gd, test/test_T2.gd
- **Goal:** ...
- **Requirements:** ...
- **Assets:** ...
- **Verify:** ...
```

## Workflow

1. Read `MEMORY.md` if it exists.
2. Inspect `**Targets:**` to determine whether the task changes scenes, scripts, or both.
3. Read `quirks.md` and `gdscript.md`.
4. Import assets before any scene builder references them.
5. If `.tscn` targets exist:
   - read `scene-generation.md`
   - generate or update scene builders
   - run them to produce `.tscn`
6. If `.gd` targets exist:
   - read `script-generation.md`
   - write or update runtime scripts
7. If both `.tscn` and `.gd` targets exist:
   - read `coordination.md`
   - generate scenes first, then scripts
8. Run a project-wide Godot parse check.
9. Fix errors until clean or until you hit an upstream architectural blocker.
10. Read `test-harness.md` and write `test/test_{task_id}.gd`.
11. Capture screenshots or video evidence.
12. Read `visual-qa.md` and run automated QA when applicable.
   - On Windows, prefer `scripts/run_visual_qa.ps1` rather than manually composing a long Python command.
   - If `PLAN.md` exists, prefer `scripts/run_task_visual_qa.ps1` so the task context is derived automatically.
13. If verification fails, iterate.
14. Save evidence paths and write useful discoveries to `MEMORY.md`.

## Iteration Rule

Continue iterating while fixes are converging.

Stop early if:

- the architecture is wrong
- the assets are wrong
- the verify target is impossible under the current plan
- you are repeating the same class of fix without progress

In that case, report the likely root cause clearly for the orchestrator.

## Required End State

End with:

- clean or well-understood Godot validation status
- test harness written
- screenshots or video saved
- VQA report path or an explicit reason it was skipped
- `MEMORY.md` updated with durable findings

## Reporting Format

Conclude task execution with:

- `Screenshot path:` `screenshots/{task_folder}/`
- best representative frame names
- one line per representative frame describing what it shows
- `VQA report:` `visual-qa/{N}.md` or `skipped`

On failure also include:

- what is still wrong
- what was tried
- best current root-cause hypothesis

## Porting Notes

This is the Codex version of a Claude Code task skill.

Do not rely on:

- forked skill context
- special skill-call syntax
- Claude-specific environment variables

Use the same implementation loop directly in the current Codex workspace.
