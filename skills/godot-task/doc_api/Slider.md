## Slider <- Range

Abstract base class for sliders, used to adjust a value by moving a grabber along a horizontal or vertical axis. Sliders are Range-based controls.

**Props:**
- editable: bool = true
- focus_mode: int (Control.FocusMode) = 2
- scrollable: bool = true
- step: float = 1.0
- tick_count: int = 0
- ticks_on_borders: bool = false
- ticks_position: int (Slider.TickPosition) = 0

**Signals:**
- drag_ended(value_changed: bool)
- drag_started

**Enums:**
**TickPosition:** TICK_POSITION_BOTTOM_RIGHT=0, TICK_POSITION_TOP_LEFT=1, TICK_POSITION_BOTH=2, TICK_POSITION_CENTER=3

