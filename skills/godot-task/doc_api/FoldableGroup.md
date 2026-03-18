## FoldableGroup <- Resource

A group of FoldableContainer-derived nodes. Only one container can be expanded at a time.

**Props:**
- allow_folding_all: bool = false
- resource_local_to_scene: bool = true

**Methods:**
- get_containers() -> FoldableContainer[]
- get_expanded_container() -> FoldableContainer

**Signals:**
- expanded(container: FoldableContainer)

