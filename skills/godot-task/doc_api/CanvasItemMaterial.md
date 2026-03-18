## CanvasItemMaterial <- Material

CanvasItemMaterials provide a means of modifying the textures associated with a CanvasItem. They specialize in describing blend and lighting behaviors for textures. Use a ShaderMaterial to more fully customize a material's interactions with a CanvasItem.

**Props:**
- blend_mode: int (CanvasItemMaterial.BlendMode) = 0
- light_mode: int (CanvasItemMaterial.LightMode) = 0
- particles_anim_h_frames: int
- particles_anim_loop: bool
- particles_anim_v_frames: int
- particles_animation: bool = false

**Enums:**
**BlendMode:** BLEND_MODE_MIX=0, BLEND_MODE_ADD=1, BLEND_MODE_SUB=2, BLEND_MODE_MUL=3, BLEND_MODE_PREMULT_ALPHA=4
**LightMode:** LIGHT_MODE_NORMAL=0, LIGHT_MODE_UNSHADED=1, LIGHT_MODE_LIGHT_ONLY=2

