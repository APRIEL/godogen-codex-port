## AspectRatioContainer <- Container

A container type that arranges its child controls in a way that preserves their proportions automatically when the container is resized. Useful when a container has a dynamic size and the child nodes must adjust their sizes accordingly without losing their aspect ratios.

**Props:**
- alignment_horizontal: int (AspectRatioContainer.AlignmentMode) = 1
- alignment_vertical: int (AspectRatioContainer.AlignmentMode) = 1
- ratio: float = 1.0
- stretch_mode: int (AspectRatioContainer.StretchMode) = 2

**Enums:**
**StretchMode:** STRETCH_WIDTH_CONTROLS_HEIGHT=0, STRETCH_HEIGHT_CONTROLS_WIDTH=1, STRETCH_FIT=2, STRETCH_COVER=3
**AlignmentMode:** ALIGNMENT_BEGIN=0, ALIGNMENT_CENTER=1, ALIGNMENT_END=2

