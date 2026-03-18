## TubeTrailMesh <- PrimitiveMesh

TubeTrailMesh represents a straight tube-shaped mesh with variable width. The tube is composed of a number of cylindrical sections, each with the same `section_length` and number of `section_rings`. A `curve` is sampled along the total length of the tube, meaning that the curve determines the radius of the tube along its length. This primitive mesh is usually used for particle trails.

**Props:**
- cap_bottom: bool = true
- cap_top: bool = true
- curve: Curve
- radial_steps: int = 8
- radius: float = 0.5
- section_length: float = 0.2
- section_rings: int = 3
- sections: int = 5

