## CanvasGroup <- Node2D

Child CanvasItem nodes of a CanvasGroup are drawn as a single object. It allows to e.g. draw overlapping translucent 2D nodes without causing the overlapping sections to be more opaque than intended (set the `CanvasItem.self_modulate` property on the CanvasGroup to achieve this effect). **Note:** The CanvasGroup uses a custom shader to read from the backbuffer to draw its children. Assigning a Material to the CanvasGroup overrides the built-in shader. To duplicate the behavior of the built-in shader in a custom Shader, use the following: **Note:** Since CanvasGroup and `CanvasItem.clip_children` both utilize the backbuffer, children of a CanvasGroup who have their `CanvasItem.clip_children` set to anything other than `CanvasItem.CLIP_CHILDREN_DISABLED` will not function correctly.

**Props:**
- clear_margin: float = 10.0
- fit_margin: float = 10.0
- use_mipmaps: bool = false

