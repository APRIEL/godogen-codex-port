## WorldBoundaryShape2D <- Shape2D

A 2D world boundary shape, intended for use in physics. WorldBoundaryShape2D works like an infinite straight line that forces all physics bodies to stay above it. The line's normal determines which direction is considered as "above" and in the editor, the smaller line over it represents this direction. It can for example be used for endless flat floors.

**Props:**
- distance: float = 0.0
- normal: Vector2 = Vector2(0, -1)

