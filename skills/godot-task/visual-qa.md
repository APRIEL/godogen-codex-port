# Visual QA

Compare captured output against `reference.png` and the task's own `Goal`, `Requirements`, and `Verify` fields.

## Modes

- static mode: reference plus one representative screenshot
- dynamic mode: reference plus a cadence-sampled set of frames

## Windows Helper

For Codex on Windows, prefer the bundled PowerShell wrapper:

```powershell
powershell -ExecutionPolicy Bypass -File `
  C:\path\to\skills\godot-task\scripts\run_visual_qa.ps1 `
  -TaskFolder screenshots\task_01 `
  -Mode dynamic `
  -ReferencePath reference.png `
  -ContextFile .\qa-context.txt
```

Behavior:

- creates `visual-qa/` if missing
- auto-selects all PNG frames for dynamic mode
- uses the latest PNG for static mode
- writes the next sequential `visual-qa/{N}.md` by default
- forces UTF-8-safe execution for Python on Windows

If you have a `PLAN.md`, use `scripts/run_task_visual_qa.ps1` to derive the task context automatically:

```powershell
powershell -ExecutionPolicy Bypass -File `
  C:\path\to\skills\godot-task\scripts\run_task_visual_qa.ps1 `
  -PlanPath PLAN.md `
  -TaskNumber 1 `
  -TaskFolder screenshots\task_01 `
  -Mode dynamic `
  -ReferencePath reference.png
```

## What To Check

- task goal satisfaction
- art-direction consistency with `reference.png`
- visual bugs such as clipping, wrong scale, wrong materials, UI overlap, or obvious logic errors

## Failure Policy

If QA fails and the issue is fixable within the task, fix it and re-run capture.

If the issue is upstream, stop and report the likely upstream cause instead of looping indefinitely.
