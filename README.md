# godogen-codex-port

Codex-oriented port of the core `godogen` and `godot-task` skills from [`htdt/godogen`](https://github.com/htdt/godogen).

This port keeps the original Godot game-generation workflow, but rewrites the skill instructions for Codex and adds Windows/PowerShell-oriented execution guidance.

## What This Includes

- `skills/godogen`
  - orchestration skill for planning, scaffolding, asset coordination, and task sequencing
- `skills/godot-task`
  - task execution skill for scene/script generation, validation, capture, and visual verification
- bundled upstream assets needed for practical use
  - `tools/`
  - `scripts/`
  - `doc_api/`

## What Changed From Upstream

- removed Claude-specific `Skill(...)` invocation syntax
- removed `context: fork`
- removed `.claude/skills` and `CLAUDE.md` assumptions
- rewrote path guidance for Codex skill layout
- added Windows/PowerShell execution examples
- verified Godot capture and FFmpeg conversion on Windows

## Install

Copy the two skill folders into your Codex skills directory:

```text
$CODEX_HOME/skills/godogen
$CODEX_HOME/skills/godot-task
```

On this machine that path is typically:

```text
C:\Users\sho\.codex\skills\
```

## Suggested Runtime Requirements

- Godot 4.x console executable available on `PATH`, or use its absolute path
- Python 3 available as `py -3` on Windows
- `ffmpeg` available for AVI to MP4 conversion
- any API keys required by the bundled asset-generation or visual-QA scripts

## Repository Layout

```text
godogen-codex-port/
  README.md
  LICENSE
  NOTICE
  PORTING_NOTES.md
  skills/
    godogen/
    godot-task/
```

## Attribution

Original upstream project:

- `htdt/godogen`
- Copyright 2026 Alex Ermolov
- Licensed under MIT

This repository is a modified port, not the original project.

## License

This repository is distributed under the MIT License. See [LICENSE](/Users/sho/OneDrive/ドキュメント/godogen-codex-port/LICENSE).
