## RibbonTrailMesh <- PrimitiveMesh

RibbonTrailMesh represents a straight ribbon-shaped mesh with variable width. The ribbon is composed of a number of flat or cross-shaped sections, each with the same `section_length` and number of `section_segments`. A `curve` is sampled along the total length of the ribbon, meaning that the curve determines the size of the ribbon along its length. This primitive mesh is usually used for particle trails.

**Props:**
- curve: Curve
- section_length: float = 0.2
- section_segments: int = 3
- sections: int = 5
- shape: int (RibbonTrailMesh.Shape) = 1
- size: float = 1.0

**Enums:**
**Shape:** SHAPE_FLAT=0, SHAPE_CROSS=1

