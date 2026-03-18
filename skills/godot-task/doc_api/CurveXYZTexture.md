## CurveXYZTexture <- Texture2D

A 1D texture where the red, green, and blue color channels correspond to points on 3 unit Curve resources. Compared to using separate CurveTextures, this further simplifies the task of saving curves as image files. If you only need to store one curve within a single texture, use CurveTexture instead. See also GradientTexture1D and GradientTexture2D.

**Props:**
- curve_x: Curve
- curve_y: Curve
- curve_z: Curve
- resource_local_to_scene: bool = false
- width: int = 256

