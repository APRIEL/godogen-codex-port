# Visual Target

Generate a reference image of the finished game's visual direction. This anchors scaffold decisions, asset generation, and visual QA.

Tool scripts are expected to live in a sibling `tools/` directory inside this skill folder if you install the original utilities. If they are elsewhere, adjust commands to the actual path.

## Command Shape

```bash
python3 tools/asset_gen.py image \
  --prompt "{prompt}" \
  --size 1K --aspect-ratio 16:9 -o reference.png
```

## Prompt

Make it look like an in-game screenshot, not concept art:

```text
Screenshot of a {genre} {2D/3D} video game. {Key gameplay moment}. {Environment details}. {Specific visual style}. In-game camera perspective, HUD visible. Clean digital rendering, game engine output.
```

The image should reflect the intended gameplay camera and scene density. Do not add complexity the user did not ask for.

## Output

- `reference.png`
- `ASSETS.md` initialized as:

```markdown
# Assets

**Art direction:** <art style description>
```
