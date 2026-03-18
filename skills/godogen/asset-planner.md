# Asset Planner

Analyze the game, decide which assets are worth generating, and update `ASSETS.md` plus `PLAN.md`.

## Inputs

- total or remaining budget in cents
- `reference.png`
- `STRUCTURE.md`
- `PLAN.md`

## Workflow

1. Read `reference.png` to understand composition, scale, and visual density.
2. Read `STRUCTURE.md` asset hints.
3. Read `PLAN.md` asset needs per task.
4. Reconcile these into one concrete asset list.
5. Prioritize by visual impact.
6. Reserve budget for retries.
7. Generate assets using `asset-gen.md`.
8. Write concrete asset tables into `ASSETS.md`.
9. Replace each task's vague asset need with concrete `**Assets:**` entries.

## Output Requirements

Every asset row must include intended in-game size so later coding work scales it correctly.

- 3D models: meters
- textures: tile size
- backgrounds: display dimensions
- sprites: per-frame display size

Example:

```markdown
## 3D Models

| Name | Description | Size | Image | GLB |
|------|-------------|------|-------|-----|
| car | compact retro car | 4m long | assets/img/car.png | assets/glb/car.glb |
```

## Budget Guidance

Cut low-impact assets first. Prefer generated imagery where handcrafted procedural art would look obviously worse.
