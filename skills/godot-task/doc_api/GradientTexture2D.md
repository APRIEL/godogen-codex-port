## GradientTexture2D <- Texture2D

A 2D texture that obtains colors from a Gradient to fill the texture data. This texture is able to transform a color transition into different patterns such as a linear or a radial gradient. The texture is filled by interpolating colors starting from `fill_from` to `fill_to` offsets by default, but the gradient fill can be repeated to cover the entire texture. The gradient is sampled individually for each pixel so it does not necessarily represent an exact copy of the gradient (see `width` and `height`). See also GradientTexture1D, CurveTexture and CurveXYZTexture.

**Props:**
- fill: int (GradientTexture2D.Fill) = 0
- fill_from: Vector2 = Vector2(0, 0)
- fill_to: Vector2 = Vector2(1, 0)
- gradient: Gradient
- height: int = 64
- repeat: int (GradientTexture2D.Repeat) = 0
- resource_local_to_scene: bool = false
- use_hdr: bool = false
- width: int = 64

**Enums:**
**Fill:** FILL_LINEAR=0, FILL_RADIAL=1, FILL_SQUARE=2, FILL_CONIC=3
**Repeat:** REPEAT_NONE=0, REPEAT=1, REPEAT_MIRROR=2

