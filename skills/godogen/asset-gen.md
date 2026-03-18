# Asset Generator

Generate PNG images, sprite sheets, and GLB models from prompts using the bundled or equivalent local tools.

This file defines the workflow and prompt discipline, not a hard dependency on one shell or one agent product.

## Assumptions

- tool scripts are available locally
- required API keys are already exported in the environment
- commands may need minor shell-path adaptation on the current platform

## Typical Commands

```bash
python3 tools/asset_gen.py image --prompt "..." -o assets/img/example.png
python3 tools/asset_gen.py spritesheet --prompt "..." --bg "#4A6741" -o assets/img/raw.png
python3 tools/spritesheet_slice.py clean-bg assets/img/raw.png -o assets/img/sheet.png
python3 tools/asset_gen.py glb --image assets/img/car.png -o assets/glb/car.glb
```

## Prompt Rules

- use scenic prompts for backgrounds
- use clean material prompts for textures
- use solid-color backgrounds for removable-background sprites
- use neutral studio-style prompts for 3D model reference images

Never ask for a transparent background directly if the model expects a solid background for later matting.

## Review Before Conversion

Before spending more budget on GLB conversion, inspect generated PNGs and regenerate obviously bad images first.

## Budget

Only set or reset generation budget when the user explicitly gave one.
