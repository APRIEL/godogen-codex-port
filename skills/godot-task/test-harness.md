# Test Harness

Write a verification script for each task, typically `test/test_{task_id}.gd`.

## Requirements

- `extends SceneTree`
- use `_initialize()` for setup
- keep capture running until the movie writer or quit-after count ends
- print `ASSERT PASS` or `ASSERT FAIL` lines for non-visual checks

Match the verification script to the task goal:

- static layout task: multiple useful camera angles
- movement task: follow the action over time
- UI task: fully visible interface states
