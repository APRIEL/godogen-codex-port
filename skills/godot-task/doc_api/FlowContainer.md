## FlowContainer <- Container

A container that arranges its child controls horizontally or vertically and wraps them around at the borders. This is similar to how text in a book wraps around when no more words can fit on a line.

**Props:**
- alignment: int (FlowContainer.AlignmentMode) = 0
- last_wrap_alignment: int (FlowContainer.LastWrapAlignmentMode) = 0
- reverse_fill: bool = false
- vertical: bool = false

**Methods:**
- get_line_count() -> int

**Enums:**
**AlignmentMode:** ALIGNMENT_BEGIN=0, ALIGNMENT_CENTER=1, ALIGNMENT_END=2
**LastWrapAlignmentMode:** LAST_WRAP_ALIGNMENT_INHERIT=0, LAST_WRAP_ALIGNMENT_BEGIN=1, LAST_WRAP_ALIGNMENT_CENTER=2, LAST_WRAP_ALIGNMENT_END=3

