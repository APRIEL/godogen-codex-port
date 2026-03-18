## Range <- Control

Range is an abstract base class for controls that represent a number within a range, using a configured `step` and `page` size. See e.g. ScrollBar and Slider for examples of higher-level nodes using Range.

**Props:**
- allow_greater: bool = false
- allow_lesser: bool = false
- exp_edit: bool = false
- max_value: float = 100.0
- min_value: float = 0.0
- page: float = 0.0
- ratio: float
- rounded: bool = false
- size_flags_vertical: int (Control.SizeFlags) = 0
- step: float = 0.01
- value: float = 0.0

**Methods:**
- set_value_no_signal(value: float)
- share(with: Node)
- unshare()

**Signals:**
- changed
- value_changed(value: float)

