# Capture

Capture screenshots or video from a running Godot project for evidence and QA.

Use platform-appropriate equivalents for timeout wrappers, display selection, and GPU detection.

## Workflow

1. Create a task-specific folder under `screenshots/`.
2. Run the test harness with `--write-movie`.
3. For screenshot capture, use a frame count and frame rate appropriate to the scene.
4. For presentation video, prefer GPU-backed rendering when available.
5. Keep `screenshots/` out of Godot import paths where possible.

Representative outputs:

- `screenshots/task_01/frame0003.png`
- `screenshots/presentation/gameplay.mp4`
