# Godogen Codex Port Notes

This directory contains a Codex-oriented rewrite of the core `godogen` and `godot-task` skills from `htdt/godogen`.

## What Was Changed

- removed Claude-specific `Skill(...)` invocation syntax
- removed `context: fork`
- removed `CLAUDE.md` and `.claude/skills` assumptions
- replaced `${CLAUDE_SKILL_DIR}` references with local skill-relative wording
- kept the original workflow split between orchestration and task execution
- trimmed several files to the parts most important for Codex execution

## Expected Install Layout

Install these as sibling skill folders:

- `godogen`
- `godot-task`

For example under `$CODEX_HOME/skills/`.

## What Was Intentionally Not Ported

- `publish.sh`
- `teleforge.md`
- Claude-specific bootstrapping and chat-bridge behavior

## Next Step

If you want a production-grade port, copy over the original Python tools and `doc_api/` directories into these skill folders, then tighten command examples for your local Godot and shell setup.

## Publication

This port can be published as long as the upstream MIT license notice is retained.

Recommended publication files:

- `LICENSE`
- `NOTICE`
- `README.md`
