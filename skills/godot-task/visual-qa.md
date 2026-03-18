# Visual QA

Compare captured output against `reference.png` and the task's own `Goal`, `Requirements`, and `Verify` fields.

## Modes

- static mode: reference plus one representative screenshot
- dynamic mode: reference plus a cadence-sampled set of frames

## What To Check

- task goal satisfaction
- art-direction consistency with `reference.png`
- visual bugs such as clipping, wrong scale, wrong materials, UI overlap, or obvious logic errors

## Failure Policy

If QA fails and the issue is fixable within the task, fix it and re-run capture.

If the issue is upstream, stop and report the likely upstream cause instead of looping indefinitely.
