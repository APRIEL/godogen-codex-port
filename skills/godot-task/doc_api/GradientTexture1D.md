## GradientTexture1D <- Texture2D

A 1D texture that obtains colors from a Gradient to fill the texture data. The texture is filled by sampling the gradient for each pixel. Therefore, the texture does not necessarily represent an exact copy of the gradient, as it may miss some colors if there are not enough pixels. See also GradientTexture2D, CurveTexture and CurveXYZTexture.

**Props:**
- gradient: Gradient
- resource_local_to_scene: bool = false
- use_hdr: bool = false
- width: int = 256

