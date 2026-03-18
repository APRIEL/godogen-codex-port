## CurveTexture <- Texture2D

A 1D texture where pixel brightness corresponds to points on a unit Curve resource, either in grayscale or in red. This visual representation simplifies the task of saving curves as image files. If you need to store up to 3 curves within a single texture, use CurveXYZTexture instead. See also GradientTexture1D and GradientTexture2D.

**Props:**
- curve: Curve
- resource_local_to_scene: bool = false
- texture_mode: int (CurveTexture.TextureMode) = 0
- width: int = 256

**Enums:**
**TextureMode:** TEXTURE_MODE_RGB=0, TEXTURE_MODE_RED=1

