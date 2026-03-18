## FoldableContainer <- Container

A container that can be expanded/collapsed, with a title that can be filled with controls, such as buttons. This is also called an accordion. The title can be positioned at the top or bottom of the container. The container can be expanded or collapsed by clicking the title or by pressing `ui_accept` when focused. Child control nodes are hidden when the container is collapsed. Ignores non-control children. A FoldableContainer can be grouped with other FoldableContainers so that only one of them can be opened at a time; see `foldable_group` and FoldableGroup.

**Props:**
- focus_mode: int (Control.FocusMode) = 2
- foldable_group: FoldableGroup
- folded: bool = false
- language: String = ""
- mouse_filter: int (Control.MouseFilter) = 0
- title: String = ""
- title_alignment: int (HorizontalAlignment) = 0
- title_position: int (FoldableContainer.TitlePosition) = 0
- title_text_direction: int (Control.TextDirection) = 0
- title_text_overrun_behavior: int (TextServer.OverrunBehavior) = 0

**Methods:**
- add_title_bar_control(control: Control)
- expand()
- fold()
- remove_title_bar_control(control: Control)

**Signals:**
- folding_changed(is_folded: bool)

**Enums:**
**TitlePosition:** POSITION_TOP=0, POSITION_BOTTOM=1

