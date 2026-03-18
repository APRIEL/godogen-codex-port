## Path3D <- Node3D

Can have PathFollow3D child nodes moving along the Curve3D. See PathFollow3D for more information on the usage. Note that the path is considered as relative to the moved nodes (children of PathFollow3D). As such, the curve should usually start with a zero vector `(0, 0, 0)`.

**Props:**
- curve: Curve3D
- debug_custom_color: Color = Color(0, 0, 0, 1)

**Signals:**
- curve_changed
- debug_color_changed

