## Light2D <- Node2D

Casts light in a 2D environment. A light is defined as a color, an energy value, a mode (see constants), and various other parameters (range and shadows-related).

**Props:**
- blend_mode: int (Light2D.BlendMode) = 0
- color: Color = Color(1, 1, 1, 1)
- editor_only: bool = false
- enabled: bool = true
- energy: float = 1.0
- range_item_cull_mask: int = 1
- range_layer_max: int = 0
- range_layer_min: int = 0
- range_z_max: int = 1024
- range_z_min: int = -1024
- shadow_color: Color = Color(0, 0, 0, 0)
- shadow_enabled: bool = false
- shadow_filter: int (Light2D.ShadowFilter) = 0
- shadow_filter_smooth: float = 0.0
- shadow_item_cull_mask: int = 1

**Methods:**
- get_height() -> float
- set_height(height: float)

**Enums:**
**ShadowFilter:** SHADOW_FILTER_NONE=0, SHADOW_FILTER_PCF5=1, SHADOW_FILTER_PCF13=2
**BlendMode:** BLEND_MODE_ADD=0, BLEND_MODE_SUB=1, BLEND_MODE_MIX=2

